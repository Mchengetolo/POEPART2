<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackClaims.aspx.cs" Inherits="POEPART2.TrackClaims" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Track Claims</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .claim-table {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            overflow: hidden;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .status-label {
            font-weight: bold;
            color: #007bff;
        }
        .upload-btn {
            background-color: #007bff;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .upload-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Track Claims</h2>

        <!-- Claims table container -->
        <div class="claim-table">
            <table>
                <thead>
                    <tr>
                        <th>Hours Worked</th>
                        <th>Hourly Rate (R)</th>
                        <th>Notes</th>
                        <th>Supporting Document</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="claimsRepeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("HoursWorked") %></td>
                                <td><%# Eval("HourlyRate") %></td>
                                <td><%# Eval("Notes") %></td>
                                <td>
                                    <asp:FileUpload ID="fileUpload" runat="server" />
                                    <asp:Button ID="uploadButton" runat="server" Text="Upload" CssClass="upload-btn" 
                                                CommandArgument='<%# Eval("DocumentPath") %>' OnClick="UploadButton_Click" />
                                </td>
                                <td><span class="status-label"><%# Eval("Status") %></span></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
