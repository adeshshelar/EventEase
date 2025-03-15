<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - EventEase</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-screen flex items-center justify-center bg-gray-100">

    <div class="w-full max-w-md bg-white p-8 shadow-lg rounded-lg">
        <h2 class="text-2xl font-semibold text-center mb-4">Create an Account</h2>
        <p class="text-gray-600 text-center mb-6">Join EventEase and start exploring amazing events!</p>

        <!-- Registration Form -->
        <form action="AuthServlet" method="post" class="space-y-4">
			<input type="hidden" name="action" value="register"> 
            <!-- Username -->
            <input type="text" name="name" placeholder="Enter your name"
                class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>

            <!-- Email -->
            <input type="email" name="email" placeholder="Enter your email address"
                class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>

            <!-- Password -->
            <input type="password" name="password" placeholder="Create a password"
                class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>

            <!-- Role Selection -->
            <div class="flex justify-between">
                <label class="flex items-center">
                    <input type="radio" name="role" value="Organizer" class="mr-2" required> Organizer
                </label>
                <label class="flex items-center">
                    <input type="radio" name="role" value="User" class="mr-2" required> User
                </label>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 rounded-lg mt-2">
                Register
            </button>
        </form>

        <p class="text-center text-gray-600 mt-4">
            Already have an account? <a href="index.jsp" class="text-blue-500 font-semibold">Sign in</a>
        </p>
    </div>

</body>
</html>
