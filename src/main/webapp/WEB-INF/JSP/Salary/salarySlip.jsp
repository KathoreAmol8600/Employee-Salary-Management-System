<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Salary Slip</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h2 class="text-center">Salary Slip</h2>
    <div class="card">
        <div class="card-header">
            <h4 class="card-title text-center">Employee Payment Slip</h4>
        </div>
        <div class="card-body">
            <table class="table table-bordered" id="salaryTable">
                <tr>
                    <th>Employee ID</th>
                    <td id="empId"><c:out value="${salaryslip.empId}"/></td>
                </tr>
                <tr>
                    <th>Employee Name</th>
                    <td id="empName"><c:out value="${salaryslip.empName}"/></td>
                </tr>
                <tr>
                    <th>Employee Contact</th>
                    <td id="empContact"><c:out value="${salaryslip.empContact}"/></td>
                </tr>
                <tr>
                    <th>Employee Email</th>
                    <td id="empEmail"><c:out value="${salaryslip.empEmail}"/></td>
                </tr>
                <tr>
                    <th>Employee Gender</th>
                    <td id="empGender"><c:out value="${salaryslip.empGender}"/></td>
                </tr>
                <tr>
                    <th>Department Name</th>
                    <td id="departmentName"><c:out value="${salaryslip.departmentName}"/></td>
                </tr>
                <tr>
                    <th>Time Start Date</th>
                    <td id="startday"><c:out value="${work.periodStart}"/></td>
                </tr>
                <tr>
                    <th>Time End Date</th>
                    <td id="endday"><c:out value="${work.periodEnd}"/></td>
                </tr>
                <tr>
                    <th>Total Present Days</th>
                    <td id="totalPresentDays"><c:out value="${salaryslip.totalPresentDays}"/></td>
                </tr>
                <tr>
                    <th>Total Absent Days</th>
                    <td id="totalAbsentDays"><c:out value="${salaryslip.totalAbsentDays}"/></td>
                </tr>
                <tr>
                    <th>Total Hours Worked</th>
                    <td id="totalHoursWorked"><c:out value="${salaryslip.totalHoursWorked}"/></td>
                </tr>
                <tr>
                    <th>Monthly Salary</th>
                    <td id="TotalAmount"><c:out value="${salaryslip.monthlySalary}"/></td>
                </tr>
            </table>
            <div class="form-group">
                <label for="pdfName">Enter PDF Name:</label>
                <input type="text" id="pdfName" class="form-control" placeholder="Enter desired PDF name" />
            </div>
            <div class="button-group text-center">
                <button id="downloadPdf" class="btn btn-primary">Download PDF</button>
                <a href="salary_show" class="btn btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById('downloadPdf').addEventListener('click', async function () {
        const { jsPDF } = window.jspdf;
        const doc = new jsPDF();

        // Retrieve values from the server-side variables
        const empId = document.getElementById('empId').textContent;
        const empName = document.getElementById('empName').textContent;
        const empContact = document.getElementById('empContact').textContent;
        const empEmail = document.getElementById('empEmail').textContent;
        const empGender = document.getElementById('empGender').textContent;
        const departmentName = document.getElementById('departmentName').textContent;
        const totalPresentDays = document.getElementById('totalPresentDays').textContent;
        const totalAbsentDays = document.getElementById('totalAbsentDays').textContent;
        const totalHoursWorked = document.getElementById('totalHoursWorked').textContent;
        const monthlySalary = document.getElementById('TotalAmount').textContent;
        const periodStart = document.getElementById('startday').textContent; 
        const periodEnd = document.getElementById('endday').textContent; 
        const currentDate = new Date().toLocaleDateString(); 

        // Add logo
        const logoSrc = "resources/Logo/logo.jpg"; 
        const logo = new Image();
        logo.src = logoSrc;

        logo.onload = function () {
            doc.addImage(logo, 'JPEG', 5, 5, 15, 15);

            // Add salary slip heading and current date
            doc.setFontSize(16);
            doc.text('Salary Slip', 105, 30, { align: 'center' });
            doc.setFontSize(12);
            doc.text(`Date: ${currentDate}`, 10, 50);
            doc.text(`Address: Pune, Warje-Malewadi, Maharashtra, India.`, 10, 55); 
            

            // Add employee details
            doc.setFontSize(12);
            doc.text(`Employee ID: ${salaryslip.empId}`, 10, 70);
            doc.text(`Employee Name: ${salaryslip.empName}`, 10, 80);
            doc.text(`Employee Contact: ${salaryslip.empContact}`, 10, 90);
            doc.text(`Employee Email: ${salaryslip.empEmail}`, 10, 100);
            doc.text(`Employee Gender: ${salaryslip.empGender}`, 10, 110);
            doc.text(`Department Name: ${salaryslip.departmentName}`, 10, 120);
            doc.text(`Time Start Date: ${work.periodStart}`, 10, 130);
            doc.text(`Time End Date: ${work.periodEnd}`, 10, 140);
            doc.text(`Total Present Days: ${salaryslip.totalPresentDays}`, 10, 150);
            doc.text(`Total Absent Days: ${salaryslip.totalAbsentDays}`, 10, 160);
            doc.text(`Total Hours Worked: ${salaryslip.totalHoursWorked}`, 10, 170);
            doc.text(`Total Amount: ${salaryslip.monthlySalary}`, 10, 180); // Updated label

            // Get the PDF name from input
            const pdfName = document.getElementById('pdfName').value.trim() || 'salary_slip';

            // Save the PDF
            doc.save(`${pdfName}.pdf`);
        };

        logo.onerror = function() {
            console.error('Error loading logo image. Please check the path.');
            alert('Logo image failed to load. Please check the path.');
        };
    });
</script>



</body>
</html>
