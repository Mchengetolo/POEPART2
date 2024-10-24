<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Claim Verification - Program Coordinator</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            padding: 20px;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-size: 18px;
        }
        td {
            font-size: 16px;
            color: #333;
        }
        .buttons {
            display: flex;
            justify-content: flex-start;
        }
        .buttons button {
            padding: 10px 15px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            color: white;
        }
        .approve {
            background-color: #4CAF50;
        }
        .reject {
            background-color: #f44336;
        }
        .approve:hover {
            background-color: #45a049;
        }
        .reject:hover {
            background-color: #d32f2f;
        }
        .message {
            text-align: center;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    

    <div class="container">
        <h2>Pending Claims for Verification</h2>

        <!-- Table format for claims -->
        <table>
            <thead>
                <tr>
                    <th>Lecturer Name</th>
                    <th>Module</th>
                    <th>Program Code</th>
                    <th>Total Hours</th>
                    <th>Hourly Rate</th>
                    <th>Total Claim Amount</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Senzo Ndlovu</td>
                    <td>Computer Science 101</td>
                    <td>CS101</td>
                    <td>40</td>
                    <td>R50</td>
                    <td>R2500</td>
                    <td class="buttons">
                        <button class="approve" onclick="approveClaim(this)">Approve</button>
                        <button class="reject" onclick="rejectClaim(this)">Reject</button>
                    </td>
                </tr>
                <tr>
                    <td>Siphelele Mkhulise</td>
                    <td>Mechanical engineering 123</td>
                    <td>MC123</td>
                    <td>30</td>
                    <td>R45</td>
                    <td>R1350</td>
                    <td class="buttons">
                        <button class="approve" onclick="approveClaim(this)">Approve</button>
                        <button class="reject" onclick="rejectClaim(this)">Reject</button>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Success or reject message will be displayed here -->
        <p class="message" id="message"></p>
    </div>

    <script>
        // Function to handle approving a claim
        function approveClaim(button) {
            const row = button.closest('tr');
            row.style.display = 'none'; // Hide the row after approving
            document.getElementById('message').textContent = 'Claim Approved Successfully!';
            document.getElementById('message').style.color = '#4CAF50';
        }

        // Function to handle rejecting a claim
        function rejectClaim(button) {
            const row = button.closest('tr');
            row.style.display = 'none'; // Hide the row after rejecting
            document.getElementById('message').textContent = 'Claim Rejected.';
            document.getElementById('message').style.color = '#f44336';
        }
    </script>

</body>
</html>