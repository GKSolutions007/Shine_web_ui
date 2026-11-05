/*
 * sm-daterange.js
 * Converts the legacy list filter bar
 *     [Period ▼] [From 📅] [To 📅] [☐ All Status] [Filter]
 * into the redesigned one
 *     [📅 Date Range: dd-mm-yyyy → dd-mm-yyyy] [⏻ All Status] [Filter]
 *
 * The ORIGINAL elements (#cmbFilterDatetype, #dtpFFrom, #dtpFTo, #chkShowAll, error divs) are
 * MOVED, never recreated, so their ids, inline handlers and jQuery bindings keep working and
 * page code such as SetFilterDate(), setDate() and the filter validation needs no change.
 *
 * Runs only on pages that have #dtpFFrom, #dtpFTo and #btnFilter and are not already converted
 * (#txtDateRangeDisplay present). Opt out by adding data-sm-daterange="off" to #dtpFFrom or
 * any of its ancestors.
 */
(function ($) {
    'use strict';
    if (!$) return;

    var CONTROLS = 'input,select,button,textarea';

    function pad(n) { return (n < 10 ? '0' : '') + n; }
    // Local-time yyyy-mm-dd (toISOString() is UTC and gives the previous day in IST before 05:30).
    function toIso(d) { return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()); }
    function toDmy(v) {
        if (!v) return '';
        var p = String(v).split('-');
        return p.length === 3 ? (p[2] + '-' + p[1] + '-' + p[0]) : v;
    }

    /** Child of `root` that contains `el` (or null). */
    function cellOf(el, root) {
        var n = el;
        while (n && n.parentNode !== root) n = n.parentNode;
        return n;
    }

    /**
     * What to move for a field: the whole cell when the field is its only control, otherwise the
     * largest wrapper (e.g. <span class="form-label">) around the field holding no other control.
     */
    function fieldUnit(el, cell) {
        if (cell.querySelectorAll(CONTROLS).length === 1) return cell;
        var n = el;
        while (n.parentNode !== cell && n.parentNode.querySelectorAll(CONTROLS).length === 1) n = n.parentNode;
        return n;
    }

    /**
     * Moves a field into `target`. When it was the cell's only control the cell's children
     * (label, error div) move too and the empty cell is hidden; the cell itself stays in the
     * DOM so table rows / grid rows keep their structure.
     */
    function moveField(el, cell, target) {
        var unit = fieldUnit(el, cell);
        if (unit === cell) {
            $(target).append($(cell).contents());
            $(cell).addClass('sm-dr-hidden-cell');
        } else {
            $(target).append(unit);
        }
    }

    /** Re-sync the pill whenever the date value changes, including programmatic .val(). */
    function watchValue(input, onChange) {
        var proto = Object.getOwnPropertyDescriptor(HTMLInputElement.prototype, 'value');
        if (proto && proto.get && proto.set) {
            try {
                Object.defineProperty(input, 'value', {
                    configurable: true,
                    get: function () { return proto.get.call(this); },
                    set: function (v) { proto.set.call(this, v); onChange(); }
                });
            } catch (e) { /* fall back to events only */ }
        }
        $(input).on('input change', onChange);
    }

    function buildDateRange() {
        var from = document.getElementById('dtpFFrom');
        var to = document.getElementById('dtpFTo');
        var filterbtn = !document.getElementById('btnFilter') || !document.getElementById('btnOverlayGenerate');
        if (!from || !to || !filterbtn) return;
        if (document.getElementById('txtDateRangeDisplay')) return;          // already redesigned
        if ($(from).closest('[data-sm-daterange="off"]').length) return;      // opted out

        var root = $(from).parents().has(to).first()[0];
        if (!root || root === document.body) return;

        var fromCell = cellOf(from, root), toCell = cellOf(to, root);
        var period = document.getElementById('cmbFilterDatetype');
        var periodCell = (period && root.contains(period)) ? cellOf(period, root) : null;
        var lbldaterangetext = "Date Range";
       
        // ---- Build the pill + popover ----
        var uid = 'dvDateRangePop';
        var $wrap = $('<div class="sm-daterange"></div>');
        var $pill = $(
            '<span class="form-label sm-pill">' +
            '  <i class="fas fa-calendar-days sm-pill-ico" aria-hidden="true"></i>' +
            '  <input type="text" readonly class="form-control" id="txtDateRangeDisplay" ' +
            '         placeholder="Select date range" aria-haspopup="dialog" aria-expanded="false" ' +
            '         aria-controls="' + uid + '" />' +
            '  <label class="labelup" for="txtDateRangeDisplay">' + lbldaterangetext +'</label>' +
            '</span>');
        var $pop = $('<div class="sm-daterange-pop" id="' + uid + '" role="dialog" aria-label="Select date range"></div>');
        var $presets = $(
            '<div class="sm-dr-presets">' +
            '  <button type="button" class="sm-dr-chip" data-range="today">Today</button>' +
            '  <button type="button" class="sm-dr-chip" data-range="month">This Month</button>' +
            '  <button type="button" class="sm-dr-chip" data-range="previousmounth">Previous Month</button>' +
            
            '</div>');
        var $period = $('<div class="sm-dr-period"></div>');
        var $fields = $('<div class="sm-dr-fields"></div>');
        var $fFrom = $('<div class="sm-dr-field"></div>');
        var $fTo = $('<div class="sm-dr-field"></div>');
        var $actions = $('<div class="sm-dr-actions"><button type="button" class="btn btn-sm btn-filter-style sm-dr-done">Done</button></div>');

        $pop.append($presets);
        if (period) $pop.append($period);
        $fields.append($fFrom, $fTo);
        $pop.append($fields, $actions);
        $wrap.append($pill, $pop);

        // Period first (it may share a cell with From/To on some pages).
        if (period) {
            if (periodCell && periodCell !== fromCell && periodCell !== toCell) {
                moveField(period, periodCell, $period[0]);
            } else {
                $period.append(period);
            }
            $(period).addClass('w-100');
        }

        // The From field's cell hosts the pill (keeps <td>/<div class="col-*"> structure valid).
        var fromUnit = fieldUnit(from, fromCell);
        if (fromUnit === fromCell) {
            $fFrom.append($(fromCell).contents());
            $(fromCell).append($wrap);
        } else {
            $wrap.insertBefore(fromUnit);
            $fFrom.append(fromUnit);
        }
        moveField(to, toCell, $fTo[0]);

        // The host cell needs room for "dd-mm-yyyy → dd-mm-yyyy".
        $(fromCell).addClass('sm-dr-host');
        $(root).addClass('sm-dr-bar');

        // ---- Behaviour ----
        var $display = $pill.find('input');

        function sync() {
            var f = from.value, t = to.value;
            $display.val((f || t) ? (toDmy(f) + '  \u2192  ' + toDmy(t)) : '');
        }
        function open() { $pop.addClass('open'); $display.attr('aria-expanded', 'true'); }
        function close(focusBack) {
            if (!$pop.hasClass('open')) return;
            $pop.removeClass('open');
            $display.attr('aria-expanded', 'false');
            if (focusBack) $display.trigger('focus');
        }
        function toggle() { $pop.hasClass('open') ? close(false) : open(); }

        window.SyncDateRangeDisplay = sync;   // same global the redesigned pages expose
        watchValue(from, sync);
        watchValue(to, sync);
        if (period) $(period).on('change', function () { setTimeout(sync, 0); });

        $display.on('click', function (e) { e.stopPropagation(); toggle(); });
        $display.on('keydown', function (e) {
            if (e.key === 'Enter' || e.key === ' ' || e.key === 'ArrowDown') { e.preventDefault(); open(); $pop.find(CONTROLS).first().trigger('focus'); }
            else if (e.key === 'Escape') { close(false); }
        });
        $pop.on('click', function (e) { e.stopPropagation(); });
        $pop.on('keydown', function (e) { if (e.key === 'Escape') { e.preventDefault(); close(true); } });
        $(document).on('click', function () { close(false); });
        $actions.find('.sm-dr-done').on('click', function () { close(true); });

        $presets.on('click', '.sm-dr-chip', function () {
            var now = new Date(), r = $(this).data('range');
            if (r === 'today') {
                from.value = toIso(now); to.value = toIso(now);
            } else if (r === 'month') {
                from.value = toIso(new Date(now.getFullYear(), now.getMonth(), 1));
                to.value = toIso(new Date(now.getFullYear(), now.getMonth() + 1, 0));
            }
            else if (r === 'previousmounth') {
                from.value = toIso(new Date(now.getFullYear(), now.getMonth() - 1, 1));
                to.value = toIso(new Date(now.getFullYear(), now.getMonth(), 0));
            }
            // Respect any max date the page set on the inputs.
            if (from.max && from.value > from.max) from.value = from.max;
            if (to.max && to.value > to.max) to.value = to.max;
            sync();
        });

        // Validation messages live inside the popover now: open it when one appears.
        if (window.MutationObserver) {
            new MutationObserver(function () {
                var hasError = $pop.find('.text-danger, [id^="divErr"]').filter(function () {
                    return $.trim($(this).text()) !== '';
                }).length > 0;
                if (hasError) open();
            }).observe($pop[0], { childList: true, characterData: true, subtree: true });
        }

        sync();
    }

    function buildToggle() {
        var chk = document.getElementById('chkShowAll');
        if (!chk)
            chk = document.getElementById('chkShowBlank');
        if (!chk)
            chk = document.getElementById('chkOverlayInclusive');
        if (!chk || chk.type !== 'checkbox') return;
        if ($(chk).closest('.sm-toggle').length) return;                       // already a toggle
        if ($(chk).closest('[data-sm-daterange="off"]').length) return;

        var $lbl = $('label[for="chkShowAll"]').first();
        if ($lbl.length == 0)
            $lbl = $('label[for="chkShowBlank"]').first();
        if ($lbl.length == 0)
            $lbl = $('label[for="chkOverlayInclusive"]').first();
        var text = $.trim($lbl.text()) || 'All Status';

        var $toggle = $('<label class="sm-toggle"><span class="sm-switch" aria-hidden="true"></span><span class="sm-toggle-label"></span></label>');
        $toggle.find('.sm-toggle-label').text(text);
        $toggle.insertBefore(chk);
        $toggle.prepend(chk);
        $(chk).removeClass('form-check-input').removeAttr('style');
        $lbl.remove();

        // Bootstrap .form-check reserves left padding for its own checkbox.
        var $fc = $toggle.parent('.form-check');
        if ($fc.length) $fc.addClass('ps-0');
    }

    // Search-select pills (<input class="sm-searchselect"> bound with PaginatedAutocomplete):
    // a click opens the list like a dropdown. Delegated, so it works for any page.
    $(document).on('click', 'input.sm-searchselect', function () {
        if ($('#pac_drop_' + this.id).is(':visible')) return;      // already open (double-click)
        if (document.activeElement !== this) this.focus();          // the click usually focused it already
        $(this).trigger($.Event('keydown', { key: 'ArrowDown' }));   // ArrowDown opens the autolist
    });

    $(function () {
        try { buildDateRange(); } catch (e) { if (window.console) console.error('sm-daterange:', e); }
        try { if (document.getElementById('btnFilter') || document.getElementById('btnOverlayGenerate')) buildToggle(); } catch (e) { if (window.console) console.error('sm-daterange toggle:', e); }
    });
})(window.jQuery);
