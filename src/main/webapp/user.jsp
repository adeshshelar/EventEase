<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EventEase - Manage Your Events</title>
    <script src="https://cdn.tailwindcss.com"></script>
     <style>
        .fade {
            animation: fadeEffect 1s ease-in-out;
        }
        
        @keyframes fadeEffect {
            from { opacity: 0.4; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>

    <div class="relative h-screen bg-cover bg-center">

    <img id="slideshow" class="absolute inset-0 w-full h-full object-cover" src="<%= request.getContextPath() %>/images/event1.jpg" alt="Event Image">

    
    <div class="absolute inset-0 bg-black bg-opacity-50"></div>

   
    <div class="relative flex flex-col items-center justify-center h-full text-center px-6">
        <h1 class="text-white text-3xl md:text-6xl font-bold">
           Welcome to EventEase
        </h1>
        
        
        <p class="text-white text-lg md:text-xl mt-4 max-w-3xl">
            Discover and explore exciting events happening near you. Book tickets for concerts, conferences, and festivals effortlessly.  
            Join a community of event enthusiasts and never miss an event!
        </p>

        
        <a href="events.jsp" class="mt-6 bg-gray-500 hover:bg-black text-white font-semibold py-3 px-6 rounded-lg shadow-md transition">
            Explore Events
        </a>
    </div>
</div>

     <script>
        const images = [
            "<%= request.getContextPath() %>/images/event1.jpg",
            "<%= request.getContextPath() %>/images/event2.jpg",
            "<%= request.getContextPath() %>/images/event3.jpg"
        ];

        let index = 0;
        function changeImage() {
            index = (index + 1) % images.length;
            document.getElementById("slideshow").src = images[index];
        }

        setInterval(changeImage, 2000); 
    </script>

</body>
</html>
