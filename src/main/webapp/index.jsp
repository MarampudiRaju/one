```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopEase - Online Shopping</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f6f8;
            color: #222;
        }

        /* Navbar */
        header {
            background: #111827;
            color: white;
            padding: 15px 6%;
            display: flex;
            align-items: center;
            gap: 30px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
            color: #38bdf8;
            white-space: nowrap;
        }

        .search {
            flex: 1;
            display: flex;
            max-width: 650px;
        }

        .search input {
            width: 100%;
            padding: 12px 15px;
            border: none;
            outline: none;
            border-radius: 7px 0 0 7px;
            font-size: 15px;
        }

        .search button {
            border: none;
            background: #38bdf8;
            padding: 0 20px;
            border-radius: 0 7px 7px 0;
            cursor: pointer;
            font-size: 18px;
        }

        .nav-links {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .nav-links span {
            cursor: pointer;
        }

        .cart {
            font-weight: bold;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            margin: 25px 6%;
            background: linear-gradient(135deg, #2563eb, #7c3aed);
            border-radius: 18px;
            color: white;
            padding: 55px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            overflow: hidden;
        }

        .hero h1 {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 25px;
        }

        .hero button {
            background: white;
            color: #2563eb;
            border: none;
            padding: 13px 25px;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
        }

        .hero-icon {
            font-size: 130px;
        }

        /* Categories */
        .section {
            margin: 35px 6%;
        }

        .section h2 {
            margin-bottom: 20px;
        }

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category {
            background: white;
            padding: 22px;
            text-align: center;
            border-radius: 12px;
            cursor: pointer;
            transition: 0.3s;
        }

        .category:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }

        .category-icon {
            font-size: 35px;
            margin-bottom: 10px;
        }

        /* Products */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            background: white;
            border-radius: 14px;
            overflow: hidden;
            transition: 0.3s;
            position: relative;
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.12);
        }

        .product-image {
            height: 210px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #eef2ff;
            font-size: 80px;
        }

        .product-info {
            padding: 17px;
        }

        .product-info h3 {
            margin-bottom: 8px;
        }

        .rating {
            color: #f59e0b;
            margin-bottom: 10px;
        }

        .price {
            font-size: 21px;
            font-weight: bold;
        }

        .old-price {
            color: #999;
            text-decoration: line-through;
            margin-left: 8px;
            font-size: 14px;
        }

        .add-cart {
            width: 100%;
            margin-top: 13px;
            padding: 11px;
            border: none;
            border-radius: 7px;
            background: #111827;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .add-cart:hover {
            background: #2563eb;
        }

        /* Deal Banner */
        .deal {
            margin: 40px 6%;
            padding: 35px;
            border-radius: 15px;
            background: #f97316;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .deal h2 {
            font-size: 30px;
        }

        .deal button {
            padding: 12px 25px;
            border: none;
            border-radius: 7px;
            cursor: pointer;
            font-weight: bold;
        }

        /* Footer */
        footer {
            background: #111827;
            color: white;
            padding: 45px 6%;
            margin-top: 50px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }

        footer h3 {
            margin-bottom: 15px;
        }

        footer p {
            color: #cbd5e1;
            margin-bottom: 8px;
        }

        .copyright {
            text-align: center;
            margin-top: 35px;
            padding-top: 20px;
            border-top: 1px solid #374151;
            color: #94a3b8;
        }

        /* Responsive */
        @media (max-width: 900px) {
            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .hero-icon {
                display: none;
            }
        }

        @media (max-width: 600px) {
            header {
                flex-wrap: wrap;
            }

            .search {
                order: 3;
                flex-basis: 100%;
            }

            .nav-links {
                margin-left: auto;
            }

            .hero {
                padding: 30px;
            }

            .hero h1 {
                font-size: 32px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="logo">🛍️ ShopEase</div>

    <div class="search">
        <input id="searchInput" type="text" placeholder="Search for products...">
        <button onclick="searchProducts()">🔍</button>
    </div>

    <div class="nav-links">
        <span>👤 Account</span>
        <span>❤️</span>
        <span class="cart">🛒 Cart (<span id="cartCount">0</span>)</span>
    </div>
</header>


<!-- Hero Section -->
<section class="hero">
    <div>
        <h1>Big Deals. Better Shopping.</h1>
        <p>Discover amazing products at unbeatable prices.</p>
        <button onclick="scrollToProducts()">Shop Now →</button>
    </div>

    <div class="hero-icon">🛒</div>
</section>


<!-- Categories -->
<section class="section">
    <h2>Shop by Category</h2>

    <div class="categories">

        <div class="category">
            <div class="category-icon">📱</div>
            <b>Electronics</b>
        </div>

        <div class="category">
            <div class="category-icon">👕</div>
            <b>Fashion</b>
        </div>

        <div class="category">
            <div class="category-icon">💻</div>
            <b>Laptops</b>
        </div>

        <div class="category">
            <div class="category-icon">🏠</div>
            <b>Home</b>
        </div>

        <div class="category">
            <div class="category-icon">🎮</div>
            <b>Gaming</b>
        </div>

        <div class="category">
            <div class="category-icon">⌚</div>
            <b>Watches</b>
        </div>

    </div>
</section>


<!-- Products -->
<section class="section" id="productsSection">

    <h2>🔥 Trending Products</h2>

    <div class="products" id="productList">

        <div class="product" data-name="Smartphone">
            <div class="product-image">📱</div>

            <div class="product-info">
                <h3>Pro Smartphone</h3>
                <div class="rating">★★★★★</div>

                <span class="price">₹29,999</span>
                <span class="old-price">₹34,999</span>

                <button class="add-cart" onclick="addToCart()">
                    Add to Cart
                </button>
            </div>
        </div>


        <div class="product" data-name="Laptop">
            <div class="product-image">💻</div>

            <div class="product-info">
                <h3>Ultra Laptop</h3>
                <div class="rating">★★★★☆</div>

                <span class="price">₹59,999</span>
                <span class="old-price">₹69,999</span>

                <button class="add-cart" onclick="addToCart()">
                    Add to Cart
                </button>
            </div>
        </div>


        <div class="product" data-name="Headphones">
            <div class="product-image">🎧</div>

            <div class="product-info">
                <h3>Wireless Headphones</h3>
                <div class="rating">★★★★★</div>

                <span class="price">₹2,499</span>
                <span class="old-price">₹3,999</span>

                <button class="add-cart" onclick="addToCart()">
                    Add to Cart
                </button>
            </div>
        </div>


        <div class="product" data-name="Smart Watch">
            <div class="product-image">⌚</div>

            <div class="product-info">
                <h3>Smart Watch Pro</h3>
                <div class="rating">★★★★☆</div>

                <span class="price">₹3,999</span>
                <span class="old-price">₹5,999</span>

                <button class="add-cart" onclick="addToCart()">
                    Add to Cart
                </button>
            </div>
        </div>

    </div>
</section>


<!-- Deal -->
<section class="deal">
    <div>
        <h2>⚡ Flash Sale!</h2>
        <p>Up to 70% OFF on selected products</p>
    </div>

    <button onclick="scrollToProducts()">View Deals</button>
</section>


<!-- Footer -->
<footer>

    <div class="footer-grid">

        <div>
            <h3>ShopEase</h3>
            <p>Your one-stop destination for online shopping.</p>
        </div>

        <div>
            <h3>Customer Service</h3>
            <p>Contact Us</p>
            <p>Returns</p>
            <p>Shipping</p>
        </div>

        <div>
            <h3>Company</h3>
            <p>About Us</p>
            <p>Careers</p>
            <p>Privacy Policy</p>
        </div>

        <div>
            <h3>Follow Us</h3>
            <p>Facebook</p>
            <p>Instagram</p>
            <p>YouTube</p>
        </div>

    </div>

    <div class="copyright">
        © 2026 ShopEase. All rights reserved.
    </div>

</footer>


<script>

    let cartCount = 0;

    function addToCart() {
        cartCount++;

        document.getElementById("cartCount").innerText = cartCount;

        alert("Product added to cart! 🛒");
    }

    function scrollToProducts() {
        document.getElementById("productsSection")
            .scrollIntoView({
                behavior: "smooth"
            });
    }

    function searchProducts() {

        let search =
            document.getElementById("searchInput")
            .value
            .toLowerCase();

        let products =
            document.querySelectorAll(".product");

        products.forEach(product => {

            let name =
                product.dataset.name.toLowerCase();

            if (name.includes(search)) {
                product.style.display = "block";
            } else {
                product.style.display = "none";
            }

        });
    }

</script>

</body>
</html>
```
