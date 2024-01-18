<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Bona+Nova:wght@400;700&family=Fira+Sans:wght@400;700&display=swap"
	rel="stylesheet" />
<title>Question Paper</title>

<style>
body {
	padding: 0;
	margin: 0;
	font-family: 'Bona Nova', serif;
}

.container {
	display: flex;
	flex-direction: column;
	height: 100vh;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 40px;
	background: black;
	color: white;
	box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px
		6px;
}

.title {
	font-weight: bold;
	font-size: 20px;
}

.actions {
	font-size: 15px;
}

.body-content {
	height: 100%;
	display: flex;
}

.containerA {
	background: #0074d9;
	height: 100%;
	width: 30%;
	color: white;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: relative;
}

.page-title {
	font-size: 30px;
	font-weight: bold;
}

.user-welcome {
	font-size: 20px;
	margin: 10px 0;
	font-weight: bold;
	padding: 10px 0;
}

.cta {
	position: absolute;
	bottom: 30px;
	text-decoration: none;
	color: white;
	padding: 10px 15px;
	border-radius: 5px;
	border: 1px solid white;
}

.cta:hover {
	background: white;
	color: #0074d9;
}

.containerB {
	display: flex;
	flex-direction: column;
	padding: 20px 30px;
	width: 70%;
	height: 80vh;
}

label {
	font-family: 'Fira Sans', sans-serif;
	font-size: 20px;
	display: block;
	margin: 20px 0;
}

select {
	height: 35px;
	width: 280px;
	font-size: 15px;
}

.btn {
	padding: 10px 20px;
	background: #0074d9;
	margin: 10px 0;
	border: none;
	color: white;
	font-size: 15px;
	border-radius: 5px;
	text-decoration: none;
}

.btn:hover {
	background-color: #2784d6;
}

.head {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.updates {
	position: absolute;
	right: 20px;
}

.content {
	margin-top: 30px;
	display: flex;
	justify-content: space-between;
}

.option-heading {
	font-size: 15px;
	padding: 20px 0;
}

.exams {
	width: 300px;
	height: 40px;
	padding: 0 10px;
	font-size: 15px;
}

.add-btn {
	padding: 12px 20px;
	background: #0074d9;
	margin: 10px 0;
	border: none;
	color: white;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	text-decoration: none;
}

.add-btn:hover {
	background-color: #2784d6;
}

.pending-table {
	display: flex;
	flex-direction: column;
	padding: 40px 0;
}

.pt-header, .pt-body {
	display: flex;
	width: 100%;
	justify-content: space-between;
	padding: 10px 0;
}

.pt-header {
	font-weight: bold;
}

.pt-data {
	font-size: 18px;
}

.exam-btn {
	padding: 8px 15px;
	background: #0074d9;
	border: none;
	color: white;
	font-size: 12px;
	font-weight: bold;
	border-radius: 5px;
	text-decoration: none;
}

.exam-btn:hover {
	background-color: #2784d6;
}

.qb-header {
	display: flex;
	width: 100%;
	justify-content: space-between;
	padding: 25px 0;
	font-weight: bold;
}

.qb-body {
	display: flex;
	width: 100%;
	justify-content: space-between;
	padding: 15px 0;
	flex-direction: column;
}

.qb-data {
	font-size: 18px;
}

.question-box {
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 6px -1px, rgba(0, 0, 0, 0.06) 0px
		2px 4px -1px;
	padding: 20px 40px;
	overflow-y: scroll;
}

.scam {
	position: absolute;
	background-color: black;
	width: 50%;
	height: 100%;
}

.radio {
	display: flex;
	width: 30%;
	justify-content: space-around;
}

#questions {
	display: flex;
	justify-content: space-between;
}

.question {
	width: 100%;
	margin: 0px 0px 0px 10px;
}

.prev, .next {
	position: relative;
	transform: translateY(-50%);
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 15px;
	background-color: #2784d6;
	color: #fff;
	cursor: pointer;
}

.pagination-button {
	position: absolute;
	right: 10px;
	bottom: 0;
}


.container12 {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.page {
	display: none;
}

.active {
	display: block;
}

.submit {
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 15px;
	background-color: #2784d6;
	color: #fff;
	cursor: pointer;
	margin: 10px;
}

.submit:hover {
	background-color: #1766ab;
}

.hiddenInput {
	display: none;
}
</style>
</head>

<body>
	<div class="container">
		<div class="header">
			<div class="title">FC Exam Portal</div>
			<div class="actions">About</div>
		</div>
		<div class="body-content">
			<div class="containerA">
				<div class="page-title">Java</div>
				<div class="page-title">
					Exam Code -
					<%= session.getAttribute("currentExamCode") %></div>
					
			</div>
			<div class="containerB">
				<p id="demo"></p>
				<div class="question-box">
					<div class="qb-header">
						<div class="qb-head">Question Paper</div>
					</div>
					<div id="questions">
						<form action="Invigilate" method="post">
							<%
							ArrayList<ArrayList<String>> questions = (ArrayList<ArrayList<String>>) request.getAttribute("questionPaper");
							for (ArrayList<String> question : questions) {
							%>
							<div class="question" id="question">
								<h3><%=question.get(0)%>
								</h3>
								<select name="<%=question.get(0) %>" required>
									<option selected disabled value="">choose option</option>
									<option value="a"><%=question.get(1)%></option>
									<option value="b"><%=question.get(2)%></option>
									<option value="c"><%=question.get(3)%></option>
									<option value="d"><%=question.get(4)%></option>
								</select>
							</div>
							<%
							}
							%>
							<input type="submit" value="Submit" class="submit">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
