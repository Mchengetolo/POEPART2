<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecturer Claims</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .container {
            width: 90%;
            max-width: 800px;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px;
        }

        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th,
        td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        td {
            background-color: #e9ecef;
        }

        label {
            margin-bottom: 10px;
            color: #343a40;
        }

        input,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <!-- Lecturer Claim Submission Form -->
    <div class="container">
        <h1>Lecturer Claim Submission</h1>
        <form id="claimForm" runat="server" method="post" action="SubmitClaim.aspx">
            <label for="lecturer_name">Lecturer Name:</label>
            <input type="text" id="lecturer_name" name="lecturer_name" required>

            <label for="email">E-Mail:</label>
            <input type="email" id="email" name="email" required>

            <label for="pg">Program Group (PG):</label>
            <input type="text" id="pg" name="pg" required>

            <label for="hc">Hour Category (HC):</label>
            <input type="text" id="hc" name="hc" required>

            <label for="hourly_rate">Hourly Rate:</label>
            <input type="number" step="0.01" id="hourly_rate" name="hourly_rate" required>

            <label for="hours_worked">Hours Worked:</label>
            <input type="number" id="hours_worked" name="hours_worked" required>

            <button type="submit">Submit Claim</button>
        </form>
    </div>

    <!-- Lecturer Claims Table -->
    <div class="container">
        <h1>Your Submitted Claims</h1>
        <table id="claimsTable">
            <thead>
                <tr>
                    <th>Lecturer Name</th>
                    <th>E-Mail</th>
                    <th>Program Group</th>
                    <th>Hour Category</th>
                    <th>Hourly Rate</th>
                    <th>Hours Worked</th>
                </tr>
            </thead>
            <tbody>
                <!-- Submitted claims will appear here -->
            </tbody>
        </table>
    </div>

    <script>
        document.getElementById('claimForm').addEventListener('submit', function (event) {
            event.preventDefault(); // Prevent the form from submitting the traditional way

            // Get the form values
            var lecturerName = document.getElementById('lecturer_name').value;
            var email = document.getElementById('email').value;
            var programGroup = document.getElementById('pg').value;
            var hourCategory = document.getElementById('hc').value;
            var hourlyRate = document.getElementById('hourly_rate').value;
            var hoursWorked = document.getElementById('hours_worked').value;

            // Create a new row
            var newRow = `
                    <tr>
                        <td>${lecturerName}</td>
                        <td>${email}</td>
                        <td>${programGroup}</td>
                        <td>${hourCategory}</td>
                        <td>${hourlyRate}</td>
                        <td>${hoursWorked}</td>
                    </tr>
                `;

            // Append the new row to the table
            document.querySelector('#claimsTable tbody').innerHTML += newRow;

            // Clear the form after submission
            document.getElementById('claimForm').reset();
        });
    </script>
</body>

</html>
