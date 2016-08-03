<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.Date,connect.samples.IPGIntegrationUtil,java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" >
		<title>Success page</title>
	</head>
	
	<body>
		<h1>
			<font color="green">Your Transaction finished successfully</font>
		</h1>
		<p>
			<b>Here are the confirmation fields:</b>
		</p>
	
		<table>
		<%
		String strSharedSecret = "29zxB99E49";
		String approvalCode = request.getParameter("approval_code");
		String strChargetotal = request.getParameter("chargetotal");
		String strCurrency = request.getParameter("currency");
		String txndatetime = request.getParameter("txndatetime");
		String storeId = "3344000101";
		String responseHash = request.getParameter("response_hash");
		Date date = null;
		//2016:02:15-14:31:58
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy:MM:dd-HH:mm:ss");
		
		try {

		 date = dateFormat.parse(txndatetime);
		System.out.println(date);
		System.out.println(dateFormat.format(date));

	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
		IPGIntegrationUtil ipgUtil = new IPGIntegrationUtil(strSharedSecret,approvalCode,strChargetotal
				, strCurrency, date,storeId);
				//Initialize constructor to calculate hash 
				 
		String calculatedIPGUtilHash = ipgUtil.createHashResponse();
		//Above function will calculate hash value for securing transactions
		String txnDateTime = ipgUtil.getFormattedSysDate();
		//Above function will get formated system date and time
		
		System.out.println("Hash Value responseHash ====>>"+responseHash);
		System.out.println("Hash Value====>>"+calculatedIPGUtilHash);
		System.out.println("Txn Time ====>>"+txnDateTime);
		
		if (responseHash.equals(calculatedIPGUtilHash))
		{
			System.out.println("Hash Value Matching");
		}
		else
		{
			System.out.println("Hash Value not Matching");
		}
		%>
		
		
		     <%
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");  %>
			
			
			
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
							<td>transactionNotificationURL</td>
							<td>
								<input id="transactionNotificationURL" name="transactionNotificationURL" class="x25" size="40" type="text" value="https://test.ipg-online.com/webshop/transactionNotification">
							</td>
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
					
					
					<tr>
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
								<input id="submitBtn" name="submitBtn" class="x25" size="40" type="text" value="Submit This Form">
							</td>
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
				<td>response_hash_validation</td>
				<td>
					<input id="response_hash_validation" name="response_hash_validation" class="x25" size="40" type="text" value=false>
				</td>
			</tr>
			<tr>
				<td>responseHash_validationFrom</td>
				<td>
					<input id="responseHash_validationFrom" name="responseHash_validationFrom" class="x25" size="40" type="text" value=null+null+null+null+Y:015185:0015938819:PPX :083109105039+100.00+356+null+null>
				</td>
			</tr>
			
			
			<tr>
							<td>EXT1</td>
							<td>
								<input id="paymentMethod" name="EXT1" class="x25" size="40" type="text" value="<%=request.getParameter("EXT1")%>">
							</td>
						</tr>
						
						
						<tr>
							<td>EXT2</td>
							<td>
								<input id="paymentMethod" name="EXT2" class="x25" size="40" type="text" value="<%=request.getParameter("EXT2")%>">
							</td>
						</tr>
						
						
						<tr>
							<td>EXT3</td>
							<td>
								<input id="paymentMethod" name="EXT3" class="x25" size="40" type="text" value="<%=request.getParameter("EXT3")%>">
							</td>
						</tr>
						
						<tr>
							<td>EXT4</td>
							<td>
								<input id="paymentMethod" name="EXT1" class="x25" size="40" type="text" value="<%=request.getParameter("EXT4")%>">
							</td>
						</tr>
						
						<%
						//2016:02:05-14:21:29
						%>
						
						
						
		</table>
	</body>
</html>