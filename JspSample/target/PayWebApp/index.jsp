<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.Date,connect.samples.IPGIntegrationUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>Connect Test Page</title>
	</head>
	<%
		Date now = new java.util.Date(System.currentTimeMillis());
		String storeId = "3344000101";//Please set store id here 
		String strSharedSecret = "29zxB99E49";//Please set your sharedsecret here which is provided by IMS PGhelpdesk
		
		String strChargetotal = "1.00";//Set here transaction amount here 
		String strTxntype = "sale";  //Transaction Type
		String strCurrency = "356";//Currency will be 356 for INR
		String strPayOnly = "payonly";//Mode of payment payonly,fullpay ,PayPlus,netbanking for furhter refer   integration document shared.
		String strLanguage = "en_EN";//For language
		String strMerchantTransactionId = "330995001_1";
		String cardNumber = "5123456789012346";
		String cvv = "100";
		String expMonth = "12"; 
		String expYear = "2035";
		IPGIntegrationUtil ipgUtil = new IPGIntegrationUtil(storeId,
				strSharedSecret, strChargetotal, strCurrency, now);
				//Initialize constructor to calculate hash 
				 
		String calculatedIPGUtilHash = ipgUtil.createHash();
		//Above function will calculate hash value for securing transactions
		String txnDateTime = ipgUtil.getFormattedSysDate();
		//Above function will get formated system date and time
		System.out.println("Hash Value====>>"+calculatedIPGUtilHash);
		System.out.println("Txn Time ====>>"+txnDateTime);
		
		//String strHosteddataid  = "TXN_Nilkant1";
		String responseSuccessURL = "http://52.8.75.254:8080/PayWebApp/response_success.jsp";//success response page url
		String responseFailureURL = "http://52.8.75.254:8080/PayWebApp/response_fail.jsp";//Failure response page url
		
	%>

	<body>

		<h1>
			Order Form
		</h1>

		<form method="post"	action="https://test.ipg-online.com/connect/gateway/processing">
			<!-- Above url is for Testing purpose please use Production URL which is shared by PGhelpdesk team -->
			
			
			

			<input type="hidden" name="timezone" value="IST" />
			
			<!-- Set Time zone as IST -->
			
		<!--	<input type="hidden" name="authenticateTransaction" value="false" />-->
			

			<table>
				
				<tr>
					<td>
						Transaction Type
					</td>
					<td>
						<input size="50" type="text" name="txntype" value='<%=strTxntype%>' />
					</td>
				</tr>
				<tr>
					<td>
						Transaction Date Time
					</td>
					<td>
						<input size="50" type="text" name="txndatetime" value="<%=txnDateTime%>" />
					</td>
				</tr>
				<tr>
					<td>
						Calculated HASH
					</td>
					<td>
						<input size="50" type="text" name="hash" value="<%=calculatedIPGUtilHash%>" />
					</td>
				</tr>
				<tr>
					<td>
						Currency
					</td>
					<td>
						<input size="50" type="text" name="currency" value='<%=strCurrency%>' />

					</td>
				</tr>
				<tr>
					<td>
						Payment Mode
					</td>
					<td>
						<input size="50" type="text" name="mode" value='<%=strPayOnly%>' />
					</td>
				</tr>
				<tr>
					<td>
						Store Id
					</td>
					<td>
						<input size="50" type="text" name="storename" value='<%=storeId%>' />
					</td>
				</tr>
				<tr>
					<td>
						Chargetotal
					</td>
					<td>
					<input size="50" type="text" name="chargetotal" value='<%=strChargetotal%>' />
					</td>
				</tr>
				<tr>
					<td>
						Shared Secret
					</td>
					<td>
			<input size="50" type="text" name="sharedsecret" value='<%=strSharedSecret%>' />
					</td>
				</tr>
				<tr>
					<td>
						Language
					</td>
					<td>
						<input size="50" type="text" name="language" value='<%=strLanguage%>' />
					</td>
				</tr>
				
				
				
				
				<tr>
					<td>
						full_bypass
					</td>
					<td>
						<input id="" name="full_bypass" size="20" value="false" type="text">
					</td>
				</tr>
				
				
				
				
				<tr>
					<td>
						merchant Transaction Id
					</td>
					<td>
						<input id="merchantTransactionId" name="merchantTransactionId" size="20" value="<%=strMerchantTransactionId%>"type="text">
					</td>
				</tr>
				
				<!--<tr>
					<td>
						Cardholder Name
					</td>
					<td>
						<input id="bname" name="bname" size="20" value="Nilkant Hosmani"type="text">
					</td>
				</tr>-->
				<!-- Please fill card details in below text fields-->
				<tr>
					<td>
						Cust card No
					</td>
					<td>
						<input id="cardnumber" name="cardnumber" size="20" value="<%=cardNumber%>"type="text">
					</td>
				</tr>
			expmonth
			
			<tr>
					<td>
						expmonth
					</td>
					<td>
						<input id="expmonth" name="expmonth" size="20" value="<%=expMonth%>" type="text">
					</td>
				</tr>
				
				<tr>
					<td>
						expyear
					</td>
					<td>
						<input id="expyear" name="expyear" size="20" value="<%=expYear%>"type="text">
					</td>
				</tr>
				
				<tr>
					<td>
						cvm
					</td>
					<td>
						<input id="cvm" name="cvm" size="20" value="<%=cvv%>"type="text">
					</td>
				</tr>
				
				
				<tr>
					
					<td>
					<input type="hidden" name="responseSuccessURL" value="<%=responseSuccessURL%>"/>
			
			
					</td>
				</tr>
				<tr>
					
					<td>
						<input type="hidden" name="responseFailURL" value="<%=responseFailureURL%>"/>
					</td>
				</tr>
					
			
			
			
			<input type="hidden" name="hash_algorithm" value="SHA1"/>
			
			
			
				<tr>
					<td colspan="2" align="center"><input type="submit" name ="submitBtn" value="Submit This Form"></td>
				</tr>
				
				
				<!--SHA-256-->
		</table>
		</form>

	</body>
</html>
