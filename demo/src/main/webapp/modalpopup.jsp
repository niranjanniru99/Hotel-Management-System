<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Customer Bill Status Check</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Did Customer Paid The Bill?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="javascript:document.checkBillForm.submit()">Check Bill</button>
        <form name="checkBillForm" action="checkBill" hidden="true" method="get">
      				<input hidden type="submit" value="checkBill"/></form>
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Paid</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>