* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #0f0f14;
    color: white;
}


/* ================= NAVBAR ================= */

.navbar {
    height: 75px;
    display: flex;
    align-items: center;
    padding: 0 7%;
    gap: 30px;
    background: #15151d;
    position: sticky;
    top: 0;
    z-index: 100;
}

.logo {
    font-size: 25px;
    font-weight: bold;
    white-space: nowrap;
}

.logo span {
    color: #ff3158;
}

.location select {
    background: transparent;
    border: none;
    color: white;
    font-size: 14px;
}

.location option {
    color: black;
}

.search-box {
    display: flex;
    flex: 1;
    max-width: 420px;
}

.search-box input {
    width: 100%;
    padding: 12px 15px;
    border: none;
    outline: none;
    background: #25252f;
    color: white;
    border-radius: 8px 0 0 8px;
}

.search-box button {
    width: 50px;
    border: none;
    background: #ff3158;
    color: white;
    border-radius: 0 8px 8px 0;
    cursor: pointer;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 22px;
    margin-left: auto;
}

.nav-links a {
    text-decoration: none;
    color: #ddd;
}

.login-btn {
    border: 1px solid #ff3158;
    background: transparent;
    color: white;
    padding: 9px 18px;
    border-radius: 6px;
}


/* ================= HERO ================= */

.hero {
    min-height: 500px;
    display: flex;
    align-items: center;
    padding: 70px 10%;

    background:
        linear-gradient(
            90deg,
            #0f0f14 15%,
            rgba(15,15,20,.8),
            rgba(15,15,20,.2)
        ),
        linear-gradient(
            135deg,
            #401025,
            #17172a,
            #09090d
        );
}

.hero-content {
    max-width: 650px;
}

.small-title,
.section-label {
    color: #ff3158;
    font-size: 13px;
    font-weight: bold;
    letter-spacing: 2px;
}

.hero h1 {
    font-size: 58px;
    line-height: 1.1;
    margin: 15px 0;
}

.hero h1 span {
    color: #ff3158;
}

.hero p {
    color: #bbb;
    line-height: 1.7;
    margin-bottom: 25px;
}

.primary-btn,
.confirm-btn {
    border: none;
    background: #ff3158;
    color: white;
    padding: 14px 25px;
    border-radius: 7px;
    cursor: pointer;
    font-size: 15px;
    font-weight: bold;
}

.primary-btn:hover,
.confirm-btn:hover {
    opacity: .85;
}


/* ================= MOVIES ================= */

.movies-section {
    padding: 70px 7%;
}

.section-header {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 30px;
}

.section-header h2 {
    font-size: 32px;
    margin-top: 8px;
}

.section-header select {
    padding: 10px 20px;
    background: #22222b;
    border: 1px solid #33333d;
    color: white;
    border-radius: 6px;
}

.movie-container {
    display: grid;
    grid-template-columns:
        repeat(auto-fit, minmax(220px, 1fr));

    gap: 25px;
}

.movie-card {
    background: #191921;
    border-radius: 12px;
    overflow: hidden;
    transition: .3s;
}

.movie-card:hover {
    transform: translateY(-7px);
}

.poster {
    height: 300px;

    display: flex;
    align-items: center;
    justify-content: center;

    position: relative;

    background:
        linear-gradient(
            135deg,
            #7d142b,
            #24121c,
            #0d0d12
        );
}

.poster2 {
    background:
        linear-gradient(
            135deg,
            #182d54,
            #11111d,
            #050507
        );
}

.poster3 {
    background:
        linear-gradient(
            135deg,
            #8a5a14,
            #291b0c,
            #090909
        );
}

.poster4 {
    background:
        linear-gradient(
            135deg,
            #15472a,
            #172119,
            #080b09
        );
}

.poster-content {
    text-align: center;
}

.poster-content span {
    font-size: 55px;
}

.poster-content h3 {
    font-size: 27px;
    margin-top: 15px;
}

.poster-content p {
    color: #ddd;
    letter-spacing: 4px;
    margin-top: 5px;
}

.rating {
    position: absolute;
    right: 12px;
    top: 12px;

    background: #111;
    padding: 6px 9px;
    border-radius: 5px;

    font-size: 12px;
}

.movie-info {
    padding: 18px;
}

.movie-info h3 {
    font-size: 18px;
}

.movie-info p {
    color: #999;
    font-size: 13px;
    margin: 8px 0 15px;
}

