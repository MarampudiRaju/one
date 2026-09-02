<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MediCare Pharmacy | Online Pharmacy</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        :root {
            --green: #07883f;
            --dark-green: #056b32;
            --light-green: #eaf8f0;
            --text: #1f2937;
            --gray: #6b7280;
            --border: #e5e7eb;
            --white: #ffffff;
            --red: #ef4444;
        }

        body {
            background: #f8faf9;
            color: var(--text);
        }

        button {
            cursor: pointer;
            border: none;
        }

        /* ================= TOP BAR ================= */

        .topbar {
            background: #f4f7f5;
            border-bottom: 1px solid var(--border);
            padding: 9px 5%;
            display: flex;
            justify-content: space-between;
            font-size: 13px;
            color: #374151;
        }

        .top-left,
        .top-right {
            display: flex;
            gap: 25px;
        }

        /* ================= HEADER ================= */

        header {
            background: white;
            padding: 18px 5%;
            display: flex;
            align-items: center;
            gap: 35px;
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            min-width: 160px;
        }

        .logo-icon {
            width: 43px;
            height: 43px;
            background: var(--green);
            color: white;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 26px;
            font-weight: bold;
        }

        .logo h1 {
            font-size: 23px;
            color: var(--dark-green);
        }

        .logo span {
            display: block;
            color: var(--gray);
            font-size: 12px;
        }

        .search-box {
            flex: 1;
            max-width: 650px;
            display: flex;
            height: 46px;
            border: 1px solid #cbd5d1;
            border-radius: 8px;
            overflow: hidden;
        }

        .search-box input {
            flex: 1;
            border: none;
            outline: none;
            padding: 0 16px;
            font-size: 14px;
        }

        .search-btn {
            width: 55px;
            background: var(--green);
            color: white;
            font-size: 20px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 22px;
        }

        .action {
            position: relative;
            font-size: 14px;
            text-align: center;
            cursor: pointer;
        }

        .action-icon {
            font-size: 23px;
            display: block;
        }

        .badge {
            position: absolute;
            top: -5px;
            right: 0;
            background: var(--red);
            color: white;
            border-radius: 50%;
            width: 17px;
            height: 17px;
            font-size: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ================= NAV ================= */

        nav {
            background: white;
            border-bottom: 1px solid var(--border);
            padding: 0 5%;
            display: flex;
            align-items: center;
            gap: 32px;
            height: 50px;
        }

        nav a {
            text-decoration: none;
            color: #111827;
            font-size: 14px;
            height: 50px;
            display: flex;
            align-items: center;
        }

        nav a:hover,
        nav a.active {
            color: var(--green);
            border-bottom: 3px solid var(--green);
        }

        .category-btn {
            color: var(--green);
            font-weight: bold;
        }

        /* ================= HERO ================= */

        .hero {
            background: linear-gradient(110deg, #e9f8ef, #f4fbf7);
            min-height: 330px;
            display: flex;
            align-items: center;
            padding: 45px 7%;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            width: 55%;
            z-index: 2;
        }

        .hero h2 {
            font-size: 48px;
            line-height: 1.1;
            margin-bottom: 15px;
            color: #111827;
        }

        .hero h2 span {
            color: var(--green);
        }

        .hero p {
            color: #4b5563;
            font-size: 17px;
            margin-bottom: 22px;
        }

        .hero-search {
            background: white;
            border: 1px solid #b8daca;
            display: flex;
            max-width: 530px;
            height: 48px;
            border-radius: 7px;
            overflow: hidden;
        }

        .hero-search input {
            flex: 1;
            border: none;
            padding: 0 15px;
            outline: none;
        }

        .hero-search button {
            width: 100px;
            background: var(--green);
            color: white;
            font-weight: bold;
        }

        .hero-features {
            display: flex;
            gap: 30px;
            margin-top: 25px;
        }

        .hero-feature {
            font-size: 13px;
        }

        .hero-feature strong {
            display: block;
            margin-bottom: 4px;
        }

        .hero-art {
            position: absolute;
            right: 12%;
            bottom: 10px;
            font-size: 150px;
            opacity: .12;
        }

        .offer-card {
            position: absolute;
            right: 6%;
            top: 70px;
            background: var(--green);
            color: white;
            padding: 25px;
            border-radius: 15px;
            width: 145px;
            text-align: center;
            box-shadow: 0 10px 30px #07883f33;
        }

        .offer-card strong {
            font-size: 38px;
            display: block;
        }

        .offer-card button {
            background: white;
            color: var(--green);
            padding: 10px 15px;
            border-radius: 6px;
            margin-top: 12px;
            font-weight: bold;
        }

        /* ================= MAIN ================= */

        .container {
            width: 90%;
            max-width: 1250px;
            margin: auto;
        }

        section {
            padding: 35px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .section-header h2 {
            font-size: 22px;
        }

        .view-all {
            color: var(--green);
            font-size: 14px;
            font-weight: bold;
        }

        /* ================= CATEGORIES ================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(8, 1fr);
            gap: 12px;
        }

        .category {
            background: white;
            border: 1px solid var(--border);
            border-radius: 10px;
            padding: 17px 8px;
            text-align: center;
            transition: .25s;
        }

        .category:hover {
            transform: translateY(-4px);
            box-shadow: 0 8px 20px #0000000d;
            border-color: #8ed0a8;
        }

        .category-icon {
            width: 55px;
            height: 55px;
            margin: auto auto 10px;
            border-radius: 50%;
            background: var(--light-green);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 25px;
        }

        .category p {
            font-size: 13px;
        }

        /* ================= PRODUCTS ================= */

        .products {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 18px;
        }

        .product {
            background: white;
            border: 1px solid var(--border);
            border-radius: 10px;
            padding: 15px;
            position: relative;
            transition: .25s;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 25px #00000012;
        }

        .discount {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #dcfce7;
            color: #15803d;
            padding: 4px 7px;
            border-radius: 4px;
            font-size: 11px;
            font-weight: bold;
        }

        .prescription {
            background: #fee2e2;
            color: #dc2626;
        }

        .wishlist {
            position: absolute;
            top: 10px;
            right: 10px;
            background: white;
            font-size: 20px;
            color: #9ca3af;
        }

        .wishlist.active {
            color: #ef4444;
        }

        .product-image {
            height: 150px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 75px;
            margin-top: 10px;
        }

        .product h3 {
            font-size: 15px;
            margin: 8px 0;
        }

        .product p {
            font-size: 12px;
            color: var(--gray);
            margin-bottom: 10px;
        }

        .price {
            font-size: 18px;
            font-weight: bold;
        }

        .old-price {
            text-decoration: line-through;
            color: #9ca3af;
            font-size: 12px;
            margin-left: 6px;
        }

        .add-cart {
            width: 100%;
            padding: 10px;
            margin-top: 12px;
            background: var(--green);
            color: white;
            border-radius: 6px;
            font-weight: bold;
        }

        .add-cart:hover {
            background: var(--dark-green);
        }

        /* ================= BENEFITS ================= */

        .benefits {
            background: #eef8f3;
            border-radius: 8px;
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            padding: 20px;
        }

        .benefit {
            text-align: center;
            border-right: 1px solid #d5e7dc;
        }

        .benefit:last-child {
            border: none;
        }

        .benefit-icon {
            font-size: 25px;
            margin-bottom: 7px;
        }

        .benefit strong {
            font-size: 13px;
            display: block;
        }

        .benefit span {
            color: var(--gray);
            font-size: 11px;
        }

        /* ================= PROMOTIONS ================= */

        .promotions {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
        }

        .promo {
            border-radius: 10px;
            padding: 25px;
            min-height: 150px;
        }

        .promo h3 {
            color: var(--dark-green);
            margin-bottom: 10px;
        }

        .promo p {
            font-size: 13px;
            color: #4b5563;
            margin-bottom: 15px;
        }

        .promo button {
            padding: 9px 15px;
            border-radius: 6px;
            background: var(--green);
            color: white;
        }

        .promo:nth-child(1) {
            background: #e9f8ef;
        }

        .promo:nth-child(2) {
            background: #e9f5fb;
        }

        .promo:nth-child(3) {
            background: #fff6df;
        }

        /* ================= TRACK ORDER ================= */

        .track {
            background: white;
            border: 1px solid var(--border);
            padding: 20px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .track h3 {
            white-space: nowrap;
        }

        .track-form {
            flex: 1;
            display: flex;
            height: 42px;
        }

        .track-form input {
            flex: 1;
            border: 1px solid var(--border);
            padding: 0 15px;
            outline: none;
        }

        .track-form button {
            width: 120px;
            background: var(--green);
            color: white;
            font-weight: bold;
        }

        #trackResult {
            display: none;
            margin-top: 15px;
            background: #eaf8f0;
            padding: 15px;
            border-radius: 7px;
            color: var(--dark-green);
        }

        /* ================= FOOTER ================= */

        footer {
            background: #045a3b;
            color: white;
            margin-top: 30px;
            padding: 45px 5% 20px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr 1fr 1.5fr;
            gap: 35px;
        }

        footer h2 {
            margin-bottom: 8px;
        }

        footer h3 {
            font-size: 15px;
            margin-bottom: 15px;
        }

        footer p,
        footer a {
            color: #d5ebe2;
            font-size: 13px;
            line-height: 2;
            text-decoration: none;
        }

        .newsletter {
            display: flex;
            margin-top: 10px;
        }

        .newsletter input {
            min-width: 0;
            flex: 1;
            padding: 10px;
            border: none;
            outline: none;
        }

        .newsletter button {
            background: var(--green);
            color: white;
            padding: 0 12px;
        }

        .copyright {
            border-top: 1px solid #ffffff22;
            margin-top: 30px;
            padding-top: 18px;
            font-size: 12px;
            color: #b9d7cc;
        }

        /* ================= MODAL ================= */

        .modal {
            display: none;
            position: fixed;
            inset: 0;
            background: #00000080;
            z-index: 3000;
            align-items: center;
            justify-content: center;
        }

        .modal.show {
            display: flex;
        }

        .modal-box {
            background: white;
            width: 90%;
            max-width: 450px;
            border-radius: 12px;
            padding: 25px;
            position: relative;
            animation: popup .2s ease;
        }

        @keyframes popup {
            from {
                transform: scale(.9);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }

        .close {
            position: absolute;
            right: 18px;
            top: 15px;
            font-size: 22px;
            background: none;
        }

        .upload-area {
            border: 2px dashed #a7d8bc;
            padding: 35px;
            text-align: center;
            border-radius: 10px;
            margin-top: 20px;
            background: #f5fcf8;
        }

        .upload-area input {
            margin-top: 15px;
        }

        /* ================= TOAST ================= */

        .toast {
            position: fixed;
            bottom: 25px;
            right: 25px;
            background: #111827;
            color: white;
            padding: 14px 20px;
            border-radius: 7px;
            display: none;
            z-index: 5000;
        }

        .toast.show {
            display: block;
            animation: toast .3s;
        }

        @keyframes toast {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* ================= MOBILE ================= */

        .mobile-menu {
            display: none;
            font-size: 25px;
            background: none;
        }

        @media(max-width: 1000px) {

            header {
                gap: 15px;
            }

            .header-actions {
                gap: 12px;
            }

            .categories {
                grid-template-columns: repeat(4, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .footer-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media(max-width: 700px) {

            .topbar {
                display: none;
            }

            header {
                flex-wrap: wrap;
                padding: 12px 4%;
            }

            .mobile-menu {
                display: block;
            }

            .logo {
                min-width: auto;
                flex: 1;
            }

            .search-box {
                order: 5;
                flex-basis: 100%;
            }

            .header-actions {
                gap: 10px;
            }

            .action span:last-child {
                display: none;
            }

            nav {
                display: none;
            }

            nav.mobile-open {
                display: flex;
                position: fixed;
                top: 67px;
                left: 0;
                right: 0;
                height: auto;
                flex-direction: column;
                align-items: flex-start;
                padding: 15px 5%;
                z-index: 2000;
            }

            .hero {
                padding: 40px 5%;
                min-height: 400px;
            }

            .hero-content {
                width: 100%;
            }

            .hero h2 {
                font-size: 36px;
            }

            .offer-card,
            .hero-art {
                display: none;
            }

            .hero-features {
                gap: 15px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .benefits {
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }

            .benefit {
                border-right: none;
            }

            .promotions {
                grid-template-columns: 1fr;
            }

            .track {
                flex-direction: column;
                align-items: stretch;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width: 450px) {

            .products {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .hero h2 {
                font-size: 31px;
            }
        }
    </style>
</head>

<body>

<!-- ================= TOP BAR ================= -->

<div class="topbar">

    <div class="top-left">
        <span>🛡️ 100% Authentic Medicines</span>
        <span>🚚 Fast Delivery</span>
        <span>↩️ Easy Returns</span>
    </div>

    <div class="top-right">
        <span>Download App</span>
        <span>Help & Support</span>
    </div>

</div>


<!-- ================= HEADER ================= -->

<header>

    <button class="mobile-menu" onclick="toggleMenu()">☰</button>

    <div class="logo">
        <div class="logo-icon">✚</div>
        <div>
            <h1>MediCare</h1>
            <span>Pharmacy</span>
        </div>
    </div>

    <div class="search-box">

        <input
            type="text"
            id="searchInput"
            placeholder="Search for medicines, health products..."
            onkeyup="searchProducts()"
        >

        <button class="search-btn">⌕</button>

    </div>

    <div class="header-actions">

        <div class="action" onclick="openPrescription()">
            <span class="action-icon">⇧</span>
            <span>Prescription</span>
        </div>

        <div class="action" onclick="showToast('Wishlist opened ❤️')">
            <span class="action-icon">
                ♡
                <span class="badge" id="wishCount">0</span>
            </span>
            <span>Wishlist</span>
        </div>

        <div class="action" onclick="showCart()">
            <span class="action-icon">
                🛒
                <span class="badge" id="cartCount">0</span>
            </span>
            <span>Cart</span>
        </div>

        <div class="action">
            <span class="action-icon">👤</span>
            <span>Account</span>
        </div>

    </div>

</header>


<!-- ================= NAVIGATION ================= -->

<nav id="navigation">

    <a href="#" class="category-btn">☰ Categories</a>

    <a href="#" class="active">Home</a>
    <a href="#medicines">Medicines</a>
    <a href="#health">Health Care</a>
    <a href="#baby">Baby Care</a>
    <a href="#personal">Personal Care</a>
    <a href="#wellness">Wellness</a>
    <a href="#offers">Offers</a>
    <a href="#">Lab Tests <b style="color:red">NEW</b></a>
    <a href="#track">Track Order</a>

</nav>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <h2>
            Your Health,<br>
            <span>Our Priority</span>
        </h2>

        <p>
            Order medicines online from India's trusted pharmacy.
        </p>

        <div class="hero-search">

            <input
                id="heroSearch"
                placeholder="Search medicines..."
            >

            <button onclick="heroSearch()">Search</button>

        </div>

        <div class="hero-features">

            <div class="hero-feature">
                🛡️
                <strong>100% Genuine</strong>
                Medicines
            </div>

            <div class="hero-feature">
                🚚
                <strong>On-time</strong>
                Delivery
            </div>

            <div class="hero-feature">
                🔒
                <strong>Secure</strong>
                Payment
            </div>

        </div>

    </div>

    <div class="hero-art">💊</div>

    <div class="offer-card">
        UP TO
        <strong>20%</strong>
        OFF
        <br>
        <button onclick="scrollToProducts()">ORDER NOW</button>
    </div>

</section>


<!-- ================= MAIN ================= -->

<main class="container">


    <!-- CATEGORIES -->

    <section>

        <div class="section-header">
            <h2>Shop by Categories</h2>
            <span class="view-all">View All →</span>
        </div>

        <div class="categories">

            <div class="category" onclick="filterCategory('Pain Relief')">
                <div class="category-icon">💊</div>
                <p>Pain Relief</p>
            </div>

            <div class="category" onclick="filterCategory('Digestive')">
                <div class="category-icon">🫃</div>
                <p>Digestive Care</p>
            </div>

            <div class="category" onclick="filterCategory('Vitamin')">
                <div class="category-icon">🧴</div>
                <p>Vitamins</p>
            </div>

            <div class="category" onclick="filterCategory('Diabetes')">
                <div class="category-icon">🩸</div>
                <p>Diabetes Care</p>
            </div>

            <div class="category" onclick="filterCategory('Heart')">
                <div class="category-icon">❤️</div>
                <p>Heart Care</p>
            </div>

            <div class="category">
                <div class="category-icon">👶</div>
                <p>Baby Care</p>
            </div>

            <div class="category">
                <div class="category-icon">🧴</div>
                <p>Personal Care</p>
            </div>

            <div class="category">
                <div class="category-icon">🩹</div>
                <p>First Aid</p>
            </div>

        </div>

    </section>


    <!-- PRODUCTS -->

    <section id="medicines">

        <div class="section-header">

            <h2>Featured Medicines</h2>

            <span class="view-all">
                View All →
            </span>

        </div>


        <div class="products" id="productList">


            <!-- PRODUCT 1 -->

            <div class="product" data-name="Crocin Advance 650mg" data-category="Pain Relief">

                <span class="discount">20% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    💊
                </div>

                <h3>Crocin Advance 650mg</h3>

                <p>15 Tablets</p>

                <span class="price">₹60</span>
                <span class="old-price">₹75</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Crocin Advance 650mg',60)"
                >
                    🛒 Add to Cart
                </button>

            </div>


            <!-- PRODUCT 2 -->

            <div class="product" data-name="Vicks Vaporub 50ml" data-category="Pain Relief">

                <span class="discount">15% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    🧴
                </div>

                <h3>Vicks Vaporub 50ml</h3>

                <p>50 ml</p>

                <span class="price">₹118</span>
                <span class="old-price">₹139</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Vicks Vaporub 50ml',118)"
                >
                    🛒 Add to Cart
                </button>

            </div>


            <!-- PRODUCT 3 -->

            <div class="product" data-name="Dolo 650mg Tablet" data-category="Pain Relief">

                <span class="discount">10% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    💊
                </div>

                <h3>Dolo 650mg Tablet</h3>

                <p>15 Tablets</p>

                <span class="price">₹27</span>
                <span class="old-price">₹30</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Dolo 650mg Tablet',27)"
                >
                    🛒 Add to Cart
                </button>

            </div>


            <!-- PRODUCT 4 -->

            <div class="product" data-name="Augmentin 625mg" data-category="Antibiotic">

                <span class="discount prescription">
                    Prescription
                </span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    💊
                </div>

                <h3>Augmentin 625mg</h3>

                <p>10 Tablets</p>

                <span class="price">₹134</span>
                <span class="old-price">₹150</span>

                <button
                    class="add-cart"
                    onclick="prescriptionRequired()"
                >
                    🧾 Prescription Required
                </button>

            </div>


            <!-- PRODUCT 5 -->

            <div class="product" data-name="Himalaya Liv 52 DS" data-category="Digestive">

                <span class="discount">10% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    🧴
                </div>

                <h3>Himalaya Liv.52 DS</h3>

                <p>60 Tablets</p>

                <span class="price">₹170</span>
                <span class="old-price">₹190</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Himalaya Liv.52 DS',170)"
                >
                    🛒 Add to Cart
                </button>

            </div>


            <!-- PRODUCT 6 -->

            <div class="product" data-name="Cetirizine 10mg" data-category="Pain Relief">

                <span class="discount">15% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    💊
                </div>

                <h3>Cetirizine 10mg</h3>

                <p>10 Tablets</p>

                <span class="price">₹17</span>
                <span class="old-price">₹20</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Cetirizine 10mg',17)"
                >
                    🛒 Add to Cart
                </button>

            </div>


            <!-- PRODUCT 7 -->

            <div class="product" data-name="Vitamin C Tablets" data-category="Vitamin">

                <span class="discount">12% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    🍊
                </div>

                <h3>Vitamin C Tablets</h3>

                <p>30 Tablets</p>

                <span class="price">₹149</span>
                <span class="old-price">₹170</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Vitamin C Tablets',149)"
                >
                    🛒 Add to Cart
                </button>

            </div>


            <!-- PRODUCT 8 -->

            <div class="product" data-name="Diabetes Care Tablets" data-category="Diabetes">

                <span class="discount">8% OFF</span>

                <button class="wishlist" onclick="toggleWishlist(this)">
                    ♡
                </button>

                <div class="product-image">
                    🩸
                </div>

                <h3>Diabetes Care</h3>

                <p>60 Tablets</p>

                <span class="price">₹220</span>
                <span class="old-price">₹240</span>

                <button
                    class="add-cart"
                    onclick="addToCart('Diabetes Care',220)"
                >
                    🛒 Add to Cart
                </button>

            </div>

        </div>

    </section>


    <!-- BENEFITS -->

    <section>

        <div class="benefits">

            <div class="benefit">
                <div class="benefit-icon">🚚</div>
                <strong>Free Delivery</strong>
                <span>Orders above ₹499</span>
            </div>

            <div class="benefit">
                <div class="benefit-icon">⚡</div>
                <strong>Express Delivery</strong>
                <span>24–48 hours</span>
            </div>

            <div class="benefit">
                <div class="benefit-icon">↩️</div>
                <strong>Easy Returns</strong>
                <span>10 days return policy</span>
            </div>

            <div class="benefit">
                <div class="benefit-icon">💳</div>
                <strong>Secure Payment</strong>
                <span>100% secure payments</span>
            </div>

            <div class="benefit">
                <div class="benefit-icon">👨‍⚕️</div>
                <strong>Pharmacy Expert</strong>
                <span>24/7 expert support</span>
            </div>

        </div>

    </section>


    <!-- PROMOTIONS -->

    <section id="offers">

        <div class="promotions">

            <div class="promo">

                <h3>Upload Prescription</h3>

                <p>
                    Upload your prescription and get medicines
                    at great prices.
                </p>

                <button onclick="openPrescription()">
                    Upload Now
                </button>

            </div>


            <div class="promo">

                <h3>Health Checkup</h3>

                <p>
                    Book health tests and checkups from home.
                </p>

                <button onclick="showToast('Health checkup booking opened')">
                    Book Now
                </button>

            </div>


            <div class="promo" id="baby">

                <h3>Care for Your Baby</h3>

                <p>
                    Explore our range of baby care products.
                </p>

                <button onclick="showToast('Baby Care products opened')">
                    Shop Now
                </button>

            </div>

        </div>

    </section>


    <!-- TRACK ORDER -->

    <section id="track">

        <div class="track">

            <h3>📦 Track Your Order</h3>

            <div class="track-form">

                <input
                    id="orderId"
                    placeholder="Enter Order ID e.g. MED12345"
                >

                <button onclick="trackOrder()">
                    Track Order
                </button>

            </div>

        </div>

        <div id="trackResult">
            ✅ Order found! Your order is currently <strong>Out for Delivery</strong>.
        </div>

    </section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="footer-grid">

        <div>

            <h2>✚ MediCare</h2>

            <p>
                India's trusted online pharmacy delivering
                genuine medicines to your doorstep.
            </p>

            <br>

            <p>● Facebook &nbsp; ● Instagram &nbsp; ● YouTube</p>

        </div>


        <div>

            <h3>Company</h3>

            <a href="#">About Us</a><br>
            <a href="#">Careers</a><br>
            <a href="#">Blog</a><br>
            <a href="#">Contact Us</a><br>
            <a href="#">Terms & Conditions</a>

        </div>


        <div>

            <h3>Help</h3>

            <a href="#">FAQs</a><br>
            <a href="#">Shipping Policy</a><br>
            <a href="#">Return Policy</a><br>
            <a href="#">Privacy Policy</a><br>
            <a href="#">Sitemap</a>

        </div>


        <div>

            <h3>Categories</h3>

            <a href="#">All Medicines</a><br>
            <a href="#">Health Care</a><br>
            <a href="#">Personal Care</a><br>
            <a href="#">Baby Care</a><br>
            <a href="#">Lab Tests</a>

        </div>


        <div>

            <h3>Subscribe to our newsletter</h3>

            <p>
                Get regular updates about health,
                offers & more.
            </p>

            <div class="newsletter">

                <input
                    id="email"
                    type="email"
                    placeholder="Enter your email"
                >

                <button onclick="subscribe()">
                    Subscribe
                </button>

            </div>

        </div>

    </div>


    <div class="copyright">
        © 2026 MediCare Pharmacy. All rights reserved.
    </div>

</footer>


<!-- ================= PRESCRIPTION MODAL ================= -->

<div class="modal" id="prescriptionModal">

    <div class="modal-box">

        <button class="close" onclick="closePrescription()">
            ×
        </button>

        <h2>Upload Prescription</h2>

        <p style="margin-top:8px;color:#6b7280;font-size:14px;">
            Upload a valid prescription from your doctor.
        </p>

        <div class="upload-area">

            <div style="font-size:45px;">📄</div>

            <strong>
                Upload Prescription
            </strong>

            <p style="margin-top:8px;font-size:13px;color:#6b7280;">
                JPG, PNG or PDF
            </p>

            <input
                type="file"
                id="prescriptionFile"
                accept=".jpg,.jpeg,.png,.pdf"
                onchange="fileSelected()"
            >

        </div>

        <button
            class="add-cart"
            onclick="uploadPrescription()"
        >
            Upload Prescription
        </button>

    </div>

</div>


<!-- ================= CART MODAL ================= -->

<div class="modal" id="cartModal">

    <div class="modal-box">

        <button class="close" onclick="closeCart()">
            ×
        </button>

        <h2>🛒 Your Cart</h2>

        <div id="cartItems" style="margin-top:20px;"></div>

        <hr style="margin:20px 0;border:0;border-top:1px solid #ddd;">

        <h3>
            Total:
            <span id="cartTotal">₹0</span>
        </h3>

        <button
            class="add-cart"
            onclick="checkout()"
        >
            Proceed to Checkout
        </button>

    </div>

</div>


<!-- TOAST -->

<div class="toast" id="toast"></div>


<script>

    /* ================= VARIABLES ================= */

    let cart = [];
    let wishlistCount = 0;


    /* ================= SEARCH ================= */

    function searchProducts() {

        const query =
            document.getElementById("searchInput")
            .value
            .toLowerCase();

        const products =
            document.querySelectorAll(".product");

        products.forEach(product => {

            const name =
                product.dataset.name.toLowerCase();

            if (name.includes(query)) {
                product.style.display = "";
            } else {
                product.style.display = "none";
            }

        });

    }


    function heroSearch() {

        const query =
            document.getElementById("heroSearch").value;

        document.getElementById("searchInput").value = query;

        searchProducts();

        document
            .getElementById("medicines")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* ================= CATEGORY FILTER ================= */

    function filterCategory(category) {

        const products =
            document.querySelectorAll(".product");

        products.forEach(product => {

            if (product.dataset.category === category) {
                product.style.display = "";
            } else {
                product.style.display = "none";
            }

        });

        document
            .getElementById("medicines")
            .scrollIntoView({
                behavior: "smooth"
            });

        showToast(category + " products displayed");

    }


    /* ================= CART ================= */

    function addToCart(name, price) {

        const existing =
            cart.find(item => item.name === name);

        if (existing) {
            existing.quantity++;
        } else {
            cart.push({
                name: name,
                price: price,
                quantity: 1
            });
        }

        updateCart();

        showToast(name + " added to cart 🛒");

    }


    function updateCart() {

        const count =
            cart.reduce(
                (total, item) =>
                    total + item.quantity,
                0
            );

        document.getElementById("cartCount")
            .textContent = count;

    }


    function showCart() {

        const modal =
            document.getElementById("cartModal");

        const container =
            document.getElementById("cartItems");

        if (cart.length === 0) {

            container.innerHTML = `
                <p style="text-align:center;color:#6b7280;">
                    Your cart is empty.
                </p>
            `;

            document.getElementById("cartTotal")
                .textContent = "₹0";

            modal.classList.add("show");

            return;
        }


        let html = "";
        let total = 0;

        cart.forEach((item, index) => {

            const itemTotal =
                item.price * item.quantity;

            total += itemTotal;

            html += `

                <div style="
                    display:flex;
                    justify-content:space-between;
                    align-items:center;
                    margin-bottom:15px;
                    padding-bottom:15px;
                    border-bottom:1px solid #eee;
                ">

                    <div>
                        <strong>${item.name}</strong>

                        <div style="
                            font-size:13px;
                            color:#6b7280;
                            margin-top:5px;
                        ">
                            ₹${item.price} × ${item.quantity}
                        </div>
                    </div>

                    <div>
                        <strong>₹${itemTotal}</strong>

                        <button
                            onclick="removeCart(${index})"
                            style="
                                display:block;
                                margin-top:5px;
                                color:#ef4444;
                                background:none;
                                font-size:12px;
                            "
                        >
                            Remove
                        </button>

                    </div>

                </div>

            `;

        });


        container.innerHTML = html;

        document.getElementById("cartTotal")
            .textContent = "₹" + total;

        modal.classList.add("show");

    }


    function removeCart(index) {

        cart.splice(index, 1);

        updateCart();

        showCart();

    }


    function closeCart() {

        document
            .getElementById("cartModal")
            .classList.remove("show");

    }


    function checkout() {

        if (cart.length === 0) {

            showToast("Your cart is empty");

            return;

        }

        closeCart();

        showToast(
            "Checkout started. Please login to continue."
        );

    }


    /* ================= WISHLIST ================= */

    function toggleWishlist(button) {

        button.classList.toggle("active");

        if (button.classList.contains("active")) {

            button.textContent = "♥";

            wishlistCount++;

        } else {

            button.textContent = "♡";

            wishlistCount--;

        }

        document.getElementById("wishCount")
            .textContent = wishlistCount;

    }


    /* ================= PRESCRIPTION ================= */

    function openPrescription() {

        document
            .getElementById("prescriptionModal")
            .classList.add("show");

    }


    function closePrescription() {

        document
            .getElementById("prescriptionModal")
            .classList.remove("show");

    }


    function fileSelected() {

        const file =
            document.getElementById("prescriptionFile")
            .files[0];

        if (file) {

            showToast(
                file.name + " selected"
            );

        }

    }


    function uploadPrescription() {

        const file =
            document.getElementById("prescriptionFile")
            .files[0];

        if (!file) {

            showToast(
                "Please select a prescription first."
            );

            return;

        }

        closePrescription();

        showToast(
            "Prescription uploaded successfully ✅"
        );

    }


    function prescriptionRequired() {

        showToast(
            "This medicine requires a valid prescription."
        );

    }


    /* ================= ORDER TRACKING ================= */

    function trackOrder() {

        const order =
            document.getElementById("orderId").value.trim();

        if (!order) {

            showToast(
                "Please enter your Order ID."
            );

            return;

        }

        document
            .getElementById("trackResult")
            .style.display = "block";

    }


    /* ================= NEWSLETTER ================= */

    function subscribe() {

        const email =
            document.getElementById("email").value;

        if (!email || !email.includes("@")) {

            showToast(
                "Please enter a valid email."
            );

            return;

        }

        document.getElementById("email").value = "";

        showToast(
            "Subscribed successfully 🎉"
        );

    }


    /* ================= TOAST ================= */

    function showToast(message) {

        const toast =
            document.getElementById("toast");

        toast.textContent = message;

        toast.classList.add("show");

        setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

    }


    /* ================= MOBILE MENU ================= */

    function toggleMenu() {

        document
            .getElementById("navigation")
            .classList.toggle("mobile-open");

    }


    /* ================= SCROLL ================= */

    function scrollToProducts() {

        document
            .getElementById("medicines")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* ================= CLOSE MODAL ON OUTSIDE CLICK ================= */

    window.onclick = function(event) {

        const prescription =
            document.getElementById("prescriptionModal");

        const cartModal =
            document.getElementById("cartModal");

        if (event.target === prescription) {
            closePrescription();
        }

        if (event.target === cartModal) {
            closeCart();
        }

    };

</script>

</body>
</html>
