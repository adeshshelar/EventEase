<%@page import="pojo.Event"%>
<%@page import="dao.EventDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <!-- Hero Section -->
    <div class="w-full h-[40vh] bg-cover bg-center" style="background-image: url('images/event-bg.jpg');">
        <div class="w-full h-full flex justify-center items-center bg-black bg-opacity-50">
            <h1 class="text-4xl text-white font-bold">Upcoming Events</h1>
        </div>
    </div>

    <!-- Events Grid -->
    <div class="container mx-auto px-4 py-8">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <%
                ArrayList<Event> elist = new EventDao().getAllEvents();
                for (Event i : elist) {
                    String category = i.getCategory().toLowerCase();
                    String imageUrl = "";

                    // Assign images based on category
                    if (category.equalsIgnoreCase("Music & Entertainment")) {
                        imageUrl = "images/music.jpeg";
                    } else if (category.equalsIgnoreCase("Education & Workshops")) {
                        imageUrl = "images/workshop.jpeg";
                    } else if (category.equalsIgnoreCase("Gaming & Esports")) {
                        imageUrl = "images/gaming.jpg";
                    } else if (category.equalsIgnoreCase("Health & Fitness")) {
                        imageUrl = "images/health.jpg";
                    } else {
                        imageUrl = "images/default.jpg"; // Fallback image
                    }
            %>
            <!-- Event Card -->
            <div class="bg-white shadow-lg rounded-2xl overflow-hidden transform transition hover:scale-105 duration-300">
                <img src="<%= imageUrl %>" alt="Event Image" class="w-full h-40 object-cover">
                <div class="p-4 flex flex-col gap-2">
                    <h3 class="text-lg font-semibold text-gray-800 truncate"><%= i.getName() %></h3>
                    <p class="text-gray-600 text-sm"><%= i.getDate() %> | <%= i.getLocation() %></p>
                    <p class="text-gray-700 text-sm line-clamp-2"><%= i.getDescription() %></p>

                    <!-- Organizer & Category -->
                    <div class="flex justify-between text-sm text-gray-500">
                        <span>By <strong><%= i.getOrganizer() %></strong></span>
                        <span class="bg-blue-100 text-blue-600 px-2 py-1 rounded-full text-xs"><%= i.getCategory() %></span>
                    </div>

                    <div class="mt-3 flex justify-between items-center">
                        <span class="text-lg font-bold text-green-600">₹<%= i.getPrice() %></span>
                        <button onclick="openModal('<%= i.getName() %>', <%= i.getPrice() %>)" 
                            class="bg-blue-500 text-white px-3 py-1.5 text-sm rounded-lg hover:bg-blue-600 transition">
                            Book Now
                        </button>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <!-- Booking Popup Modal -->
    <div id="bookingModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center hidden">
        <div class="bg-white p-6 rounded-lg shadow-lg w-96 relative">
            <button onclick="closeModal()" class="absolute top-2 right-2 text-gray-600 hover:text-black">&times;</button>
            <h2 class="text-xl font-bold text-center mb-4">Book Event</h2>

            <!-- Event Details -->
            <p class="text-lg font-semibold" id="eventName"></p>
            <p class="text-gray-600 mb-4">Price: ₹<span id="eventPrice"></span></p>

            <!-- Booking Form -->
            <form>
                <label class="block text-gray-700">Your Name:</label>
                <input type="text" id="userName" required class="w-full px-3 py-2 border rounded-lg mb-2" placeholder="Enter your name">

                <label class="block text-gray-700">Contact Number:</label>
                <input type="text" id="userContact" required class="w-full px-3 py-2 border rounded-lg mb-2" placeholder="Enter your contact number">

                <label class="block text-gray-700">Card Number:</label>
                <input type="text" id="cardNumber" required class="w-full px-3 py-2 border rounded-lg mb-2" placeholder="1234 5678 9012 3456">

                <div class="flex gap-2">
                    <div class="w-1/2">
                        <label class="block text-gray-700">Expiry Date:</label>
                        <input type="text" id="expiryDate" required class="w-full px-3 py-2 border rounded-lg" placeholder="MM/YY">
                    </div>
                    <div class="w-1/2">
                        <label class="block text-gray-700">CVV:</label>
                        <input type="text" id="cvv" required class="w-full px-3 py-2 border rounded-lg" placeholder="123">
                    </div>
                </div>

                <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 mt-4">
                    Pay ₹<span id="payAmount"></span>
                </button>
            </form>
        </div>
    </div>

    <!-- JavaScript for Popup -->
    <script>
        function openModal(eventName, price) {
            document.getElementById("eventName").innerText = eventName;
            document.getElementById("eventPrice").innerText = price;
            document.getElementById("payAmount").innerText = price;
            document.getElementById("bookingModal").classList.remove("hidden");
        }

        function closeModal() {
            document.getElementById("bookingModal").classList.add("hidden");
        }

        // Close modal when clicking outside
        window.onclick = function(event) {
            let modal = document.getElementById("bookingModal");
            if (event.target === modal) {
                closeModal();
            }
        }
    </script>

</body>
</html>
