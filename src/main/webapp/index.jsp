<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EventEase - Sign In</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-screen flex">

    <!-- Left Section: Image + Overlay + Text -->
    <div class="w-1/2 h-full relative">
        <img src="<%= request.getContextPath() %>/images/login.jpg" 
             class="absolute inset-0 w-full h-full object-cover" alt="Event Image">
        
        <!-- Dark Overlay -->
        <div class="absolute inset-0 bg-black bg-opacity-50 flex flex-col justify-end items-start px-16">
            <h1 class="text-white text-5xl font-bold">Welcome to EventEase</h1>
            <p class="text-white text-lg mt-4 mb-12">
                Discover, manage, and book amazing events effortlessly with EventEase!
            </p>
        </div>
    </div>

    <!-- Right Section: Login/Register Box -->
    <div class="w-1/2 h-full flex items-center justify-center bg-gray-100">
        <div class="w-full max-w-md bg-white p-8 shadow-lg rounded-lg">
            <h2 class="text-2xl font-semibold text-center mb-4">Sign in to EventEase</h2>
            <p class="text-gray-600 text-center mb-6">Welcome back! Please sign in to continue</p>

            <!-- Email Login Form -->
            <form action="AuthServlet" method="post">
            <input type="hidden" name="action" value="login"> 
                <input type="text" name="name" placeholder="Enter your username" 
                    class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>
                    
                 <input type="password" name="password" placeholder="Enter your password" 
                    class="w-full p-3 mt-4 border rounded-lg focus:ring-2 focus:ring-blue-500" required>

                <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 rounded-lg mt-4">
                    Continue
                </button>
            </form>

            <p class="text-center text-gray-600 mt-4">
                Don't have an account? <a href="register.jsp" class="text-blue-500 font-semibold">Sign up</a>
            </p>
        </div>
    </div>

</body>
</html>
