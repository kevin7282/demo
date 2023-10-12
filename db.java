package ops.oms;

import java.sql.*;


public class db {
	public static void main(String args[]){  
		try{  
		//step1 load the driver class  
		Class.forName("oracle.jdbc.driver.OracleDriver");  
		  
		//step2 create  the connection object  
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@demo.ca:1525","kevin","demopass");
		
		viewTable(con, "OMS");
		  
		}catch(Exception e){
			System.out.println(e);}  
		  
		}  
	
	public static void viewTable(Connection con, String dbName)
		    throws SQLException {

		    Statement stmt = null;
		    String query = "select SEQUENCE, PAGENAME, OBJEECTNAME, " +
		                   "XPATH, ACTION " +
		                   "from " + dbName + ".OBJECTS";
		    try {
		    	//step3 create the statement object 
		        stmt = con.createStatement();
  		        //step4 execute query
		        ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		           
		            int seq = rs.getInt("SEQUENCE");
		            String pageName = rs.getString("PAGENAME");
		            String objectName = rs.getString("OBJEECTNAME");
		            String xpath = rs.getString("XPATH");
		            String action = rs.getString("ACTION");

		            System.out.println(seq + "\t" + pageName +
		                               "\t" + objectName + "\t" + xpath +
		                               "\t" + action);
		        }
		    } catch (SQLException e ) {
		    	System.out.println(e);
		    } finally {
		    	//step5 close the connection object  
		        if (stmt != null) { stmt.close(); }
		    }
		}

}
