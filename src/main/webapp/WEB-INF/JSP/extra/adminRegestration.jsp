<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>admin Regestration</title>
	 <script  type="text/javasript"src="./resources/JS/admin.js">

</script>
<style>
* {
	margin: 0px;
	padding: 0%;
	box-sizing: border-box;
}

.main {
	width: 100%;
	margin: auto;
	height: auto;
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-template-rows: 100px 500px;
	grid-template-areas: "a1 a1  a1" "a2 a2  a2";
}

.a1 {
	background: linear-gradient(to right, #c0acde, white);
	grid-area: a1;
	border: 1px solid black;
}

.a1 h1 {
	text-align: center;
	font-size: 40px;
	padding-top: 25px;
}

.a2 {
	background-color: white;
	height: auto;
	grid-area: a2;
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-template-rows: 200px 600px 150px 150px 150px;
	grid-template-areas: "self_info  self_info   self_info"
		"edu_info   edu_info    edu_info" "Bankinfo   Bankinfo   Bankinfo"
		"doc_info    doc_info     doc_info"
		"comp_info   comp_info   comp_info";
}

.self_info {
	padding-top: 20px;
	padding-left: 50px;
	grid-area: self_info;
	border: 1px solid black;
	padding-left: 50px;
}

.edu_info {
	grid-area: edu_info;
	border: 1px solid black;
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-template-rows: 200px 200px 200px;
	grid-template-areas: "graduation  graduation   graduation"
		"hsc   hsc    hsc" "ssc   ssc   ssc";
}

.graduation {
	padding-left: 50px;
	padding-top: 20px;
	grid-area: graduation;
	border: 1px solid black;
}

.hsc {
	grid-area: hsc;
	border: 1px solid black;
	padding-left: 50px;
	padding-top: 20px;
}

.ssc {
	grid-area: ssc;
	border: 0.1px solid black;
	padding-left: 50px;
	padding-top: 20px;
}

.Bankinfo {
	grid-area: Bankinfo;
	border: 1px solid black;
	padding-left: 50px;
	padding-top: 20px;
}

.doc_info {
	grid-area: doc_info;
	border: 1px solid black;
	padding-left: 50px;
	padding-top: 20px;
}

.comp_info {
	grid-area: comp_info;
	border: 1px solid black;
	padding-left: 50px;
	padding-top: 20px;
}

.self_info input {
	width: 40%;
	margin: 10px
}

.edu_info input {
	width: 40%;
	margin: 10px
}

.Bankinfo input {
	width: 40%;
	margin: 10px
}

.doc_info input {
	width: 40%;
	margin: 10px
}

#dateofbirth {
	width: 40.30%;
}

.comp_info input {
	width: 40%;
	margin: 10px
}

.submit {
	width: 265%;
	text-align: center;
	height: 50px;
	color: green;
}
</style>
</head>
<body>
	<form name='frm' action='adminRegestration' method='POST'>
		<div class="main">
			<div class="a1">
				<h1>Welcome in Employee Salary Managment System</h1>
			</div>
			<div class="a2">
				<div class="self_info">
					<h3>Enter the Admin Self Information</h3>
					<input placeholder="Enter FirstName" type="text" name="firstname"
						id="firstname"> <input placeholder="Enter LastName"
						type="text" name="lastname"> <input
						placeholder="Enter ContactNumber" type="number" name="con_num">
					<input placeholder="Enter EmailId" type="email" name="Email"> <br>
					<label for ="Date">Enter the Birth Date</label>
					<input placeholder="Enter DateOfBirth" type="date"
						name="dateofbirth"  id ="Date">
						<input placeholder="Enter Username" type="text"
						name="username">
							<input placeholder="Enter Password" type="text"
						name="password">
						
						
						
				</div>
				<!-- 	<div class="edu_info">
					<div class="graduation"> 
						<h3>Enter the Admin Graduaction Infromation</h3>
						<input placeholder="Enter Collage Name" type="text" id="col_name">
						<input placeholder="Enter Unversity Name" type="text"
							id="Unv_name"> <input placeholder="Enter Filled"
							type="text" id="filled"> <input
							placeholder="Enter percntage" type="number" id="percentage">
						<input placeholder="Enter PassOut Date" type="date"
							id="pa_out_date">
					</div>
					<div class="hsc">
						<h3>Enter the Admin HSC Infromation</h3>
						<input placeholder="Enter School Name" type="text"
							id="hsc_col_name"> <input placeholder="Enter Bord Name"
							type="text" id="hsc_unv_name"> <input
							placeholder="Enter Filled" type="text" id="hscfilled"> <input
							placeholder="Enter percntage" type="number" id="hsc_percentage">
						<input placeholder="Enter PassOut Date" type="date"
							id="hsc_pa_out_date">
					</div>
					<div class="ssc">
						<h3>Enter the Admin SSC Infromation</h3>
						<input placeholder="Enter School Name" type="text" id="sch_name">
						<input placeholder="Enter Bord Name" type="text"
							id="sch_bord_name"> <input placeholder="Enter Filled"
							type="text" id="sch_filled"> <input
							placeholder="Enter percntage" type="number" id="sch_percentage">
						<input placeholder="Enter PassOut Date" type="date"
							id="sch_pa_out_date">
					</div>
				</div>

				<div class="Bankinfo">
					<h3>Enter the Admin Bank Infromation</h3>
					<input placeholder="Enter Bank Name" type="text" id="bankname">
					<input placeholder="Enter Bank HFC" type="number" id="bankhfcnum">
					<input placeholder="Enter Bank Branch" type="text" id="bankbranch">
					<input placeholder="Enter BankAc_Number" type="number"
						id="bank_ac_num">
				</div>
				<div class="doc_info">
					<h3>Enter the Admin document Infromation</h3>
					<input placeholder="Enter Adhar Number" type="number" id="adh_num">
					<input placeholder="Enter Pan Number" type="number" id="pan_num">
				</div>
				<div class="comp_info">
					<h3>Enter the Admin Componey Infromation</h3>
					<input placeholder="Enter Employee Type" type="text" id="emp_type">
					<input placeholder="Enter Salary" type="number" id="sal"> <input
						placeholder="Enter Sift" type="text" id="shift"> <input
						placeholder="Enter Joining Date" type="date" id="join_date">
				</div>-->
				<div class="submit">
					Click Here to Registration <input type="submit" name='submit' /><br>
					<p style="color: red;" >${msg}</p>
				</div>
			</div>
		</div>
	</form>
</body>
</html>