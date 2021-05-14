<%@page import="com.Fund"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Funds Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body>
<div class="container"><div class="row"><div class="col-6">
<h1>Funds Management </h1>
<form id="formFund" name="formFund">
Fund ID:
<input id="fundID" name="fundID" type="text"
class="form-control form-control-sm">
<br> Date:
<input id="date" name="date" type="text"
class="form-control form-control-sm">
<br> Total Lend:
<input id="totalLend" name="totalLend" type="text"
class="form-control form-control-sm">
<br> Remaining Balance:
<input id="remainingBalance" name="remainingBalance" type="text"
class="form-control form-control-sm">
<br> No Of Installments:
<input id="noOfInstallments" name="noOfInstallments" type="text"
class="form-control form-control-sm">
<br> Amount Per Installment:
<input id="amoutnPerInstallment" name="amountPerInstallment" type="text"
class="form-control form-control-sm">
<br>
<input id="btnSave" name="btnSave" type="button" value="Save"
class="btn btn-primary">
<input type="hidden" id="hidFundIDSave"
name="hidFundIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divFundsGrid">
<%
Fund fundObj = new Fund();
out.print(fundObj.readFunds());
%>
</div>
</div> </div> </div>
</body>
</html>
