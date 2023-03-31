<%@ page import="java.sql.*" %>

<%
		// Set up a connection to the database
		Connection conn = null;
String url = "jdbc:mysql://localhost:3306/medrec1?useSSL=false";
		String user = "root";
		String password = "";
		try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        Statement stmt = conn.createStatement();
        
        // execute the query and get the result set
        String msg = request.getParameter("msg");
        int incoming_id = Integer.parseInt(request.getParameter("incoming_id"));
        int outgoing_id=Integer.parseInt(session.getAttribute("id").toString());

// out.println(msg);
// out.println(incoming_id);
String query = "INSERT INTO chat (incomingmsg_id, outgoingmsg_id, msg) VALUES ("+incoming_id+", "+outgoing_id +", '"+msg+"')";

int rows = stmt.executeUpdate(query);
                }
                catch(Exception e){
out.println("Error: " + e.getMessage());
                }
                finally{
                        conn.close();
                }
        %>
        