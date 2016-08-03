

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" >
		<title>Failure page</title>
	</head>
	
	<body>
		<h1><font color="red">Your Transaction finished with errors
</font></h1>
<p><b>Here are the confirmation fields:</b></p>

	
		<table>
		
		     <%
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");  %>
			
			
			
			
			
			<tr>
		<td>response_code_3dsecure</td>
		<td><input id="response_code_3dsecure" name="response_code_3dsecure" class="x25" size="40"
			type="text" value="<%=request.getParameter("response_code_3dsecure")%>"/></td>
	</tr>
			
			<tr>
							<td>endpointTransactionId</td>
							<td>
								<input id="endpointTransactionId" name="endpointTransactionId" class="x25" size="40" type="text" value="<%=request.getParameter("endpointTransactionId")%>">
							</td>
						</tr>
			
			
			
			<tr>
							<td>approval_code</td>
							<td>
								<input id="approval_code" name="approval_code" class="x25" size="40" type="text" value="<%=request.getParameter("approval_code")%>">
							</td>
						</tr>
			
			
			

						
					
						<tr>
							<td>terminal_id</td>
							<td>
								<input id="terminal_id" name="terminal_id" class="x25" size="40" type="text" value=<%=request.getParameter("terminal_id")%>>
							</td>
						</tr>
					
						<tr>
							<td>ipgTransactionId</td>
							<td>
								<input id="ipgTransactionId" name="ipgTransactionId" class="x25" size="40" type="text" value=<%=request.getParameter("ipgTransactionId")%>">
							</td>
						</tr>
					
						
					
						<tr>
							<td>currency</td>
							<td>
								<input id="currency" name="currency" class="x25" size="40" type="text" value="<%=request.getParameter("currency")%>">
							</td>
						</tr>
					
						
					
						<tr>
							<td>chargetotal</td>
							<td>
								<input id="chargetotal" name="chargetotal" class="x25" size="40" type="text" value="<%=request.getParameter("chargetotal")%>">
							</td>
						</tr>
					
						<tr>
							<td>timezone</td>
							<td>
								<input id="timezone" name="timezone" class="x25" size="40" type="text" value="<%=request.getParameter("timezone")%>">
							</td>
						</tr>
					
						<tr>
							<td>cccountry</td>
							<td>
								<input id="cccountry" name="cccountry" class="x25" size="40" type="text" value="<%=request.getParameter("cccountry")%>">
							</td>
						</tr>
					
						<tr>
							<td>oid</td>
							<td>
								<input id="oid" name="oid" class="x25" size="40" type="text" value="<%=request.getParameter("oid")%>">
							</td>
						</tr>
					
						<tr>
							<td>ccbin</td>
							<td>
								<input id="ccbin" name="ccbin" class="x25" size="40" type="text" value="<%=request.getParameter("ccbin")%>">
							</td>
						</tr>
					
						<tr>
							<td>tdate</td>
							<td>
								<input id="tdate" name="tdate" class="x25" size="40" type="text" value="<%=request.getParameter("tdate")%>">
							</td>
						</tr>
					
						<tr>
							<td>response_hash</td>
							<td>
								<input id="response_hash" name="response_hash" class="x25" size="40" type="text" value="<%=request.getParameter("response_hash")%>">
							</td>
						</tr>
					
					<tr>
		<td>hash_algorithm</td>
		<td><input id="hash_algorithm" name="hash_algorithm" class="x25" size="40"
			type="text" value="<%=request.getParameter("hash_algorithm")%>"></td>
	</tr>
						
					
						<tr>
							<td>txndatetime</td>
							<td>
								<input id="txndatetime" name="txndatetime" class="x25" size="40" type="text" value="<%=request.getParameter("txndatetime")%>">
							</td>
						</tr>
					
						<tr>
							<td>status</td>
							<td>
								<input id="status" name="status" class="x25" size="40" type="text" value="<%=request.getParameter("status")%>">
							</td>
						</tr>
					<tr>
		<td>fail_rc</td>
		<td><input id="fail_rc" name="fail_rc" class="x25" size="40"
			type="text" value="<%=request.getParameter("fail_rc")%>"></td>
	</tr>
						<tr>
							<td>cardnumber</td>
							<td>
								<input id="cardnumber" name="cardnumber" class="x25" size="40" type="text" value="<%=request.getParameter("cardnumber")%>">
							</td>
						</tr>
					
						<tr>
							<td>processor_response_code</td>
							<td>
								<input id="processor_response_code" name="processor_response_code" class="x25" size="40" type="text" value="<%=request.getParameter("processor_response_code")%>">
							</td>
						</tr>
					</td>
					
					<tr>
		<td>fail_reason</td>
		<td><input id="fail_reason" name="fail_reason" class="x25" size="40"
			type="text" value="<%=request.getParameter("fail_reason")%>"></td>
	</tr>
					
					
					

							<td>expmonth</td>
							<td>
								<input id="expmonth" name="expmonth" class="x25" size="40" type="text" value='<%=request.getParameter("expmonth")%>'>
							</td>
						</tr>
						
						<tr>
							<td>expyear</td>
							<td>
								<input id="expyear" name="expyear" class="x25" size="40" type="text" value="<%=request.getParameter("expyear")%>">
							</td>
						</tr>
					
						<tr>
							<td>ccbrand</td>
							<td>
								<input id="ccbrand" name="ccbrand" class="x25" size="40" type="text" value="<%=request.getParameter("ccbrand")%>">
							</td>
						</tr>
					
						<tr>
							<td>txntype</td>
							<td>
								<input id="txntype" name="txntype" class="x25" size="40" type="text" value="<%=request.getParameter("txntype")%>">
							</td>
						</tr>
					
						<tr>
							<td>submitBtn</td>
							<td>
								<!--<input id="submitBtn" name="submitBtn" class="x25" size="40" type="text" value="Submit This Form">-->
							</td>
						</tr>
					
					<tr>
		
		
		<td>responseFailureURL</td>
		<td><!--<input id="responseFailureURL" name="responseFailureURL" class="x25" size="40"
			type="text" value="http://10.24.94.245:8088/connect/response_fail.jsp">--></td>
	</tr>
	
					
					
					
						<tr>
							<td>txndate_processed</td>
							<td>
								<input id="txndate_processed" name="txndate_processed" class="x25" size="40" type="text" value="<%=request.getParameter("txndate_processed")%>">
							</td>
						</tr>
					
						<tr>
							<td>paymentMethod</td>
							<td>
								<input id="paymentMethod" name="paymentMethod" class="x25" size="40" type="text" value="<%=request.getParameter("paymentMethod")%>">
							</td>
						</tr>
					
			
			
			<tr>
							<td>merchantTransactionId</td>
							<td>
								<input id="merchantTransactionId" name="merchantTransactionId" class="x25" size="40" type="text" value="<%=request.getParameter("merchantTransactionId")%>">
							</td>
						</tr>
						
						
						<tr>
							<td>merchantTransactionId</td>
							<td>
								<input id="customerid" name="customerid" class="x25" size="40" type="text" value="<%=request.getParameter("customerid")%>">
							</td>
						</tr>
		</table>
	</body>
</html>