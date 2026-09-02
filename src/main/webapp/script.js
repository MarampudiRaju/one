// ============================================
// GLOBAL VARIABLES
// ============================================

let selectedMovie = "";
let selectedTime = "";
let selectedSeats = [];

const ticketPrice = 200;


// ============================================
// OPEN BOOKING
// ============================================

function openBooking(movie) {

    selectedMovie = movie;

    selectedSeats = [];

    selectedTime = "";

    document.getElementById("selectedMovie").innerText = movie;

    document.getElementById("bookingModal").style.display = "flex";

    generateSeats();

    updateSummary();
}


// ============================================
// CLOSE BOOKING
// ============================================

function closeBooking() {

    document.getElementById("bookingModal").style.display = "none";
}


// ============================================
// GENERATE SEATS
// ============================================

function generateSeats() {

    const seatsContainer =
        document.getElementById("seats");

    seatsContainer.innerHTML = "";

    const totalSeats = 40;

    for (let i = 1; i <= totalSeats; i++) {

        const seat = document.createElement("div");

        seat.classList.add("seat");

        seat.innerText = i;

        // Random booked seats
        if ([4, 8, 15, 21, 29, 35].includes(i)) {

            seat.classList.add("booked");

        } else {

            seat.addEventListener(
                "click",
                function () {

                    toggleSeat(i, seat);

                }
            );
        }

        seatsContainer.appendChild(seat);
    }
}


// ============================================
// SELECT / DESELECT SEAT
// ============================================

function toggleSeat(number, seatElement) {

    if (selectedSeats.includes(number)) {

        selectedSeats =
            selectedSeats.filter(
                seat => seat !== number
            );

        seatElement.classList.remove("selected");

    } else {

        selectedSeats.push(number);

        seatElement.classList.add("selected");
    }

    updateSummary();
}


// ============================================
// UPDATE PRICE
// ============================================

function updateSummary() {

    document.getElementById("seatCount")
        .innerText = selectedSeats.length;

    const total =
        selectedSeats.length * ticketPrice;

    document.getElementById("totalPrice")
        .innerText = total;
}


// ============================================
// SELECT SHOW TIME
// ============================================

function selectTime(button) {

    document
        .querySelectorAll(".showtimes button")
        .forEach(btn => {

            btn.classList.remove("active");

        });

    button.classList.add("active");

    selectedTime = button.innerText;
}


// ============================================
// CONFIRM BOOKING
// ============================================

function confirmBooking() {

    const date =
        document.getElementById("showDate").value;

    const theatre =
        document.getElementById("theatre").value;


    if (!date) {

        alert("Please select a date.");

        return;
    }


    if (!selectedTime) {

        alert("Please select a showtime.");

        return;
    }


    if (selectedSeats.length === 0) {

        alert("Please select at least one seat.");

        return;
    }


    const total =
        selectedSeats.length * ticketPrice;


    document.getElementById("ticketDetails")
        .innerHTML = `

        <strong>Movie:</strong>
        ${selectedMovie}
        <br>

        <strong>Theatre:</strong>
        ${theatre}
        <br>

        <strong>Date:</strong>
        ${date}
        <br>

        <strong>Time:</strong>
        ${selectedTime}
        <br>

        <strong>Seats:</strong>
        ${selectedSeats.join(", ")}
        <br>

        <strong>Total:</strong>
        ₹${total}

    `;


    document.getElementById("bookingModal")
        .style.display = "none";

    document.getElementById("successModal")
        .style.display = "flex";
}


// ============================================
// CLOSE SUCCESS
// ============================================

function closeSuccess() {

    document.getElementById("successModal")
        .style.display = "none";
}


// ============================================
// SEARCH MOVIES
// ============================================

function searchMovies() {

    const search =
        document.getElementById("searchMovie")
            .value
            .toLowerCase();


    const movies =
        document.querySelectorAll(".movie-card");


    movies.forEach(movie => {

        const title =
            movie.dataset.title.toLowerCase();


        if (title.includes(search)) {

            movie.style.display = "block";

        } else {

            movie.style.display = "none";

        }

    });
}


// ============================================
// FILTER MOVIES
// ============================================

function filterMovies() {

    const language =
        document.getElementById("languageFilter")
            .value;


    const movies =
        document.querySelectorAll(".movie-card");


    movies.forEach(movie => {

        const movieLanguage =
            movie.dataset.language;


        if (
            language === "all" ||
            movieLanguage === language
        ) {

            movie.style.display = "block";

        } else {

            movie.style.display = "none";

        }

    });
}


// ============================================
// SCROLL TO MOVIES
// ============================================

function scrollToMovies() {

    document
        .getElementById("movies")
        .scrollIntoView({
            behavior: "smooth"
        });
}


// ============================================
// SET MINIMUM DATE
// ============================================

window.onload = function () {

    const today =
        new Date()
            .toISOString()
            .split("T")[0];


    document
        .getElementById("showDate")
        .setAttribute(
            "min",
            today
        );
};
