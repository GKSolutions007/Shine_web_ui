function PaginatedAutocompleteMultiCol(options) {

    var inputId = options.inputId;
    var fullData = options.data || [];
    var pageSize = 20; // options.pageSize || 50;
    var onSelect = options.onSelect || function () { };

    // ── Multi-column config ──────────────────────────────────────────────
    // columns: [{ key:'code', label:'Code', width:'18%' }, ...]
    var columns = options.columns || [
        { key: 'code', label: 'Code', width: '20%' },
        { key: 'name', label: 'Name', width: '40%' },
        { key: 'hsn', label: 'HSN', width: '20%' },
        { key: 'mrp', label: 'MRP', width: '20%' }
    ];

    // Which field(s) to search against. Defaults to all column keys.
    var searchFields = options.searchFields || columns.map(function (c) { return c.key; });

    // Which field's value gets written into the input on selection.
    // Configurable — pass options.selectField = 'name' etc.
    var selectField = options.selectField || columns[0].key;

    // Optional fixed pixel width for the whole dropdown. If not given,
    // it's derived from the columns (each px/% width, or a default share).
    var dropdownWidth = options.dropdownWidth || null;

    var dropId = "pac_drop_" + inputId;
    var listId = "pac_list_" + inputId;
    var headId = "pac_head_" + inputId;
    var statId = "pac_stat_" + inputId;
    var spinId = "pac_spin_" + inputId;

    var $input = $("#" + inputId);
    $("#" + dropId).remove();

    // ── Build header cell HTML (labels, fixed, does not scroll) ─────────────
    function colStyle(col) {
        var w = col.width;
        var flex;
        if (w && /%$/.test(w)) flex = "0 0 " + w;
        else if (w && /px$/.test(w)) flex = "0 0 " + w;
        else flex = "1 1 0";
        return 'flex:' + flex + ';min-width:0;padding:0 6px;overflow:hidden;' +
            'text-overflow:ellipsis;white-space:nowrap;box-sizing:border-box;';
    }

    var headerCellsHtml = columns.map(function (col) {
        return '<div style="' + colStyle(col) + 'font-weight:600;font-size:11px;color:#555;">' +
            col.label + '</div>';
    }).join('');

    var $GKBSdropdown = $([
        '<div class="gkbsautocomplete" id="' + dropId + '" style="',
        'display:none;position:fixed;z-index:99999;',
        'background-color:var(--dynamic-bg);border:1px solid #ccc;',
        'border-radius:6px;box-shadow:0 4px 12px rgba(0,0,0,.2);',
        'min-width:300px;max-height:380px;overflow:hidden;">',

        // header row — sits outside the scrollable <ul>, so it stays put
        '<div id="' + headId + '" style="',
        'display:flex;align-items:center;padding:6px 6px;',
        'background:#f3f3f3;border-bottom:1px solid #ddd;">',
        headerCellsHtml,
        '</div>',

        '<ul id="' + listId + '" style="',
        'list-style:none;margin:0;padding:0;',
        'max-height:250px;overflow-y:auto;color:var(--acitemname)"></ul>',

        '<div style="',
        'padding:6px 12px;font-size:12px;color:#888;',
        'border-top:1px solid #eee;background:#fafafa;',
        'display:flex;justify-content:space-between;">',
        '<span id="' + statId + '">Showing 0 items</span>',
        '<span id="' + spinId + '" style="display:none;color:#378ADD;">Loading…</span>',
        '</div>',
        '</div>'
    ].join(''));

    // ── Append to BODY, not after input ────────────────────────────────────
    $("body").append($GKBSdropdown);

    // ── Compute the dropdown's target width ──────────────────────────────
    function computeWidth(inputWidth) {
        if (dropdownWidth) return dropdownWidth;

        // Sum any px widths given; treat % / flex columns as ~120px each
        var sum = 0;
        columns.forEach(function (col) {
            if (col.width && /px$/.test(col.width)) {
                sum += parseFloat(col.width);
            } else {
                sum += 120;
            }
        });
        // Never shrink below the input's own width
        return Math.max(sum, inputWidth);
    }

    // ── Position dropdown using getBoundingClientRect (works inside tables) ─
    function positionDropdown() {
        var rect = $input[0].getBoundingClientRect();
        var gap = 4;
        var targetWidth = computeWidth(rect.width);

        var wasHidden = $GKBSdropdown.css("display") === "none";
        if (wasHidden) {
            $GKBSdropdown.css({ visibility: "hidden", display: "block" });
        }
        // Set width before measuring height, since column wrapping affects it
        $GKBSdropdown.css("width", targetWidth + "px");
        var dropHeight = $GKBSdropdown.outerHeight() || 300;
        if (wasHidden) {
            $GKBSdropdown.css({ visibility: "", display: "none" });
        }

        var spaceBelow = window.innerHeight - rect.bottom;
        var showAbove = spaceBelow < dropHeight && rect.top > dropHeight;

        // Keep the wider dropdown from overflowing the right edge of the
        // viewport; clamp it back to the left instead of running off-screen.
        var left = rect.left;
        var maxLeft = window.innerWidth - targetWidth - 8;
        if (left > maxLeft) left = Math.max(8, maxLeft);

        $GKBSdropdown.css({
            position: "fixed",
            top: showAbove
                ? (rect.top - dropHeight - gap) + "px"
                : (rect.bottom + gap) + "px",
            left: left + "px",
            width: targetWidth + "px",
            zIndex: 99999
        });
    }

    // ── Reposition on ANY scroll or resize ─────────────────────────────────
    function bindRepositionEvents() {
        var ns = ".pac_" + inputId;

        $(window).off("scroll" + ns + " resize" + ns);
        $(document).off("scroll" + ns);

        $(window).on("scroll" + ns + " resize" + ns, function () {
            if ($GKBSdropdown.is(":visible")) positionDropdown();
            else closeDropdown();
        });

        $input.parents().each(function () {
            var el = this;
            var overflow = $(el).css("overflow") + $(el).css("overflow-y");
            if (/auto|scroll|hidden/.test(overflow)) {
                $(el).off("scroll" + ns).on("scroll" + ns, function () {
                    if ($GKBSdropdown.is(":visible")) positionDropdown();
                });
            }
        });
    }

    var state = {
        page: 0,
        query: '',
        filtered: [],
        loaded: 0,
        loading: false,
        hasMore: true,
        activeIdx: -1,
        mouseBlock: false
    };

    function $list() { return $("#" + listId); }
    function $items() { return $("#" + listId).find("li"); }

    function highlight(text, q) {
        text = (text === undefined || text === null) ? '' : String(text);
        if (!q) return text;
        var esc = q.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
        return text.replace(new RegExp('(' + esc + ')', 'gi'),
            '<mark style="background:#ddeeff;color:#185FA5;padding:0 2px;border-radius:2px;font-weight:normal;">$1</mark>');
    }

    function scrollIntoView(el) {
        if (!el) return;
        var listDom = document.getElementById(listId);
        var listRect = listDom.getBoundingClientRect();
        var elRect = el.getBoundingClientRect();
        if (elRect.bottom > listRect.bottom) {
            listDom.scrollTop += elRect.bottom - listRect.bottom;
        } else if (elRect.top < listRect.top) {
            listDom.scrollTop -= listRect.top - elRect.top;
        }
    }

    function setActive(idx) {
        var $els = $items();
        if (!$els.length) return;
        idx = Math.max(-1, Math.min(idx, $els.length - 1));
        $els.each(function (i) {
            $(this).css("background", i === idx ? "#E6F1FB" : "");
        });
        state.activeIdx = idx;
        if (idx >= 0) {
            scrollIntoView($els.get(idx));
        }
    }

    function updateStatus() {
        $("#" + statId).text(
            state.hasMore
                ? "Showing " + state.loaded + " of " + state.filtered.length
                : "All " + state.filtered.length + " results shown"
        );
    }

    // ── Build one row's inner HTML from the column config ───────────────────
    function buildRowHtml(item) {
        return columns.map(function (col) {
            return '<div style="' + colStyle(col) + 'font-size:11px;">' +
                highlight(item[col.key], state.query) +
                '</div>';
        }).join('');
    }

    function loadNext(afterLoad) {
        if (state.loading || !state.hasMore) {
            if (typeof afterLoad === "function" && !state.hasMore) afterLoad();
            return;
        }
        state.loading = true;
        $("#" + spinId).show();

        setTimeout(function () {
            var slice = state.filtered.slice(
                state.page * pageSize,
                (state.page + 1) * pageSize
            );

            slice.forEach(function (item) {
                var $li = $("<li>").css({
                    display: "flex",
                    alignItems: "center",
                    padding: "4px 6px",
                    cursor: "pointer",
                    borderBottom: "1px solid #ececec"
                }).html(buildRowHtml(item));

                $li.on("mousemove", function () {
                    if (state.mouseBlock) return;
                    var pos = $items().index(this);
                    $items().css("background", "");
                    $(this).css("background", "#E6F1FB");
                    state.activeIdx = pos;
                });

                $li.on("mousedown", function (e) {
                    e.preventDefault();
                    selectItem(item);
                });

                $list().append($li);
            });

            state.page++;
            state.loaded += slice.length;
            state.hasMore = (state.page * pageSize) < state.filtered.length;
            state.loading = false;
            $("#" + spinId).hide();
            updateStatus();

            if (typeof afterLoad === "function") afterLoad();
        }, 0);
    }

    function reset(query) {
        state.query = query;
        state.page = 0;
        state.loaded = 0;
        state.activeIdx = -1;
        state.hasMore = true;
        state.loading = false;

        state.filtered = query
            ? fullData.filter(function (d) {
                var q = query.toLowerCase();
                return searchFields.some(function (key) {
                    var val = d[key];
                    return val !== undefined && val !== null &&
                        String(val).toLowerCase().indexOf(q) > -1;
                });
            })
            : fullData.slice();

        state.hasMore = state.filtered.length > 0;
        $list().empty();

        if (!state.filtered.length) {
            var $li = $("<li>").css({
                padding: "10px 12px",
                color: "#aaa",
                display: "block"
            }).text("No results found");
            $list().append($li);
            $("#" + statId).text("0 results");
            return;
        }
        loadNext(function () {
            setActive(0);
        });
    }

    function selectItem(item) {
        $input.val(item[selectField] !== undefined && item[selectField] !== null ? item[selectField] : '');
        $GKBSdropdown.hide();
        state.activeIdx = -1;
        onSelect(item);
    }

    function openDropdown() {
        positionDropdown();
        $GKBSdropdown.show();
    }

    function closeDropdown() {
        $GKBSdropdown.hide();
        state.activeIdx = -1;
    }

    bindRepositionEvents();

    // ── Scroll list → load more ─────────────────────────────────────────────
    $("#" + listId).on("scroll", function () {
        if (this.scrollTop + this.clientHeight >= this.scrollHeight - 40) {
            loadNext();
        }
    });

    // ── Keyboard ────────────────────────────────────────────────────────────
    $input.off("keydown.pac").on("keydown.pac", function (e) {
        var isOpen = $GKBSdropdown.is(":visible");

        if (!e.ctrlKey && e.key === "ArrowDown") {
            e.preventDefault();
            state.mouseBlock = true;
            if (!isOpen) { reset(""); openDropdown(); return; }
            var total = $items().length;
            var next = state.activeIdx + 1;
            if (next < total) {
                setActive(next);
            } else if (state.hasMore && !state.loading) {
                loadNext(function () { setActive(next); });
            }
            return;
        }

        if (e.key === "ArrowUp") {
            e.preventDefault();
            state.mouseBlock = true;
            if (!isOpen) return;
            if (state.activeIdx <= 0) {
                $items().css("background", "");
                state.activeIdx = -1;
            } else {
                setActive(state.activeIdx - 1);
            }
            return;
        }

        if (e.key === "Enter") {
            e.preventDefault();
            if (isOpen && state.activeIdx >= 0) {
                var el = $items().get(state.activeIdx);
                if (el) $(el).trigger("mousedown");
            }
            return;
        }

        if (e.key === "Escape") {
            closeDropdown();
        }
    });

    $(document).off("mousemove.pac_" + inputId)
        .on("mousemove.pac_" + inputId, function () {
            state.mouseBlock = false;
        });

    var debounce;
    $input.off("input.pac focus.pac blur.pac");

    $input.on("input.pac", function () {
        clearTimeout(debounce);
        debounce = setTimeout(function () {
            reset($input.val().trim());
            openDropdown();
        }, 200);
    });

    $input.on("focus.pac", function () {
        if (!$input.val()) reset("");
    });

    $input.on("blur.pac", function () {
        setTimeout(function () { closeDropdown(); }, 180);
    });

    $(document).off("click.pac_" + inputId)
        .on("click.pac_" + inputId, function (e) {
            if (!$(e.target).closest("#" + dropId + ", #" + inputId).length) {
                closeDropdown();
            }
        });

    return {
        updateData: function (newData) {
            fullData = newData;
            reset($input.val().trim());
        },
        setSelectField: function (key) {
            selectField = key;
        },
        destroy: function () {
            var ns = ".pac_" + inputId;
            $input.off(".pac");
            $GKBSdropdown.remove();
            $(document).off("click" + ns);
            $(document).off("mousemove" + ns);
            $(window).off("scroll" + ns);
            $(window).off("resize" + ns);
            $input.parents().each(function () {
                $(this).off("scroll" + ns);
            });
        }
    };
}
