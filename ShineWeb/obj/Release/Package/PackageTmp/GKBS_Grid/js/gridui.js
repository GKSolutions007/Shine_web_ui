class DynamicGrid {
    constructor(selector, columns, data, options = {}) {
        this.container = document.querySelector(selector);
        this.columns = columns; // Stores config including current width
        this.originalData = data;
        
        // Options with defaults
        this.options = Object.assign({
           enablePagination: false,
            pageSize: 10,
            enableSearch: true,
            stickyToWindow: true, // NEW: If true, sticks to top of browser
            height: '200px'        // NEW: specific height for internal scroll
        }, options);

        // State
        this.state = {
            currentPage: 1,
            searchTerm: '',
            filters: {}, // { field: 'value' }
            colFilters: {},
            sortConfig: null, // { field: '', direction: 'asc' }
            currentSort: { field: null, direction: 'asc' },
            processedData: [], // Data after search/filter/sort
            selectedRows: new Set(), // NEW: Stores unique identifiers of selected rows
            activeAutocompletePopup: null, // NEW: Track the currently open autocomplete popup
            filterOrder: [],
            textFilters: {},
        };
// Ensure every row has a unique ID for tracking
    this.originalData = data.map((row, index) => ({ 
        ...row, 
        _gridId: row._gridId || Symbol(index) 
    }));
    // Update the global click handler to manage ALL popups
        document.addEventListener('click', (e) => {
            if (e.target.closest('.dg-filter-popup')) {
        return; // DO NOTHING if the click originated inside the popup.
    }
            // Closes column filters if click is outside the header
            if (!e.target.closest('.dg-header-cell')) {
                this.closeAllPopups();
            }
            // Closes autocomplete if click is outside the input or the list
            if (!e.target.closest('.dg-input') && !e.target.closest('.dg-autocomplete-list')) {
                this.closeAllPopups(); // Will handle both, see utility update below
            }
        });
        this.init();
    }
    // Helper function to update the filter order array
updateFilterOrder(field, isActive) {
    const index = this.state.filterOrder.indexOf(field);
    
    if (isActive && index === -1) {
        // Filter applied, add it to the end
        this.state.filterOrder.push(field);
    } else if (!isActive && index !== -1) {
        // Filter cleared, remove it
        this.state.filterOrder.splice(index, 1);
    }
}
// --- NEW: Row Double Click Handler ---
    handleRowDoubleClick(rowData) {
        // This is the function that runs when a row is double-clicked.
        console.log("--- Row Double-Clicked ---");
        console.log(rowData);
        
        // Example action: Display the record data in a readable format
        const recordDetails = JSON.stringify(rowData, null, 2);
        
        // Use an alert for a quick demo, but in a real application, you would launch a modal or routing event.
        alert(`Record Retrieved:\n\n${recordDetails}`);
    }
    init() {
        this.container.classList.add('dg-container');
        // Initial processing
        this.processData();
        this.render();
    }

    // --- 1. The Data Pipeline ---
    processData_old() {
        let result = [...this.originalData];
// 2. 💡 APPLY COLUMN FILTERS
    Object.keys(this.state.colFilters).forEach(field => {
        const filters = this.state.colFilters[field];
        const { operator, value } = filters;
        // Only apply filter if the array is defined and NOT empty
        if (filters && filters.length > 0) {
             result = result.filter(item => {
                 // Ensure the item's value is converted to a string for strict comparison
                 const itemValue = String(item[field]);
                 
                 // Return TRUE if the item's value is IN the list of selected filters
                 return filters.includes(itemValue);
             });
        }        
         // If filters is an empty array (meaning the user deselected everything), 
         // the filter should result in an empty dataset.
         else if (filters && filters.length === 0) {
             result = [];
         }
    });
        // A. Global Search
        if (this.state.searchTerm) {
            const term = this.state.searchTerm.toLowerCase();
            result = result.filter(row => {
                return Object.values(row).some(val => 
                    String(val).toLowerCase().includes(term)
                );
            });
        }

        // B. Column Sorting
        if (this.state.currentSort) {
            const { field, direction } = this.state.currentSort;
            result.sort((a, b) => {
                if (a[field] < b[field]) return direction === 'asc' ? -1 : 1;
                if (a[field] > b[field]) return direction === 'asc' ? 1 : -1;
                return 0;
            });
        }

        this.state.processedData = result;
        
        // Reset page if data changes significantly reduces count
        const maxPage = Math.ceil(this.state.processedData.length / this.options.pageSize) || 1;
        if (this.state.currentPage > maxPage) this.state.currentPage = 1;
    }
processData() {
    let result = [...this.originalData]; // Start with the original data

    // --- A. Apply Global Search (Should be first) ---
    if (this.state.searchTerm) {
        const term = this.state.searchTerm.toLowerCase();
        result = result.filter(row => {
            return Object.values(row).some(val => 
                String(val).toLowerCase().includes(term)
            );
        });
    }

    // --- B. Apply Checkbox Column Filters (Using this.state.colFilters) ---
    Object.keys(this.state.colFilters).forEach(field => {
        const filters = this.state.colFilters[field]; // This is an array of selected values
        
        // 1. Apply filter if a subset is selected
        if (filters && filters.length > 0) {
            result = result.filter(item => {
                const itemValue = String(item[field]);
                return filters.includes(itemValue);
            });
        } 
        // 2. If the user deselected everything (filters is defined but empty)
        else if (filters && filters.length === 0) {
            result = [];
        }
    });

    // --- C. 💡 APPLY TEXT/OPERATOR FILTERS (Using this.state.textFilters) ---
    // THIS IS WHERE YOU SHOULD ADD THE TEXT FILTER LOGIC
    Object.keys(this.state.textFilters).forEach(field => {
        const filter = this.state.textFilters[field]; // This is the object { operator, value }
        const { operator, value } = filter;
        console.log("operator",operator," value ",value);
        if (value) {
            result = result.filter(item => {
                const itemValue = String(item[field]).toLowerCase().trim();
                console.log("itemValue ",itemValue);
                switch (operator) {
                    case 'equal':
                        return itemValue === value;
                    case 'not_equal':
                        return itemValue !== value;
                    case 'starts_with':
                        return itemValue.startsWith(value);
                    case 'ends_with':
                        return itemValue.endsWith(value);
                    case 'not_contains':
                        return !itemValue.includes(value);
                    case 'contains':
                    default:
                        return itemValue.includes(value);
                }
            });
        }
    });

    // --- D. Apply Column Sorting (Should be last) ---
    if (this.state.currentSort && this.state.currentSort.field) {
        const { field, direction } = this.state.currentSort;
        result.sort((a, b) => {
            // ... (Your existing robust sorting logic here) ...
            if (a[field] < b[field]) return direction === 'asc' ? -1 : 1;
            if (a[field] > b[field]) return direction === 'asc' ? 1 : -1;
            return 0;
        });
    }

    // --- E. Final Update ---
    this.state.processedData = result;
    
    // Reset page logic
    const maxPage = Math.ceil(this.state.processedData.length / this.options.pageSize) || 1;
    if (this.state.currentPage > maxPage) this.state.currentPage = 1;
}
    getPaginatedData() {
        if (!this.options.enablePagination) return this.state.processedData;

        const start = (this.state.currentPage - 1) * this.options.pageSize;
        const end = start + this.options.pageSize;
        return this.state.processedData.slice(start, end);
    }
// Inside DynamicGrid class, add this new method:

setOption(key, value) {
    if (this.options.hasOwnProperty(key)) {
        this.options[key] = value;
        
        // Options that affect data (like pageSize or search) need full processing
        if (key === 'pageSize' || key === 'enableSearch') {
            this.processData();
        }
        
        // Re-render the grid to update the UI (Toolbar, Footer, Body)
        this.render();
    } else {
        console.warn(`Option "${key}" is not a recognized configuration property.`);
    }
}
    // --- 2. Render Orchestrator ---
    render() {
        this.container.innerHTML = '';        
        this.renderToolbar();
        this.renderHeader();
        this.renderBody();
        this.renderStatusBar(); // <--- NEW: Add this call
        this.renderFooter();
    }
// --- NEW: Status Bar Logic ---
    renderStatusBar() {
        // If no data, don't show stats (or show empty)
        const dataToCalculate = this.state.processedData;
        
        const statusBar = document.createElement('div');
        statusBar.className = 'dg-status-bar';

        this.columns.forEach(col => {
            const cell = document.createElement('div');
            cell.className = 'dg-status-cell';
            cell.style.flex = `0 0 ${col.width || 150}px`; // Match column width exactly

            // Only calculate for 'number' types
            if (col.type === 'number' || col.total === true) {
                const values = dataToCalculate
                    .map(row => parseFloat(row[col.field]))
                    .filter(val => !isNaN(val)); // Filter out bad data

                if (values.length > 0) {
                    // 1. Calculate Sum
                    const sum = values.reduce((a, b) => a + b, 0);
                    // 2. Calculate Average
                    const avg = sum / values.length;

                    // Format numbers (e.g., 12,300.50)
                    const fmt = (n) => n.toLocaleString(undefined, { minimumFractionDigits: 0, maximumFractionDigits: 2 });

                    cell.innerHTML = `
                        <div><span class="dg-stat-label">Sum:</span>${fmt(sum)}</div>
                        <div><span class="dg-stat-label">Avg:</span>${fmt(avg)}</div>
                    `;
                }
            } else {
                // Optional: Show Count for text columns
                // cell.innerHTML = `<div><span class="dg-stat-label">Cnt:</span>${dataToCalculate.length}</div>`;
            }

            statusBar.appendChild(cell);
        });

        // Add spacer if not sticky to window (to align with scrollbar)
        if (!this.options.stickyToWindow) {
            const spacer = document.createElement('div');
            spacer.style.width = this.getScrollbarWidth() + 'px';
            spacer.style.flexShrink = 0;
            spacer.style.background = '#f1f3f5';
            statusBar.appendChild(spacer);
        }

        this.container.appendChild(statusBar);
    }
    // Inside DynamicGrid class:

updateStatusAndFooter() {
    const existingStatus = this.container.querySelector('.dg-status-bar');
    if(existingStatus) existingStatus.remove();
    
    const footer = this.container.querySelector('.dg-footer');
    if(footer) footer.remove(); 
    
    this.renderStatusBar();
    if(this.options.enablePagination) this.renderFooter();
}
    // --- 3. Global Search Toolbar ---
    renderToolbar() {
        if (!this.options.enableSearch && !this.options.enableExport && !this.options.enableEditing) return;

        const toolbar = document.createElement('div');
        toolbar.className = 'dg-toolbar';
        
        const input = document.createElement('input');
        input.className = 'dg-search-input';
        input.placeholder = 'Search grid...';
        input.value = this.state.searchTerm;
        
        input.addEventListener('input', (e) => {
            this.state.searchTerm = e.target.value;
            this.state.currentPage = 1; // Reset to page 1 on search
            this.processData();
            this.render(); // Re-render everything
        });
        toolbar.appendChild(input);

// NEW: Export Button
if (this.options.enableExport !== false) {
    const exportBtn = document.createElement('button');
    exportBtn.className = 'dg-btn';
    exportBtn.innerText = 'Export';
    exportBtn.style.marginLeft = '10px';
    exportBtn.onclick = () => this.exportToCSV();
    toolbar.appendChild(exportBtn);
}

    // --- Add/Remove Buttons (NEW) ---
    const addRowBtn = document.createElement('button');
    addRowBtn.className = 'dg-action-btn';
    addRowBtn.innerText = '➕ Add Row';
    addRowBtn.onclick = () => this.addRow();

    const removeRowBtn = document.createElement('button');
    removeRowBtn.className = 'dg-action-btn';
    removeRowBtn.innerText = '➖ Remove Selected';
    removeRowBtn.onclick = () => this.removeSelectedRows();
    
    // Create a container for the edit actions
    const actionGroup = document.createElement('div');
    actionGroup.style.display = 'inline-block';
    actionGroup.style.marginLeft = '20px';
    actionGroup.append(addRowBtn, removeRowBtn);
    toolbar.appendChild(actionGroup);

        this.container.appendChild(toolbar);
    }

// Inside DynamicGrid class, add this new method:

removeSelectedRows() {
    if (this.state.selectedRows.size === 0) {
        alert("Please select one or more rows to remove using the checkbox.");
        return;
    }

    const confirmRemoval = confirm(`Are you sure you want to remove ${this.state.selectedRows.size} row(s)?`);
    if (!confirmRemoval) return;

    // Filter the original data, keeping only rows whose ID is NOT in the selectedRows set
    this.originalData = this.originalData.filter(row => 
        !this.state.selectedRows.has(row._gridId)
    );

    // Clear selection and re-process/re-render
    this.state.selectedRows.clear();
    this.processData();
    this.render();
}
addRow() {
    // Create a blank record based on column fields
    const newRow = {};
    this.columns.forEach(col => {
        // Set reasonable defaults
        newRow[col.field] = col.type === 'number' ? 0 : '';
    });

    // Add unique ID
    newRow._gridId = Symbol(this.originalData.length);

    this.originalData.push(newRow);

    // Clear filters/search and jump to the last page (where the new row is)
    this.state.globalSearch = '';
    this.state.colFilters = {};
    this.processData(); 

    const totalPages = Math.ceil(this.state.processedData.length / this.options.pageSize);
    this.state.currentPage = totalPages > 0 ? totalPages : 1;

    this.render();
}
exportToCSV() {
    const dataToExport = this.state.processedData;

    if (dataToExport.length === 0) {
        alert("No data available to export.");
        return;
    }

    // 1. Get the Header Row
    // Use the current column order (which respects column reordering)
    const headers = this.columns.map(col => `"${col.header.replace(/"/g, '""')}"`);
    let csvContent = headers.join(',') + '\n';

    // 2. Get the Data Rows
    dataToExport.forEach(row => {
        const rowValues = this.columns.map(col => {
            let value = row[col.field];
            
            // Handle null/undefined
            if (value === null || value === undefined) {
                value = '';
            } else {
                value = String(value);
            }

            // Escape double quotes within the data and wrap in quotes
            return `"${value.replace(/"/g, '""')}"`;
        });
        csvContent += rowValues.join(',') + '\n';
    });

    // 3. Create a Blob and Initiate Download
    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement("a");
    
    // Generate filename based on current date/time
    const filename = `grid_export_${new Date().toISOString().slice(0, 10)}.csv`;

    if (link.download !== undefined) { 
        // HTML5 download attribute supported
        const url = URL.createObjectURL(blob);
        link.setAttribute("href", url);
        link.setAttribute("download", filename);
        link.style.visibility = 'hidden';
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    } else {
        // Fallback for older browsers (not strictly necessary for modern apps)
        alert("Download failed. Please check browser support.");
    }

    console.log(`Successfully exported ${dataToExport.length} rows to ${filename}.`);
}
    // --- 4. Header (Draggable & Resizable) ---
    renderHeader() {
        const headerRow = document.createElement('div');
        headerRow.className = 'dg-header-row';
// NEW: Checkbox Alignment Cell
    const checkboxHeader = document.createElement('div');
    checkboxHeader.className = 'dg-header-cell';
    checkboxHeader.style.flex = '0 0 21px';
    headerRow.appendChild(checkboxHeader);
        this.columns.forEach((col, index) => {
            const cell = document.createElement('div');
            cell.className = 'dg-header-cell';
            cell.style.flexBasis = (col.width || 150) + 'px';
            // 💡 NEW: Apply alignment style to the header cell
        cell.style.textAlign = col.align || 'right';
            cell.draggable = true; // Enable Column Reorder
            // 💡 NEW LOGIC: Check if the current column field is in the active filters state
        const isFiltered = this.state.colFilters.hasOwnProperty(col.field);
        // Find the index in the filter order
        const filterIndex = this.state.filterOrder.indexOf(col.field); // -1 if not found
        const filterOrderNumber = filterIndex + 1; // 1-based order number
        if (isFiltered) {
            // Apply the differentiating CSS class
            cell.classList.add('filtered');
            // 💡 APPLY CONSISTENT COLOR & ORDER NUMBER
            cell.style.borderBottom = `3px solid #1890ff`; // Consistent color (Blue)
            cell.style.position = 'relative'; // Needed for absolute positioning of the number
            
            // 1. Create the Order Indicator Element
            const orderIndicator = document.createElement('span');
            orderIndicator.className = 'dg-filter-order-indicator';
            orderIndicator.innerText = filterOrderNumber;
            orderIndicator.style.position = 'absolute';
            orderIndicator.style.top = '0px';
            orderIndicator.style.right = '0px';
            orderIndicator.style.backgroundColor = '#1890ff'; // Same as border color
            orderIndicator.style.color = 'white';
            orderIndicator.style.borderRadius = '50%';
            orderIndicator.style.padding = '2px 6px';
            orderIndicator.style.fontSize = '10px';
            orderIndicator.style.lineHeight = '1';
            orderIndicator.style.zIndex = '10';
            
            cell.appendChild(orderIndicator);
        }
            // Header Content
            const text = document.createElement('span');
            text.innerText = col.header;
            
           // --- NEW: Options Button (Three Dots) ---
        const optionsBtn = document.createElement('button');
        optionsBtn.innerText = '⋮'; // Vertical ellipsis
        optionsBtn.className = 'dg-options-btn';
        optionsBtn.style.fontSize = '18px';
        optionsBtn.style.border = 'none';
        optionsBtn.style.background = 'transparent';
        optionsBtn.style.cursor = 'pointer';
        optionsBtn.style.marginLeft = '5px';
        optionsBtn.onclick = (e) => {
            e.stopPropagation(); // Prevent the sort from triggering
            this.showOptionsMenu(e.target.parentElement, col);
        };
        //cell.appendChild(optionsBtn);

if(this.options.enableSorting === false) {
            cell.append(text);
}else{
    cell.append(text, optionsBtn);
}
            // Drag Events for Reorder
            this.attachColDragEvents(cell, index);

            // Resize Handle
            const resizeHandle = document.createElement('div');
            resizeHandle.className = 'dg-col-resize-handle';
            this.attachColResizeEvents(resizeHandle, col);
            cell.appendChild(resizeHandle);

            headerRow.appendChild(cell);
        });
        if (!this.options.stickyToWindow) {
            const spacer = document.createElement('div');
            spacer.className = 'dg-scrollbar-spacer';
            spacer.style.width = this.getScrollbarWidth() + 'px';
            headerRow.appendChild(spacer);
        }
        this.container.appendChild(headerRow);
    }
    // Inside DynamicGrid class
showOptionsMenu(headerCell, col) {
    this.closeAllPopups(); // Ensure nothing else is open
// 💡 NEW: Retrieve the saved text filter state
    const savedTextFilter = this.state.textFilters[col.field] || {};
    const savedOperator = savedTextFilter.operator || 'contains'; // Default to 'contains'
    const savedValue = savedTextFilter.value || '';
    // 1. Create the popup container
    const popup = document.createElement('div');
    popup.className = 'dg-filter-popup'; 
    popup.setAttribute('data-field', col.field);

    // 2. Position the popup (same logic as before, relative to the headerCell)
    const rect = headerCell.getBoundingClientRect();
    popup.style.top = `${rect.bottom + window.scrollY}px`;
    popup.style.left = `${rect.left + window.scrollX}px`;
    popup.style.minWidth = '200px'; 

    // 3. Build the content inside the popup
    const isSelected = (optionValue) => optionValue === savedOperator ? 'selected' : '';
    // --- Sorting Options ---
    popup.innerHTML += `
    <div class="dg-filter-group">
            <div class="dg-filter-text-input" style="display: flex; gap: 5px;">
                <select class="dg-text-filter-operator">
                    <option value="equal" ${isSelected('equal')}>Equals</option>
                    <option value="not_equal" ${isSelected('not_equal')}>Not Equals</option>
                    <option value="contains" ${isSelected('contains')}>Contains</option>
                    <option value="not_contains" ${isSelected('not_contains')}>Not Contains</option>
                    <option value="starts_with" ${isSelected('starts_with')}>Starts With</option>
                    <option value="ends_with" ${isSelected('ends_with')}>Ends With</option>
                </select>
                <input type="text" placeholder="Value..." class="dg-text-filter-input" style="flex-grow: 1;" value="${savedValue}">
            </div>
        </div>
        <hr/>
        <div class="dg-filter-group">
            <div class="dg-filter-option" data-action="sort-asc" data-field="${col.field}">Sort A to Z</div>
            <div class="dg-filter-option" data-action="sort-desc" data-field="${col.field}">Sort Z to A</div>
        </div>
        <hr/>
        <div class="dg-filter-group">
            <div class="dg-filter-text-input">
                <input type="text" placeholder="Search..." class="dg-text-filter-input">
            </div>
        </div>
        <hr/>
        <div class="dg-filter-checkbox-list">
            </div>
        <div class="dg-filter-actions">
            <button class="dg-btn dg-filter-apply">Apply</button>
            <button class="dg-btn dg-filter-clear" data-field="${col.field}">Clear Filter</button>
        </div>
    `;

    // 4. Populate Checkbox List (Row Values)
    const partiallyFilteredData = this.getFilteredData(col.field);
    const uniqueValues = this.getUniqueValues(col.field,partiallyFilteredData);
    const checkboxList = popup.querySelector('.dg-filter-checkbox-list');
    const currentFilters = this.state.colFilters[col.field] || [];
// Determine initial state of "Select All" (It's checked if filters are empty OR if all unique values are present in currentFilters)
    const isAllSelected = currentFilters.length === 0 || 
                          (currentFilters.length === uniqueValues.length && 
                           uniqueValues.every(v => currentFilters.includes(String(v))));
    const allCheckedAttr = isAllSelected ? 'checked' : '';

    
    // --- INSERT SELECT ALL CHECKBOX ---
    checkboxList.innerHTML += `
        <label class="dg-select-all-label">
            <input type="checkbox" class="dg-select-all-checkbox" ${allCheckedAttr}> (Select All)
        </label>
        <hr/>
    `;
    uniqueValues.forEach(rawValue => {
        const value = String(rawValue);
        
        // 💡 DEFAULT CHECKED LOGIC: If currentFilters is empty (initial state) OR if the value is explicitly in the filters, check it.
        const isChecked = currentFilters.length === 0 || currentFilters.includes(value);
        const checkedAttr = isChecked ? 'checked' : '';
        
        checkboxList.innerHTML += `
            <label>
                <input type="checkbox" value="${value}" ${checkedAttr}> ${value}
            </label>
        `;
    });

    // 5. Attach Global Event Listener to popup
    this.attachPopupListeners(popup, col);
    
    document.body.appendChild(popup);
}
// --- Helper to calculate Browser Scrollbar Width ---
    getScrollbarWidth() {
        const outer = document.createElement('div');
        outer.style.visibility = 'hidden';
        outer.style.overflow = 'scroll'; 
        outer.style.msOverflowStyle = 'scrollbar'; 
        document.body.appendChild(outer);
        const inner = document.createElement('div');
        outer.appendChild(inner);
        const scrollbarWidth = (outer.offsetWidth - inner.offsetWidth);
        outer.parentNode.removeChild(outer);
        return scrollbarWidth;
    }
    // --- 5. Body ---
    renderBody() {
        const body = document.createElement('div');
        body.className = 'dg-body';

        const pageData = this.getPaginatedData();

        if (pageData.length === 0) {
            body.innerHTML = '<div style="padding:20px; text-align:center; color:#999">No records found</div>';
            this.container.appendChild(body);
            return;
        }

        pageData.forEach((row, rIndex) => {
            const rowEl = document.createElement('div');
            rowEl.className = 'dg-row';
            rowEl.setAttribute('data-grid-id', row._gridId.toString());
            // --- NEW: Selection Checkbox Cell ---
        const selectCell = document.createElement('div');
        selectCell.className = 'dg-cell';
        selectCell.style.flex = '0 0 30px'; // Fixed width for checkbox

        const checkbox = document.createElement('input');
        checkbox.type = 'checkbox';
        checkbox.checked = this.state.selectedRows.has(row._gridId);

        checkbox.addEventListener('change', (e) => {
            if (e.target.checked) {
                this.state.selectedRows.add(row._gridId);
            } else {
                this.state.selectedRows.delete(row._gridId);
            }
            // Optional: Re-render the toolbar/status bar if needed to reflect selection count
        });
        selectCell.appendChild(checkbox);
        rowEl.appendChild(selectCell);
            // --- NEW: Attach Double-Click Listener ---
                rowEl.addEventListener('dblclick', () => {
                    this.handleRowDoubleClick(row);
                });
            this.columns.forEach(col => {
                const cell = document.createElement('div');
                cell.className = 'dg-cell';
                cell.style.flexBasis = (col.width || 150) + 'px';
                // 💡 NEW: Apply alignment style to the data cell
            //cell.style.textAlign = col.align || 'left';
                // Render Input/Select based on type
                const input = this.createInput(col, row);
                cell.appendChild(input);
                rowEl.appendChild(cell);
            });
            body.appendChild(rowEl);
        });

        this.container.appendChild(body);
    }

    // --- 6. Pagination Footer ---
// Inside DynamicGrid class, replace the existing renderFooter method:

renderFooter() {
    if (!this.options.enablePagination) return;

    const totalItems = this.state.processedData.length;
    
    // Calculate total pages based on current size setting
    let currentSize = this.options.pageSize;
    let totalPages = Math.ceil(totalItems / currentSize);
    
    // Handle the case where the current size is set to 'All' 
    if (currentSize >= totalItems) {
        currentSize = 'All';
        totalPages = 1;
    }

    const footer = document.createElement('div');
    footer.className = 'dg-footer';

    // 1. --- NEW: Page Size Dropdown Selector ---
    const pageSizes = [10, 20, 50, 100, 'All'];
    const pageSizeSelect = document.createElement('select');

    pageSizes.forEach(size => {
        const option = document.createElement('option');
        option.value = size;
        option.innerText = size;
        
        // Determine the currently selected option
        const isAllSelected = (size === 'All' && this.options.pageSize >= totalItems);
        const isSizeSelected = (Number(size) === this.options.pageSize);
        
        if (isAllSelected || isSizeSelected) {
            option.selected = true;
        }
        pageSizeSelect.appendChild(option);
    });

    pageSizeSelect.addEventListener('change', (e) => {
        const newSize = e.target.value;
        
        if (newSize === 'All') {
            // Set size to the full length of original data, effectively showing all rows
            this.options.pageSize = this.originalData.length; 
        } else {
            this.options.pageSize = Number(newSize);
        }
        
        this.state.currentPage = 1; // Always reset to page 1
        this.processData(); 
        this.render(); // Re-render the entire grid
    });

    const label = document.createElement('span');
    label.innerText = 'Rows per page: ';
    
    // Add selector and label to the left of the footer
    footer.append(label, pageSizeSelect);
    
    // 2. --- Existing Pagination Controls ---
    
    const controls = document.createElement('div');
    controls.style.display = 'flex';
    controls.style.gap = '10px';
    controls.style.alignItems = 'center';

    const info = document.createElement('span');
    info.innerText = `Page ${this.state.currentPage} of ${totalPages} (${totalItems} items)`;
    info.style.marginLeft = '20px'; // Add some separation

    const prevBtn = document.createElement('button');
    prevBtn.className = 'dg-btn';
    prevBtn.innerText = 'Prev';
    prevBtn.disabled = this.state.currentPage === 1;
    prevBtn.onclick = () => { this.state.currentPage--; this.render(); };

    const nextBtn = document.createElement('button');
    nextBtn.className = 'dg-btn';
    nextBtn.innerText = 'Next';
    nextBtn.disabled = this.state.currentPage >= totalPages || totalPages === 0;
    nextBtn.onclick = () => { this.state.currentPage++; this.render(); };

    controls.append(info, prevBtn, nextBtn);
    // 3. --- NEW: Go To Page Option ---
    const goToDiv = document.createElement('div');
    goToDiv.style.display = 'flex';
    goToDiv.style.alignItems = 'center';
    goToDiv.style.marginLeft = '20px';
    goToDiv.style.gap = '5px';

    const goToInput = document.createElement('input');
    goToInput.type = 'number';
    goToInput.min = 1;
    goToInput.max = totalPages;
    goToInput.placeholder = 'Page #';
    goToInput.style.width = '60px';
    goToInput.style.padding = '4px';

    const goToBtn = document.createElement('button');
    goToBtn.className = 'dg-btn';
    goToBtn.innerText = 'Go';

    // Go button click handler
    goToBtn.onclick = () => {
        const pageNum = parseInt(goToInput.value);
        if (isNaN(pageNum) || pageNum < 1 || pageNum > totalPages) {
            alert(`Please enter a valid page number between 1 and ${totalPages}.`);
            return;
        }
        this.state.currentPage = pageNum;
        this.render();
    };

    goToDiv.append(document.createTextNode('Go to:'), goToInput, goToBtn);
    controls.appendChild(goToDiv); // Add the new controls alongside Prev/Next
    footer.appendChild(controls);

    this.container.appendChild(footer);
}

    // --- Helper: Input Creation ---
    createInput(col, rowData) {
        let el;
        // --- NEW: Handle 'label' Type for Non-Editable Display ---
    if (col.type === 'label') {
        el = document.createElement('div');
        el.className = 'dg-label'; // Custom class for styling non-editable cells
        el.innerText = rowData[col.field].toLocaleString(undefined, { maximumFractionDigits: 2 });
        el.style.width = '100%';
        el.style.padding = '8px';
        el.style.boxSizing = 'border-box';
        el.style.textAlign = col.align || 'left';
        // Note: No change listener is attached for 'label' type.
        
        return el; // Return the non-editable element immediately
    }
        else if(col.type === 'dropdown') {
            el = document.createElement('select');
            el.className = 'dg-select';
            el.style.textAlign = col.align || 'left';
            col.options.forEach(opt => {
                const option = document.createElement('option');
                option.value = opt;
                option.innerText = opt;
                option.selected = rowData[col.field] === opt;
                el.appendChild(option);
            });
        } else {
            el = document.createElement('input');
            el.className = 'dg-input';
            el.type = col.type === 'number' ? 'number' : 'text';
            el.style.textAlign = col.align || 'left';            
            el.value = rowData[col.field];
            // --- NEW: Custom Autocomplete Trigger ---
        if (col.autocomplete) {
            // Prevent the input from receiving focus right away if clicked, 
            // and trigger the custom list instead.
            el.addEventListener('click', (e) => {
                e.stopPropagation(); // Stop event from propagating up to the document click handler
                this.showAutocompleteList(el, col);
            });
            // 2. Live Filtering when typing
            el.addEventListener('input', (e) => {
                // Keep the list visible and filter its contents based on current input value
                this.updateAutocompleteList(el, col, e.target.value); 
            });
            // Optional: If you want to force selection only and prevent typing, uncomment the line below:
            // el.setAttribute('readonly', 'true'); 
        }
        }

        // Event Listener
        el.addEventListener('change', (e) => {
            let val = e.target.value;
            // Convert to number if column type is number
            if(col.type === 'number') val = parseFloat(val);
            
            // Update Data Source
            rowData[col.field] = val;
// 2. 💡 NEW: Execute Custom Cell Change Callback 
        if (this.options.onCellChange && typeof this.options.onCellChange === 'function') {
            // Pass the field, the new value, and the entire row object for context
            this.options.onCellChange(col.field, val, rowData);
        }
            // Trigger Recalculation of Status Bar
            // We don't need to re-render the whole body (expensive), 
            // just the status bar.
            const existingStatus = this.container.querySelector('.dg-status-bar');
            if(existingStatus) existingStatus.remove();
            
            // We must re-insert status bar before the footer
            const footer = this.container.querySelector('.dg-footer');
            if(footer) footer.remove(); // Remove footer momentarily
            
            this.renderStatusBar();
            if(this.options.enablePagination) this.renderFooter(); // Add footer back
        });
// --- NEW HOOK ---
    if (this.options.customCellRenderer) {
        // Execute the custom function, allowing it to modify the element or attach listeners
        this.options.customCellRenderer(el, col, rowData);
    }
        return el;
    }

// Inside DynamicGrid class
attachPopupListeners(popup, col) {
    const field = col.field;
    const checkboxList = popup.querySelector('.dg-filter-checkbox-list');
    const selectAllCheckbox = popup.querySelector('.dg-select-all-checkbox');
   // Find all individual checkboxes
    const individualCheckboxes = checkboxList.querySelectorAll('input[type="checkbox"]:not(.dg-select-all-checkbox)');


    // 💡 NEW LISTENER: Handle Select All/Deselect All (Existing Logic)
    if (selectAllCheckbox) {
        selectAllCheckbox.addEventListener('change', () => {
            const isChecked = selectAllCheckbox.checked;
            
            individualCheckboxes.forEach(cb => {
                cb.checked = isChecked;
            });
            // Note: Filter is applied only on 'Apply' click.
        });
    }

    // 💡 NEW LISTENERS: Handle change on individual items
    individualCheckboxes.forEach(cb => {
        cb.addEventListener('change', () => {
            if (selectAllCheckbox) {
                
                // 1. Check if the changed item was unchecked
                if (!cb.checked) {
                    // If even one item is unchecked, force Select All to be unchecked
                    selectAllCheckbox.checked = false;
                } else {
                    // 2. If the changed item was checked, check if all others are now checked
                    const allChecked = Array.from(individualCheckboxes).every(item => item.checked);
                    
                    if (allChecked) {
                        // If every single individual item is checked, then check Select All
                        selectAllCheckbox.checked = true;
                    }
                }
            }
        });
    });
    // Listen for Sort Clicks
    popup.querySelector('.dg-filter-apply').addEventListener('click', () => {
       const uniqueValuesCount = this.getUniqueValues(field).length;

    // Get all checked values (excluding the "Select All" checkbox)
    const selectedValues = Array.from(checkboxList.querySelectorAll('input[type="checkbox"]:not(.dg-select-all-checkbox):checked'))
                            .map(input => String(input.value)); // Ensure values are strings
const isFilterActive = selectedValues.length > 0 && selectedValues.length !== uniqueValuesCount;
    // If all items are selected, delete the filter to avoid unnecessary filtering
    if (selectedValues.length === uniqueValuesCount) {
        delete this.state.colFilters[field];
    } else if (selectedValues.length > 0) {
        // 💡 CRITICAL: Save the state
        this.state.colFilters[field] = selectedValues;
    } else {
        // If nothing is checked, set an empty array to filter everything out
        this.state.colFilters[field] = [];
    }
// --- 2. Handle Text Filters (NEW) ---
    const textInput = popup.querySelector('.dg-text-filter-input').value.trim();
    const operator = popup.querySelector('.dg-text-filter-operator').value;
    
    if (textInput) {
        // Save the complex text filter state
        this.state.textFilters[field] = {
            operator: operator,
            value: textInput.toLowerCase() // Always filter using lowercase
        };
    } else {
        // If text input is empty, remove the text filter for this column
        delete this.state.textFilters[field];
    }
    // 3. Update Filter Order
    const isTextFilterActive = !!textInput;
    // The filter is active if EITHER the checkbox filter is active OR the text filter is active
    this.updateFilterOrder(field, isFilterActive || isTextFilterActive);
        // 💡 Update Filter Order
    //this.updateFilterOrder(field, isFilterActive);
        this.processData();
        this.render();
        this.closeAllPopups();
    });
    popup.querySelectorAll('.dg-filter-option').forEach(el => {
    el.addEventListener('click', (e) => {
        const action = e.target.getAttribute('data-action');
        
        if (action.startsWith('sort-')) {
            const direction = action.split('-')[1]; // Extracts 'asc' or 'desc'
            
            // 💡 CALL LOCATION 2: Calls handleSort with both field and explicit direction.
            this.handleSort(field, direction); 
            this.closeAllPopups();
        }
    });
});
    // Listen for Checkbox List Changes (Apply Filter Logic)
    popup.querySelector('.dg-filter-apply').addEventListener('click', () => {
        const selectedValues = Array.from(popup.querySelectorAll('.dg-filter-checkbox-list input:checked'))
                                .map(input => input.value);
        
        this.state.colFilters[field] = selectedValues;
        this.processData();
        this.render();
        this.closeAllPopups();
    });
    
    // Listen for Clear Filter
    popup.querySelector('.dg-filter-clear').addEventListener('click', () => {
        delete this.state.colFilters[field];
        // 💡 Update Filter Order
    this.updateFilterOrder(field, false); // false = filter is now inactive
        this.processData();
        this.render();
        this.closeAllPopups();
    });
    
    // Listen for Text Filter Input (Optional: Live filtering the checkboxes)
    popup.querySelector('.dg-text-filter-input').addEventListener('input', (e) => {
        // This input is usually used to live filter the list of checkboxes shown below it.
        const filterText = e.target.value.toLowerCase();
        popup.querySelectorAll('.dg-filter-checkbox-list label').forEach(label => {
            const value = label.querySelector('input').value.toLowerCase();
            label.style.display = value.includes(filterText) ? 'block' : 'none';
        });
    });
}

// Update handl23eSort to accept an explicit direction
handleSort(field, direction = null) {
    // If direction is provided (from the menu), use it directly
    if (direction) {
        this.state.currentSort.field = field;
        this.state.currentSort.direction = direction;
    } 
    // Otherwise, toggle the current direction (from direct header click)
    else if (this.state.currentSort.field === field) {
        this.state.currentSort.direction = this.state.currentSort.direction === 'asc' ? 'desc' : 'asc';
    } else {
        this.state.currentSort.field = field;
        this.state.currentSort.direction = 'asc';
    }
    this.processData();
    this.render();
}
    // --- Logic: Pagination ---
    changePage(dir) {
        this.state.currentPage += dir;
        this.render(); // Only need to re-render, processing didn't change
    }

    // --- Logic: Column Resize ---
    attachColResizeEvents(handle, colConfig) {
        let startX, startWidth;

        const onMouseMove = (e) => {
            const newWidth = startWidth + (e.clientX - startX);
            if (newWidth > 50) { // Min width
                colConfig.width = newWidth; // Update config state
                this.render(); // Re-render to apply width to header and body
            }
        };

        const onMouseUp = () => {
            document.removeEventListener('mousemove', onMouseMove);
            document.removeEventListener('mouseup', onMouseUp);
            document.body.style.cursor = 'default';
        };

        handle.addEventListener('mousedown', (e) => {
            e.preventDefault();
            e.stopPropagation(); // Prevent drag start
            startX = e.clientX;
            startWidth = colConfig.width || 150;
            document.body.style.cursor = 'col-resize';
            document.addEventListener('mousemove', onMouseMove);
            document.addEventListener('mouseup', onMouseUp);
        });
    }

    // --- Logic: Column Reorder (Drag & Drop) ---
    attachColDragEvents(cell, index) {
        cell.addEventListener('dragstart', (e) => {
            e.dataTransfer.setData('colIndex', index);
            cell.classList.add('dragging');
        });

        cell.addEventListener('dragend', () => {
            cell.classList.remove('dragging');
        });

        cell.addEventListener('dragover', (e) => {
            e.preventDefault(); // Allow drop
        });

        cell.addEventListener('drop', (e) => {
            e.preventDefault();
            const fromIndex = parseInt(e.dataTransfer.getData('colIndex'));
            const toIndex = index;

            if (fromIndex !== toIndex) {
                // Swap columns in config array
                const movedCol = this.columns.splice(fromIndex, 1)[0];
                this.columns.splice(toIndex, 0, movedCol);
                this.render(); // Re-render grid with new column order
            }
        });
    }
    // Inside DynamicGrid class:

// Inside DynamicGrid class, update getUniqueValues
getUniqueValues(field, dataToExamine) { // <--- Added dataToExamine parameter
    
    // Fallback if data is empty (though usually handled by caller)
    if (!dataToExamine || dataToExamine.length === 0) {
        return [];
    }
    
    // Ensure all values are converted to strings before putting them in the Set
    return [...new Set(dataToExamine.map(item => String(item[field])))].sort();
}
// Inside DynamicGrid class:

getFilteredData(excludeField = null) {
    let data = this.originalData; 

    // 1. Apply Global Search
    // (If you have global search, apply it here first)

    // 2. Apply Column Filters (excluding the current one)
    Object.keys(this.state.colFilters).forEach(field => {
        // Skip the field we want to exclude
        if (field === excludeField) {
            return; 
        }

        const filters = this.state.colFilters[field];
        
        if (filters && filters.length > 0) {
             data = data.filter(item => filters.includes(String(item[field])));
        } else if (filters && filters.length === 0) {
             data = [];
        }
    });
    
    return data;
}
// --- UPDATED Utility Method for Closing Popups ---
    closeAllPopups() {
        // 1. Close Column Filters
        document.querySelectorAll('.dg-filter-popup').forEach(el => el.remove());

        // 2. Close Autocomplete List (NEW)
        if (this.activeAutocompletePopup) {
            this.activeAutocompletePopup.remove();
            this.activeAutocompletePopup = null;
        }
    }
    // Inside DynamicGrid class:

// Inside DynamicGrid class, update the showAutocompleteList method:

// Inside DynamicGrid class, update the showAutocompleteList method:

showAutocompleteList(inputEl, col) {
    // If the list is already open, do nothing (let the input listener handle filtering)
    if (this.activeAutocompletePopup) {
        return; 
    }
    this.closeAllPopups(); // Close others

    // 1. Create container (ul)
    const list = document.createElement('ul');
    list.className = 'dg-autocomplete-list';

    // 2. Position container
    const rect = inputEl.getBoundingClientRect();
    list.style.top = `${rect.bottom + window.scrollY}px`;
    list.style.left = `${rect.left + window.scrollX}px`;
    list.style.width = `${rect.width}px`;

    document.body.appendChild(list);
    this.activeAutocompletePopup = list;
    
    // 3. Populate content based on current input value (initial filtering)
    this.updateAutocompleteList(inputEl, col, inputEl.value); 
}
// Inside DynamicGrid class, add this new method:

updateAutocompleteList(inputEl, col, filterText = '') {
    // If the popup container hasn't been created yet, create it now (edge case)
    if (!this.activeAutocompletePopup) {
        this.showAutocompleteList(inputEl, col);
        return; // The showAutocompleteList call will handle the initial rendering
    }
    
    const list = this.activeAutocompletePopup;
    
    // 1. Determine source options (user-provided or generated)
    let sourceOptions = col.options || this.getUniqueValues(col.field);

    // 2. Filter the options based on the input text
    const filteredOptions = sourceOptions.filter(value => 
        String(value).toLowerCase().includes(filterText.toLowerCase())
    );

    list.innerHTML = ''; // Clear existing list items

    // 3. Regenerate and append filtered items
    if (filteredOptions.length > 0) {
        filteredOptions.forEach(value => {
            const item = document.createElement('li');
            item.innerText = value;
            
            // Re-attach click listener for item selection
            item.addEventListener('click', () => {
                inputEl.value = value;
                inputEl.dispatchEvent(new Event('change')); 
                this.closeAllPopups();
            });
            list.appendChild(item);
        });
    } else {
        list.innerHTML = '<li>No matches found</li>';
    }
}

}