/**
 * 
 */
package folder.qr;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.google.gson.Gson;



/**
 * @author Radhamadhab.DALAI
 *
 */
public class DataFormatter {
	

		public String formatJson(QrMessage message) {

		String messageJson = null;
		try {
		
			Gson gson = new Gson();
	        messageJson= gson.toJson(message);
		} 
		catch(Exception es){
			es.printStackTrace();
		}

		return messageJson;
	}

	public String decimalFormat(double amount) {
		String decimalStringValue = null;
		DecimalFormat twoDForm = new DecimalFormat("#.00");
		decimalStringValue = twoDForm.format(amount);
		return decimalStringValue;
	}

	public SimpleDateFormat dateTimeFormat(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format;
	}
	
	public Timestamp getDateTimestamp(String datetime){
		java.util.Date parsed = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		try {
			parsed = format.parse(datetime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		java.sql.Date beginDate = new java.sql.Date(parsed.getTime());
		Timestamp time= new java.sql.Timestamp(beginDate.getTime());

      return time;
		
	}
}
