// Wait for DOM to be fully loaded
document.addEventListener('DOMContentLoaded', function() {
    // Initialize date input with today's date
    const dateInput = document.querySelector('input[type="date"]');
    if (dateInput) {
        const today = new Date().toISOString().split('T')[0];
        dateInput.value = today;
        dateInput.min = today;
    }

    // Handle search form submission
    const searchForm = document.querySelector('.search-form');
    if (searchForm) {
        searchForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const location = searchForm.querySelector('input[type="text"]').value;
            const date = searchForm.querySelector('input[type="date"]').value;
            
            if (!location.trim()) {
                alert('Please enter a location to search');
                return;
            }
            
            // You can implement the actual search functionality here
            console.log('Searching for pools in:', location, 'for date:', date);
            // Simulate loading state
            const submitBtn = this.querySelector('button[type="submit"]');
            submitBtn.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Searching...';
            submitBtn.disabled = true;
            
            // Reset button after 2 seconds (simulating API call)
            setTimeout(() => {
                submitBtn.innerHTML = 'Search Pools';
                submitBtn.disabled = false;
            }, 2000);
        });
    }

    // Handle filter button click
    const filterBtn = document.querySelector('.btn-outline-dark');
    if (filterBtn) {
        filterBtn.addEventListener('click', function() {
            // Implement filter modal or dropdown functionality
            console.log('Filter button clicked');
        });
    }

    // Handle sort selection change
    const sortSelect = document.querySelector('.form-select');
    if (sortSelect) {
        sortSelect.addEventListener('change', function() {
            const selectedOption = this.value;
            console.log('Sort option selected:', selectedOption);
            // Implement sorting functionality
        });
    }

    // Handle "Load More" button click
    const loadMoreBtn = document.querySelector('.btn-lg.btn-outline-primary');
    if (loadMoreBtn) {
        loadMoreBtn.addEventListener('click', function() {
            // Simulate loading state
            this.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Loading...';
            this.disabled = true;
            
            // Reset button after 2 seconds (simulating API call)
            setTimeout(() => {
                this.innerHTML = 'Load More Pools';
                this.disabled = false;
                // Implement actual load more functionality here
            }, 2000);
        });
    }

    // Add hover effect to pool cards
    const poolCards = document.querySelectorAll('.pool-card');
    poolCards.forEach(card => {
        card.addEventListener('mouseenter', function() {
            this.style.transform = 'translateY(-5px)';
        });
        
        card.addEventListener('mouseleave', function() {
            this.style.transform = 'translateY(0)';
        });
    });

    // Handle "View Details" button clicks
    const viewDetailsButtons = document.querySelectorAll('.btn-outline-primary');
    viewDetailsButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            const card = this.closest('.pool-card');
            const poolName = card.querySelector('.card-title').textContent;
            console.log('Viewing details for:', poolName);
            // Implement view details functionality (e.g., redirect to detail page)
        });
    });
});

// Helper function to format currency
function formatCurrency(amount) {
    return new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD'
    }).format(amount);
}

// Helper function to format date
function formatDate(date) {
    return new Intl.DateTimeFormat('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    }).format(new Date(date));
}
