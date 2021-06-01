<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html>
<head>
<meta charset="UTF-8">
<title>���݂�������</title>
<%--���������ʏo�͉�ʂ̃��C�A�E�g������ --%>
<style>
body {
	margin-left: 500px;
	margin-top: 50px;
	background: #EEE8AA;
}
.fortune {
	color: #708090;
	font-family: fantasy;
	margin-top: 10px;
	margin-left: -50px;
}
.title {
	font-size: 30px;
}
.unsei {
	font-size: 35px;
	margin-left: 100px;
	color: #CD5C5C;
}
.wish {
	font-size: 20px;
}
.business {
	font-size: 20px;
}
.study {
	font-size: 20px;
}
<%--�摜--%>
.panda{
margin-left: 400px;
margin-top: 50px;
width: 300px;
height: 300px;
}
<%--���ʃ{�^��--%>
<%--�܂��͂����܂�̃{�b�N�X�T�C�Y�Z�o��borer-box�� --%>
 *, *:before, *:after {
	-webkit-box-sizing: inherit;
	box-sizing: inherit;
}
html {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	font-size: 62.5%; /*rem�Z�o�����₷�����邽�߂�*/
}
.button, .btn, a.btn, button.btn {
	font-size: 1.6rem;
	font-weight: 700;
	line-height: 1.5;
	position: relative;
	display: inline-block;
	padding: 1rem 4rem;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-transition: all 0.3s;
	transition: all 0.3s;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	letter-spacing: 0.1em;
	color: #000000;
	border-radius: 0.5rem;
	border: 0px none;
	font-family: arial narrow;
}
a.btn--green.btn--emboss {
	color: #000000;
	text-shadow: -1px -1px 1px 55d8ff;
	border-bottom: 5px solid #C0C0C0;
	background: #FFFFFF;
}
a.btn--green.btn--cubic:hover {
	margin-top: 3px;
	border-bottom: 2px solid #C0C0C0;
}
button.btn--green.btn--emboss {
	color: #000000;
	text-shadow: -1px -1px 1px 55d8ff;
	border-bottom: 5px solid #C0C0C0;
	background: #FFFFFF;
}
button.btn--green.btn--cubic:hover {
	margin-top: 3px;
	border-bottom: 2px solid #C0C0C0;
}
.button{
margin-top: 30px;
margin-left: -200px;
}
</style>
<%--���������ʏo�͉�ʂ̃��C�A�E�g������ --%>
</head>
<body>

<div class="fortune">
		<div class="title">���Ȃ��̍����̉^���́A</div>

		<div class="unsei">
	 	<bean:write  name="results" property="fortuneName" scope="session"/>
	 	</div>
		<div class="wish">
			�肢���F<bean:write name="results" property="wish" scope="session"/>
		</div>
		<div class="business">
			�����F<bean:write name="results" property="business"  scope="session"/>
		</div>
		<div class="study">
			�w��F<bean:write name="results" property="study" scope="session"/><br>
		</div>
		</div>

		<img class="panda" src="img/panda.jpg">
		<div class="button">
			<a class="btn btn--green btn--emboss btn--cubic"  href="/officeTrainingStruts/Return.do">RETURN</a>
			<a class="btn btn--green btn--emboss btn--cubic"  href="/officeTrainingStruts/hmResults.do">RESULTS OF PERCENTAGE</a>
			<a class="btn btn--green btn--emboss btn--cubic" href="/officeTrainingStruts/sbResults.do">YOUR FORTUNE RESULTS</a>
	</div>

</body>
</html>