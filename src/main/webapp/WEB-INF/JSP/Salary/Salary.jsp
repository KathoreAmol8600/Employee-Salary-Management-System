<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Attendance</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script> <!-- Include jsPDF -->
    <style type="text/css">
        * {
            padding: 0px;
            margin: 0px;
            box-sizing: border-box;
        }
        .row {
            height: 100vh; /* Adjusted for full viewport height */
        }
        .table-container {
            max-height: 300px; /* Adjust based on your needs */
            overflow-y: auto;
        }
        .table td, .table th {
            white-space: nowrap; /* Prevent text from overflowing horizontally */
            text-overflow: ellipsis; /* Adds ellipsis for overflowed text */
        }
        .table td {
            word-wrap: break-word; /* Allows long words to break and wrap to the next line */
            overflow: hidden;
        }
        #searchInput {
            margin-bottom: 20px;
        }
        .slip-container {
            border: 1px solid #ddd;
            padding: 20px;
            background-color: #f9f9f9;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .button-group {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }
    </style>
    <script>
        const { jsPDF } = window.jspdf;

        function searchFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toLowerCase();
            table = document.getElementById("employeeTableBody");
            tr = table.getElementsByTagName("tr");

            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td");
                if (td.length > 0) {
                    txtValue = "";
                    for (let j = 0; j < td.length - 2; j++) { // Exclude the last cell (buttons)
                        txtValue += td[j].textContent || td[j].innerText;
                    }
                    if (txtValue.toLowerCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }

        function generateSlip(calcId) {
            // Logic to generate the slip content (replace with actual implementation)
            var slipContent = `
                <h4>Payment Slip</h4>
               
                <p><strong>Employee Name :</strong> ${calcId}</p>
                <p><strong>Period Start:</strong> 2024-09-01</p>
                <p><strong>Period End:</strong> 2024-09-30</p>
                <p><strong>Total Days Worked:</strong> 21</p>
                <p><strong>Total Hours Worked:</strong> 168.00</p>
                <p><strong>Total Absent Days:</strong> 4</p>
                <p><strong>Total Present Days:</strong> 17</p>
                <p><strong>Total Salary:</strong> 60000.00</p>
            `;
            document.getElementById("slipContent").innerHTML = slipContent;
            document.getElementById("downloadButton").style.display = "block"; // Show download button
            document.getElementById("cancelButton").style.display = "block"; // Show cancel button
        }

        function downloadPDF() {
            const doc = new jsPDF();
            const slipContent = document.getElementById("slipContent").innerText;

            doc.text(slipContent, 10, 10);
            doc.save('payment-slip.pdf');
        }

        function cancelSlip() {
            document.getElementById("slipContent").innerHTML = '<p>Select an employee and click "Generate Slip" to view the payment slip.</p>';
            document.getElementById("downloadButton").style.display = "none"; // Hide download button
            document.getElementById("cancelButton").style.display = "none"; // Hide cancel button
        }
    </script>
</head>
<body>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="container mt-5">
                    <form class="d-flex mb-3">
                        <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search" id="searchInput" onkeyup="searchFunction()">
                    </form>
                    <div class="table-container">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>calcId</th>
                                    <th>EmpName</th>
                                    <th>Employee Name</th>
                                    <th> Salary</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody id="employeeTableBody">
                                 <c:forEach var="e" items="${emp}" varStatus="status"> 
                            <tr>
                                <td><c:out value="${status.count + 0}" /></td>
                                <td>${e.empName}</td>
                                <td>${e.empContact}</td>
                                <td>${e.empEmail}</td>
                                <td>
                                 <button class="btn btn-primary btn-sm" onclick="generateSlip(1)">Generate Slip</button>
                                </td>
                                
                            </tr> 
                        </c:forEach>
                                       
                                <!-- Additional rows go here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="slip-container" id="slipContent">
                    <!-- Payment slip content will be inserted here -->
                    <p>Select an employee and click "Generate Slip" to view the payment slip.</p>
                </div>
                <div class="button-group">
                    <button class="btn btn-success" id="downloadButton" style="display: none;" onclick="downloadPDF()">Download as PDF</button>
                    <button class="btn btn-secondary" id="cancelButton" style="display: none;" onclick="cancelSlip()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
