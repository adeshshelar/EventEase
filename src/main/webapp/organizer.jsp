<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organizer</title>
    <script src="https://cdn.tailwindcss.com"></script>
    
</head>
<body class="h-screen w-screen flex flex-col md:flex-row items-center justify-between">

   <!-- Left Section -->
<div class="w-full md:w-3/5 px-12 md:px-20 space-y-9">
    <h1 class="text-5xl font-extrabold leading-tight">
        Welcome, Organizer! <br> Create Memorable Events with EventEase
    </h1>
    <p class="text-xl leading-loose">
        Take your event planning to the next level with EventEase.  
        Easily set up, manage, and track your events—all in one place.  
        Whether it's a conference, wedding, or meetup, we've got you covered!
    </p>
    <a href="eventForm.jsp" 
       class="inline-block px-10 py-4 mt-6 bg-gray-600 text-white text-lg font-semibold rounded-full shadow-lg transition transform hover:scale-105 hover:bg-yellow-500">
        Create Event
    </a>
</div>

    <!-- Right Section -->
    <div class="w-full md:w-1/2 flex justify-center items-center p-6">
        <img src="images/event1.jpg" class="w-3/4 md:w-[500px] h-[430px] rounded-2xl shadow-2xl">
    </div>

</body>
</html>
