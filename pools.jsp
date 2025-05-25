<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pool Rental Marketplace</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="css/pools.css" rel="stylesheet">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm sticky-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">
                <i class="fas fa-swimming-pool text-primary"></i> SwimRent
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">List Your Pool</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sign In</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary ms-2" href="#">Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <h1 class="display-4 fw-bold mb-4">Find the Perfect Pool Near You</h1>
                    <p class="lead mb-4">Rent private pools by the hour for swimming, parties, or photoshoots</p>
                    
                    <!-- Search Form -->
                    <form class="search-form p-4 bg-white rounded-4 shadow">
                        <div class="row g-3">
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-text bg-white border-end-0">
                                        <i class="fas fa-location-dot"></i>
                                    </span>
                                    <input type="text" class="form-control border-start-0" placeholder="Location">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-text bg-white border-end-0">
                                        <i class="fas fa-calendar"></i>
                                    </span>
                                    <input type="date" class="form-control border-start-0">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary w-100">Search Pools</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Pool Listings -->
    <section class="pool-listings py-5">
        <div class="container">
            <!-- Filters -->
            <div class="filters mb-4">
                <div class="row g-3">
                    <div class="col-auto">
                        <button class="btn btn-outline-dark">
                            <i class="fas fa-filter me-2"></i>Filters
                        </button>
                    </div>
                    <div class="col-auto">
                        <select class="form-select">
                            <option>Price: Low to High</option>
                            <option>Price: High to Low</option>
                            <option>Highest Rated</option>
                            <option>Most Popular</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- Pool Grid -->
            <div class="row g-4">
                <!-- Pool Card 1 -->
                <div class="col-md-4">
                    <div class="card pool-card h-100">
                        <img src="https://images.pexels.com/photos/261041/pexels-photo-261041.jpeg" class="card-img-top" alt="Luxury Pool">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-start mb-2">
                                <h5 class="card-title mb-0">Luxury Infinity Pool</h5>
                                <span class="badge bg-primary">$75/hr</span>
                            </div>
                            <p class="card-text text-muted">Beverly Hills, CA</p>
                            <div class="pool-features mb-3">
                                <span class="badge bg-light text-dark me-2">Heated</span>
                                <span class="badge bg-light text-dark me-2">Diving Board</span>
                                <span class="badge bg-light text-dark">BBQ</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="rating">
                                    <i class="fas fa-star text-warning"></i>
                                    <span>4.9 (124 reviews)</span>
                                </div>
                                <button class="btn btn-outline-primary">View Details</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pool Card 2 -->
                <div class="col-md-4">
                    <div class="card pool-card h-100">
                        <img src="https://images.pexels.com/photos/261327/pexels-photo-261327.jpeg" class="card-img-top" alt="Family Pool">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-start mb-2">
                                <h5 class="card-title mb-0">Family Fun Pool</h5>
                                <span class="badge bg-primary">$45/hr</span>
                            </div>
                            <p class="card-text text-muted">Santa Monica, CA</p>
                            <div class="pool-features mb-3">
                                <span class="badge bg-light text-dark me-2">Kid-Friendly</span>
                                <span class="badge bg-light text-dark me-2">Slide</span>
                                <span class="badge bg-light text-dark">Toys</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="rating">
                                    <i class="fas fa-star text-warning"></i>
                                    <span>4.7 (89 reviews)</span>
                                </div>
                                <button class="btn btn-outline-primary">View Details</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pool Card 3 -->
                <div class="col-md-4">
                    <div class="card pool-card h-100">
                        <img src="https://images.pexels.com/photos/261102/pexels-photo-261102.jpeg" class="card-img-top" alt="Resort Style Pool">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-start mb-2">
                                <h5 class="card-title mb-0">Resort Style Pool</h5>
                                <span class="badge bg-primary">$95/hr</span>
                            </div>
                            <p class="card-text text-muted">Malibu, CA</p>
                            <div class="pool-features mb-3">
                                <span class="badge bg-light text-dark me-2">Cabana</span>
                                <span class="badge bg-light text-dark me-2">Hot Tub</span>
                                <span class="badge bg-light text-dark">Ocean View</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="rating">
                                    <i class="fas fa-star text-warning"></i>
                                    <span>4.8 (156 reviews)</span>
                                </div>
                                <button class="btn btn-outline-primary">View Details</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Load More Button -->
            <div class="text-center mt-5">
                <button class="btn btn-outline-primary btn-lg">Load More Pools</button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white py-5 mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-3 mb-4 mb-md-0">
                    <h5 class="mb-3">SwimRent</h5>
                    <p class="text-muted">Find and rent the perfect pool for your next swim, party, or event.</p>
                </div>
                <div class="col-md-3 mb-4 mb-md-0">
                    <h5 class="mb-3">Company</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-muted">About Us</a></li>
                        <li><a href="#" class="text-muted">Careers</a></li>
                        <li><a href="#" class="text-muted">Press</a></li>
                    </ul>
                </div>
                <div class="col-md-3 mb-4 mb-md-0">
                    <h5 class="mb-3">Support</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-muted">Help Center</a></li>
                        <li><a href="#" class="text-muted">Safety</a></li>
                        <li><a href="#" class="text-muted">Cancellation Options</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5 class="mb-3">Follow Us</h5>
                    <div class="social-links">
                        <a href="#" class="text-muted me-3"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-muted me-3"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-muted me-3"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <hr class="my-4">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    <p class="mb-0 text-muted">&copy; 2023 SwimRent. All rights reserved.</p>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <a href="#" class="text-muted me-3">Terms</a>
                    <a href="#" class="text-muted me-3">Privacy</a>
                    <a href="#" class="text-muted">Sitemap</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JavaScript -->
    <script src="js/pools.js"></script>
</body>
</html>