.movie-info button {
    width: 100%;
    padding: 10px;

    border: none;
    border-radius: 5px;

    background: #ff3158;
    color: white;

    cursor: pointer;
}


/* ================= MODAL ================= */

.modal {
    display: none;

    position: fixed;
    inset: 0;

    background: rgba(0,0,0,.8);

    justify-content: center;
    align-items: center;

    z-index: 500;

    padding: 20px;
}

.booking-box,
.success-box {
    width: 100%;
    max-width: 550px;

    max-height: 90vh;
    overflow-y: auto;

    background: #191921;

    border-radius: 15px;

    padding: 30px;

    position: relative;
}

.close-btn {
    position: absolute;
    right: 20px;
    top: 15px;

    background: none;
    border: none;

    color: white;
    font-size: 25px;

    cursor: pointer;
}

.booking-box h2 {
    font-size: 28px;
}

.booking-subtitle {
    color: #999;
    margin: 5px 0 25px;
}

.booking-box label {
    display: block;
    margin: 18px 0 8px;
    color: #ccc;
    font-size: 14px;
}

.booking-box select,
.booking-box input {
    width: 100%;
    padding: 12px;

    background: #25252f;

    border: 1px solid #33333d;

    border-radius: 6px;

    color: white;
}


/* ================= SHOWTIME ================= */

.showtimes {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.showtimes button {
    padding: 9px 14px;

    background: #25252f;

    color: white;

    border: 1px solid #444;

    border-radius: 6px;

    cursor: pointer;
}

.showtimes button.active {
    background: #ff3158;
    border-color: #ff3158;
}


/* ================= SEATS ================= */

.screen {
    width: 70%;

    margin: 20px auto;

    padding: 8px;

    text-align: center;

    background: #eee;

    color: #111;

    border-radius: 50% 50% 5px 5px;

    font-size: 11px;
}

.seats {
    display: grid;

    grid-template-columns:
        repeat(8, 1fr);

    gap: 8px;

    max-width: 400px;

    margin: auto;
}

.seat {
    height: 30px;

    background: #292934;

    border: 1px solid #555;

    border-radius: 5px;

    cursor: pointer;

    font-size: 10px;

    display: flex;

    align-items: center;

    justify-content: center;
}

.seat.selected {
    background: #ff3158;
    border-color: #ff3158;
}

.seat.booked {
    background: #555;
    opacity: .4;
    cursor: not-allowed;
}


/* ================= SUMMARY ================= */

.booking-summary {
    margin-top: 25px;

    padding: 18px;

    background: #24242e;

    border-radius: 8px;
}

.booking-summary div {
    display: flex;

    justify-content: space-between;

    margin: 8px 0;
}

.booking-summary strong {
    color: #ff3158;
}

.confirm-btn {
    width: 100%;
    margin-top: 20px;
}


/* ================= SUCCESS ================= */

.success-box {
    text-align: center;
    max-width: 420px;
}

.success-icon {
    width: 70px;
    height: 70px;

    margin: auto auto 20px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 50%;

    background: #20a35a;

    font-size: 35px;
}

.success-box p {
    color: #aaa;
    margin: 10px 0 20px;
}

.ticket-details {
    background: #24242e;

    padding: 15px;

    text-align: left;

    border-radius: 7px;

    line-height: 1.8;
}


/* ================= FOOTER ================= */

footer {
    padding: 50px 7%;

    background: #15151d;

    text-align: center;
}

footer p {
    color: #888;

    margin-top: 10px;
}

.copyright {
    margin-top: 25px;
    font-size: 12px;
}


/* ================= MOBILE ================= */

@media(max-width: 900px) {

    .navbar {
        padding: 15px;
        height: auto;
        flex-wrap: wrap;
    }

    .nav-links {
        width: 100%;
        justify-content: center;
    }

    .location {
        display: none;
    }

    .search-box {
        order: 3;
        max-width: none;
        width: 100%;
    }

    .hero {
        padding: 60px 7%;
    }

    .hero h1 {
        font-size: 42px;
    }
}

@media(max-width: 500px) {

    .nav-links a {
        display: none;
    }

    .movie-container {
        grid-template-columns: 1fr 1fr;
    }

    .poster {
        height: 220px;
    }

    .poster-content h3 {
        font-size: 19px;
    }

    .poster-content span {
        font-size: 35px;
    }

    .movies-section {
        padding: 50px 4%;
    }
}
