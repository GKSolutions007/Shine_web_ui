class MultiSelectDropdown {
    constructor(options) {
        this.containerId = options.containerId;
        this.data = options.data || [];
        this.idField = options.idField || 'ID';
        this.nameField = options.nameField || 'Name';
        this.placeholder = options.placeholder || 'Search and select...';
        this.maxHeight = options.maxHeight || '350px';
        this.selectedIds = new Set();
        this.filteredData = [...this.data];
        this.originalData = [...this.data];

        this.container = document.getElementById(this.containerId);
        this.init();
    }

    // Initialize dropdown
    init() {
        this.render();
        this.attachEventListeners();
    }

    // Render dropdown structure
    render() {
        this.container.innerHTML = `
            <div class="multiselect-input-wrapper">
                <input 
                    type="text" 
                    class="multiselect-input"
                    placeholder="${this.placeholder}"
                    autocomplete="off"
                />
                <div class="multiselect-dropdown-icon">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2">
                        <polyline points="5 8 8 11 11 8"></polyline>
                    </svg>
                </div>
            </div>
            <div class="multiselect-dropdown" style="max-height: ${this.maxHeight}">
                <div class="multiselect-search-box">
                    <input 
                        type="text" 
                        class="multiselect-search-input"
                        placeholder="🔍 Type to search..."
                        autocomplete="off"
                    />
                </div>
                <div class="multiselect-control-bar">
                    <div class="multiselect-count"><span class="count-selected">0</span> / ${this.originalData.length} selected</div>
                    <div style="display: flex; gap: 6px;">
                        <button type="button" class="multiselect-control-btn" data-action="selectAll">Select All</button>
                        <button type="button" class="multiselect-control-btn" data-action="removeAll">Remove All</button>
                    </div>
                </div>
                <div class="multiselect-options"></div>
            </div>
        `;

        this.renderOptions();
        this.renderTags();
        this.updateCount();
    }

    // Render options in dropdown
    renderOptions() {
        const optionsContainer = this.container.querySelector('.multiselect-options');
        
        if (this.filteredData.length === 0) {
            optionsContainer.innerHTML = '<div class="multiselect-no-results">No stores found</div>';
            return;
        }

        optionsContainer.innerHTML = this.filteredData
            .map(item => {
                const id = item[this.idField];
                const name = item[this.nameField].trim();
                const isSelected = this.selectedIds.has(id.toString());
                
                return `
                    <div class="multiselect-option ${isSelected ? 'selected' : ''}" data-id="${id}">
                        <div class="multiselect-checkbox">
                            ${isSelected ? '<svg width="12" height="10" viewBox="0 0 12 10" fill="currentColor"><path d="M10.293 1.293a1 1 0 011.414 1.414l-6 6a1 1 0 01-1.414 0l-3-3a1 1 0 111.414-1.414L5.586 6.586l5.707-5.707a1 1 0 011.414 0z"/></svg>' : ''}
                        </div>
                        <span class="multiselect-option-text">${name}</span>
                    </div>
                `;
            })
            .join('');
    }

    // Render selected tags
    renderTags() {
        const inputWrapper = this.container.querySelector('.multiselect-input-wrapper');
        const input = inputWrapper.querySelector('.multiselect-input');
        
        // Clear existing tags but keep input
        inputWrapper.querySelectorAll('.multiselect-tag').forEach(tag => tag.remove());

        // Add tags for selected items
        this.selectedIds.forEach(id => {
            const item = this.data.find(d => d[this.idField].toString() === id.toString());
            if (item) {
                const tag = document.createElement('div');
                tag.className = 'multiselect-tag';
                tag.innerHTML = `
                    <span>${item[this.nameField].trim()}</span>
                    <div class="multiselect-tag-remove" data-id="${id}">×</div>
                `;
                
                tag.querySelector('.multiselect-tag-remove').addEventListener('click', (e) => {
                    e.stopPropagation();
                    this.toggleOption(id);
                });

                inputWrapper.insertBefore(tag, input);
            }
        });

        // Update placeholder visibility
        if (this.selectedIds.size > 0) {
            input.style.display = 'none';
        } else {
            input.style.display = 'flex';
        }
    }

    // Update selection counter
    updateCount() {
        const countElement = this.container.querySelector('.count-selected');
        if (countElement) {
            countElement.textContent = this.selectedIds.size;
        }
    }

    // Attach event listeners
    attachEventListeners() {
        const inputWrapper = this.container.querySelector('.multiselect-input-wrapper');
        const input = this.container.querySelector('.multiselect-input');
        const searchInput = this.container.querySelector('.multiselect-search-input');
        const dropdown = this.container.querySelector('.multiselect-dropdown');
        const controlButtons = this.container.querySelectorAll('.multiselect-control-btn');

        // Toggle dropdown event
        inputWrapper.addEventListener('click', () => {
            dropdown.classList.toggle('active');
            inputWrapper.classList.toggle('active');
            if (dropdown.classList.contains('active')) {
                searchInput.focus();
            }
        });

        // Control buttons (Select All / Remove All)
        controlButtons.forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                e.stopPropagation();
                const action = btn.getAttribute('data-action');
                
                if (action === 'selectAll') {
                    this.filteredData.forEach(item => {
                        this.selectedIds.add(item[this.idField].toString());
                    });
                } else if (action === 'removeAll') {
                    this.selectedIds.clear();
                }
                
                this.renderTags();
                this.renderOptions();
                this.updateCount();
                this.attachOptionListeners();
            });
        });

        // Search input event
        searchInput.addEventListener('input', (e) => {
            const searchTerm = e.target.value.toLowerCase();
            this.filteredData = this.originalData.filter(item =>
                item[this.nameField].toLowerCase().includes(searchTerm)
            );
            this.renderOptions();
            this.attachOptionListeners();
        });

        // Attach option selection listeners
        this.attachOptionListeners();

        // Close dropdown when clicking outside
        document.addEventListener('click', (e) => {
            if (!this.container.contains(e.target)) {
                dropdown.classList.remove('active');
                inputWrapper.classList.remove('active');
            }
        });

        // Keyboard navigation (Escape key)
        input.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') {
                dropdown.classList.remove('active');
                inputWrapper.classList.remove('active');
            }
        });
    }

    // Attach individual option click listeners
    attachOptionListeners() {
        this.container.querySelectorAll('.multiselect-option').forEach(option => {
            option.addEventListener('click', () => {
                const id = option.getAttribute('data-id');
                this.toggleOption(id);
                // Keep dropdown open and list visible after selection
                this.renderTags();
                this.renderOptions();
                this.updateCount();
                this.attachOptionListeners();
            });
        });
    }

    // Toggle option selection
    toggleOption(id) {
        if (this.selectedIds.has(id.toString())) {
            this.selectedIds.delete(id.toString());
        } else {
            this.selectedIds.add(id.toString());
        }
    }

    // Get selected items
    getSelected() {
        return Array.from(this.selectedIds).map(id => {
            return this.data.find(item => item[this.idField].toString() === id.toString());
        });
    }

    // Set selected items by IDs
    setSelected(ids) {
        this.selectedIds = new Set(ids.map(id => id.toString()));
        this.renderTags();
        this.renderOptions();
        this.updateCount();
        this.attachOptionListeners();
    }

    // Clear all selections
    clear() {
        this.selectedIds.clear();
        this.filteredData = [...this.originalData];
        this.render();
    }
}
