<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Event</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen flex flex-col items-center bg-gray-50">

    <!-- Title & Description -->
    <div class="text-center mt-7">
        <h1 class="text-4xl font-extrabold text-black">Create Your Event</h1>
        <p class="text-lg text-gray-700 mt-2">
            Plan and share your events effortlessly with our easy-to-use platform.
        </p>
    </div>

    <!-- Full-Screen Two-Column Form -->
    <form action="EventServlet" method="post" class="mt-10 w-full max-w-5xl px-6">
        <input type="hidden" name="action" value="event"> 

        <div class="grid grid-cols-1 md:grid-cols-2 gap-10">
            <!-- Left Column -->
            <div class="space-y-6">
                <!-- Event Name -->
                <div>
                    <label class="block text-gray-700 font-medium">Event Name:</label>
                    <input type="text" name="name" required 
                        class="w-full mt-2 px-4 py-3 rounded-lg border border-black focus:ring focus:ring-blue-200 outline-none">
                </div>

                <!-- Date & Time -->
                <div>
                    <label class="block text-gray-700 font-medium">Date & Time:</label>
                    <input type="datetime-local" name="date" required 
                        class="w-full mt-2 px-4 py-3 border-black border rounded-lg focus:ring-2 focus:ring-blue-200 outline-none">
                </div>

                <!-- Description -->
                <div>
                    <label class="block text-gray-700 font-medium">Description:</label>
                    <textarea name="description" required rows="5" 
                        class="w-full mt-2 px-4 py-3 rounded-lg border border-black focus:ring-2 focus:ring-blue-200 outline-none"></textarea>
                </div>
            </div>

            <!-- Right Column -->
            <div class="space-y-6">
                <!-- Ticket Price -->
                <div>
                    <label class="block text-gray-700 font-medium">Ticket Price:</label>
                    <input type="number" name="price" required min="0"
                        class="w-full mt-2 px-4 py-3 rounded-lg border border-black focus:ring-2 focus:ring-blue-200 outline-none">
                </div>

                <!-- Location -->
                <div>
                    <label class="block text-gray-700 font-medium">Location:</label>
                    <input type="text" name="location" required 
                        class="w-full mt-2 px-4 py-3 rounded-lg border border-black focus:ring-2 focus:ring-blue-200 outline-none">
                </div>

                <!-- Category -->
                <div>
                    <label class="block text-gray-700 font-medium">Category:</label>
                    <select name="category" required 
                        class="w-full mt-2 px-4 py-3 rounded-lg border border-black focus:ring-2 focus:ring-blue-200 outline-none">
                        <option value="Music & Entertainment">Music & Entertainment</option>
                        <option value="Education & Workshops">Education & Workshops</option>
                        <option value="Gaming & Esports">Gaming & Esports</option>
                        <option value="Health & Fitness">Health & Fitness</option>
                    </select>
                </div>

                <!-- Organizer Name -->
                <div>
                    <label class="block text-gray-700 font-medium">Organizer Name:</label>
                    <input type="text" name="organizer" required 
                        class="w-full mt-2 px-4 py-3 rounded-lg border border-black focus:ring-2 focus:ring-blue-200 outline-none">
                </div>
            </div>
        </div>

        <!-- Submit Button -->
        <div class="mt-8 flex justify-center">
            <button type="submit" 
                class="bg-gray-500 text-white py-3 px-9 rounded-full text-lg font-medium hover:bg-black transition-all">
                Create Event
            </button>
        </div>
    </form>

</body>
</html>
