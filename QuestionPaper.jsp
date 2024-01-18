<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@600&display=swap" rel="stylesheet">
<title>Question Paper</title>

<style>
body {
	padding: 0;
	margin: 0;
	font-family: 'Roboto Slab', serif;
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
	position: relative;
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
	align-items: center;
}

.qb-head{
	font-weight: bold;
	font-size: 40px;
}

.instructions{
	display: flex;
	font-size: 12px;
	flex-direction: column;
	width: 25rem;
}

.instructions-head{
	font-weight: bold;
	font-size: 15px;
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
	margin-top: 55px;
}

.question-box::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	border-radius: 10px;
	background-color: #F5F5F5;
}

.question-box::-webkit-scrollbar
{
	width: 12px;
	background-color: #F5F5F5;
}

.question-box::-webkit-scrollbar-thumb
{
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	background-color: #555;
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
	position: absolute;
	bottom: 27px;
	right: 50px;
}

.submit:hover {
	background-color: #1766ab;
}

.hiddenInput {
	display: none;
}

#timer{
	position: absolute;
	left: 50%;
	top: 10px;
	font-size: 2rem;
  padding: 0.5rem;
  background-color: #333;
  color: #fff;
  border-radius: 5px;
}

select{
  width: 400px;
  max-width: 100%;
  overflow-y: auto;
  cursor: pointer;
  padding: 15px 25px;
  -webkit-appearance: none;
  -moz-appearance: none;
  border: none;
  outline: none;
  border-radius: 12px;
  color: #444;
  font-size: 18px;
  box-shadow: -3px 3px 5px 0px rgba(0,0,0,0.10);
  height: 60px;
}
select option{
  padding: 10px 20px;
  margin-bottom: 8px;
  border-radius: 12px;
  background-color: rgb(238, 238, 238);
  white-space: pre-wrap;
  cursor: pointer;
}
select option:hover{
  background-color: rgb(223, 223, 223);
}
select option:checked{
  box-shadow: 0 0 10px 100px #595959 inset;
}
select::-webkit-scrollbar-track
{
	background-color: #F5F5F5;
	border-radius: 12px;
}

select::-webkit-scrollbar
{
	width: 8px;
	background-color: #F5F5F5;
}

select::-webkit-scrollbar-thumb
{
	background-color: rgb(225, 225, 225);
	border-radius: 12px;
	background-image: -webkit-linear-gradient(90deg,
	                                          rgba(160, 160, 160, 0.2) 25%,
											  transparent 25%,
											  transparent 50%,
											  rgba(160, 160, 160, 0.2) 50%,
											  rgba(160, 160, 160, 0.2) 75%,
											  transparent 75%,
											  transparent)
}
select.fadeIn {
  animation: fadeInDown 0.2s;
}
select.fadeOut{
  animation: fadeInUp 0.2s;
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
					<%=request.getAttribute("examCode")%></div>
					
			</div>
			<div class="containerB">
				<div id="timer"></div>
				<div class="question-box">
					<div class="qb-header">
						<div class="qb-head">Question Paper</div>
						<div class="instructions">
						<p class="instructions-head">Please read the following instructions carefully:</p>
						<ol>
						  <li>You have <strong>Ten Minutes</strong> to complete this exam.</li>
						  <li>Please make sure to answer all questions.</li>
						  <li>When you are finished, click the "Submit" button to submit your exam.</li>
						  <li>Your exam will be automatically submitted when the time limit has elapsed, so please make sure to submit your exam before the time runs out.</li>
						</ol>
						</div>
					</div>
					<div id="questions">
						<form action="Invigilate" method="post" id="myform">
							<input name="examCode" type="number" class="hiddenInput" value=<%=request.getAttribute("examCode") %>>
							<input name="rollNumber" type="number" class="hiddenInput"
									value=<%=request.getAttribute("rollNumber")%>>
							<%
							ArrayList<ArrayList<String>> questions = (ArrayList<ArrayList<String>>) request.getAttribute("questionPaper");
							for (ArrayList<String> question : questions) {
							%>
							<div class="question" id="question">
								<h3><%=question.get(0)%>
								</h3>
								<select name="<%=question.get(0) %>" id="select">
									<option value="null" style="display:none;">choose option</option>
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
<script>
var countDownTime = 600;

// Update the countdown timer every second
var timer = setInterval(function() {
  // Calculate the remaining time
  var minutes = Math.floor(countDownTime / 60);
  var seconds = countDownTime - minutes * 60;

  // Display the remaining time
  document.getElementById("timer").innerHTML = minutes + ":" + (seconds < 10 ? "0" : "") + seconds;

  // Decrement the countdown time
  countDownTime--;

  // Stop the timer when the countdown time reaches 0
  if (countDownTime == 0) {
	submitform() 
    clearInterval(timer);
    document.getElementById("timer").innerHTML = "Time's up!";
    // Add code to perform some action when the timer ends
  }
}, 1000);

document.getElementById("select").selectedIndex = 0;

function submitform(){
	document.forms["myform"].submit();
}
</script>
</html>
