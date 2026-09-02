<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CineBook - Movie Booking</title>

    <link rel="stylesheet"
          href="style.css">
</head>

<body>

<!-- ================= NAVBAR ================= -->

<header class="navbar">

    <div class="logo">
        🎬 Cine<span>Book</span>
    </div>

    <div class="location">
        📍
        <select id="city">
            <option>Hyderabad</option>
            <option>Bangalore</option>
            <option>Chennai</option>
            <option>Mumbai</option>
            <option>Delhi</option>
        </select>
    </div>

    <div class="search-box">
        <input
            type="text"
            id="searchMovie"
            placeholder="Search for movies...">

        <button onclick="searchMovies()">🔍</button>
    </div>

    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#movies">Movies</a>
        <a href="#bookings">My Bookings</a>

        <button class="login-btn">
            Login
        </button>
    </div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <p class="small-title">
            EXPERIENCE CINEMA LIKE NEVER BEFORE
        </p>

        <h1>
            Book Your
            <span>Movie Experience</span>
        </h1>

        <p>
            Discover the latest movies, choose your
            favorite seats and enjoy the show.
        </p>

        <button
            class="primary-btn"
            onclick="scrollToMovies()">

            🎟️ Book Tickets

        </button>

    </div>

</section>


<!-- ================= MOVIES ================= -->

<section class="movies-section" id="movies">

    <div class="section-header">

        <div>
            <p class="section-label">
                NOW SHOWING
            </p>

            <h2>
                Popular Movies
            </h2>
        </div>

        <select id="languageFilter"
                onchange="filterMovies()">

            <option value="all">
                All Languages
            </option>

            <option value="telugu">
                Telugu
            </option>

            <option value="hindi">
                Hindi
            </option>

            <option value="english">
                English
            </option>

        </select>

    </div>


    <div class="movie-container"
         id="movieContainer">


        <!-- MOVIE 1 -->

        <div class="movie-card"
             data-language="telugu"
             data-title="Devara">

            <div class="poster">

                <div class="poster-content">
                    <span>🔥</span>
                    <h3>DEVARA</h3>
                    <p>PART 1</p>
                </div>

                <span class="rating">
                    ⭐ 8.2
                </span>

            </div>

            <div class="movie-info">

                <h3>Devara: Part 1</h3>

                <p>
                    Telugu • Action • Drama
                </p>

                <button
                    onclick="openBooking('Devara: Part 1')">

                    Book Now

                </button>

            </div>

        </div>


        <!-- MOVIE 2 -->

        <div class="movie-card"
             data-language="english"
             data-title="Avengers">

            <div class="poster poster2">

                <div class="poster-content">
                    <span>⚡</span>
                    <h3>AVENGERS</h3>
                    <p>DOOMSDAY</p>
                </div>

                <span class="rating">
                    ⭐ 9.0
                </span>

            </div>

            <div class="movie-info">

                <h3>Avengers: Doomsday</h3>

                <p>
                    English • Action • Sci-Fi
                </p>

                <button
                    onclick="openBooking('Avengers: Doomsday')">

                    Book Now

                </button>

            </div>

        </div>


        <!-- MOVIE 3 -->

        <div class="movie-card"
             data-language="hindi"
             data-title="War">

            <div class="poster poster3">

                <div class="poster-content">
                    <span>💥</span>
                    <h3>WAR</h3>
                    <p>2</p>
                </div>

                <span class="rating">
                    ⭐ 8.4
                </span>

            </div>

            <div class="movie-info">

                <h3>War 2</h3>

                <p>
                    Hindi • Action • Thriller
                </p>

                <button
                    onclick="openBooking('War 2')">

                    Book Now

                </button>

            </div>

        </div>


        <!-- MOVIE 4 -->

        <div class="movie-card"
             data-language="telugu"
             data-title="Pushpa">

            <div class="poster poster4">

                <div class="poster-content">
                    <span>🌲</span>
                    <h3>PUSHPA</h3>
                    <p>THE RULE</p>
                </div>

                <span class="rating">
                    ⭐ 8.8
                </span>

            </div>

            <div class="movie-info">

                <h3>Pushpa 2</h3>

                <p>
                    Telugu • Action • Drama
                </p>

                <button
                    onclick="openBooking('Pushpa 2')">

                    Book Now

                </button>

            </div>

        </div>

    </div>

</section>


<!-- ================= BOOKING MODAL ================= -->

<div id="bookingModal"
     class="modal">

    <div class="booking-box">

        <button
            class="close-btn"
            onclick="closeBooking()">

            ✕

        </button>

        <h2 id="selectedMovie">
            Movie
        </h2>

        <p class="booking-subtitle">
            Select theatre, showtime and seats
        </p>


        <!-- THEATRE -->

        <label>
            Theatre
        </label>

        <select id="theatre">

            <option>
                PVR Cinemas - Banjara Hills
            </option>

            <option>
                AMB Cinemas - Gachibowli
            </option>

            <option>
                INOX - GVK One
            </option>

        </select>


        <!-- DATE -->

        <label>
            Date
        </label>

        <input
            type="date"
            id="showDate">


        <!-- SHOW TIME -->

        <label>
            Showtime
        </label>

        <div class="showtimes">

            <button onclick="selectTime(this)">
                10:00 AM
            </button>

            <button onclick="selectTime(this)">
                01:30 PM
            </button>

            <button onclick="selectTime(this)">
                06:30 PM
            </button>

            <button onclick="selectTime(this)">
                09:30 PM
            </button>

        </div>


        <!-- SEATS -->

        <label>
            Select Seats
        </label>

        <div class="screen">
            SCREEN
        </div>

        <div class="seats"
             id="seats">

        </div>


        <!-- SUMMARY -->

        <div class="booking-summary">

            <div>
                <span>Selected Seats</span>
                <strong id="seatCount">
                    0
                </strong>
            </div>

            <div>
                <span>Total Amount</span>

                <strong>
                    ₹<span id="totalPrice">
                        0
                    </span>
                </strong>

            </div>

        </div>


        <button
            class="confirm-btn"
            onclick="confirmBooking()">

            Confirm Booking

        </button>

    </div>

</div>


<!-- ================= SUCCESS ================= -->

<div id="successModal"
     class="modal">

    <div class="success-box">

        <div class="success-icon">
            ✓
        </div>

        <h2>
            Booking Confirmed!
        </h2>

        <p>
            Your movie tickets have been booked successfully.
        </p>

        <div id="ticketDetails"
             class="ticket-details">
        </div>

        <button
            onclick="closeSuccess()"
            class="confirm-btn">

            Done

        </button>

    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="logo">
        🎬 Cine<span>Book</span>
    </div>

    <p>
        Your one-stop destination for movie tickets.
    </p>

    <p class="copyright">
        © 2026 CineBook. All rights reserved.
    </p>

</footer>


<script src="script.js"></script>

</body>
</html>
