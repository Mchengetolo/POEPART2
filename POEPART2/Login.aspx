<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Lecturer/Coordinator/Manager</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9f5ff; /* Light blue background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 900px;
            display: flex;
            justify-content: space-between;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
        }

        .form-container {
            width: 33.3%;
            padding: 50px;
            background-color: #ffffff; /* White background for forms */
            box-sizing: border-box;
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        .form-container:hover {
            background-color: #f0f8ff; /* Light hover effect */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff; /* Primary color for headings */
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #007bff; /* Blue border */
            border-radius: 5px;
            font-size: 16px; /* Larger font size for inputs */
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff; /* Blue button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Responsive design adjustments */
        @media (max-width: 768px) {
            .form-container {
                width: 100%; /* Stack forms on smaller screens */
                padding: 30px;
            }
        }
    </style>
</head>

<body>

    <div class="container" id="loginContainer">
        <!-- Lecturer Form -->
        <div class="form-container" id="lecturerFormContainer">
            <h1>Lecturer Login</h1>
            <form id="lecturerForm" onsubmit="return handleLogin('Lecturer')">
                <input type="text" id="lecturerName" placeholder="Lecturer Name" required>
                <input type="email" placeholder="Lecturer Email" required>
                <input type="password" placeholder="Password" required>
                <button type="submit">Submit</button>
            </form>
        </div>

        <!-- Coordinator Form -->
        <div class="form-container" id="coordinatorFormContainer">
            <h1>Program Coordinator Login</h1>
            <form id="coordinatorForm" onsubmit="return handleLogin('Coordinator')">
                <input type="text" id="coordinatorName" placeholder="Coordinator Name" required>
                <input type="email" placeholder="Coordinator Email" required>
                <input type="password" placeholder="Password" required>
                <button type="submit">Submit</button>
            </form>
        </div>

        <!-- Manager Form -->
        <div class="form-container" id="managerFormContainer">
            <h1>Manager Login</h1>
            <form id="managerForm" onsubmit="return handleLogin('Manager')">
                <input type="text" id="managerName" placeholder="Manager Name" required>
                <input type="email" placeholder="Manager Email" required>
                <input type="password" placeholder="Password" required>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>

    <script>
        function handleLogin(role) {
            const name = document.querySelector(`#${role.toLowerCase()}FormContainer input[type="text"]`).value;
            alert(`Welcome, ${name} (${role})! You have successfully logged in.`);
            return false; // Prevent form submission for demonstration
        }
    </script>

</body>

</html>
