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
     
       int incoming_id = Integer.parseInt(request.getParameter("incoming_id"));
        int outgoing_id=Integer.parseInt(session.getAttribute("id").toString());
 
        String query = "SELECT * FROM chat LEFT JOIN registration ON registration.UId = chat.outgoingmsg_id WHERE (outgoingmsg_id = " + outgoing_id + " AND incomingmsg_id = " + incoming_id + ") OR (outgoingmsg_id = " + incoming_id + " AND incomingmsg_id = " + outgoing_id + ") ORDER BY msg_id";
        ResultSet rs = stmt.executeQuery(query);
     String output = "";
       
        if(rs.next())
        {
        do{
 int outgoingmsg_id = rs.getInt("outgoingmsg_id");
            int incomingmsg_id = rs.getInt("incomingmsg_id");
            String msg = rs.getString("msg");
                 if(outgoingmsg_id == outgoing_id){
                    output += "<div class='msg-left'> <p> "+msg+"</p></div>";
                   
                 }else{
                       output += "<div class='msg-right'> <p> "+msg+"</p></div>";
                                             }
        }
         while (rs.next()); 
        }
        else
        {
            output += "<div class='d-flex justify-content-center gap-2 align-items-center fs-4'> <div>No Messages Yet</div> <div><i class='fa-solid fa-comments'></i></div>";
        }
            out.println(output+"</div>");
        }
       
        
         catch(Exception e){
out.println("Error: " + e.getMessage());
                }
                 finally {

        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                out.println("Error closing database connection: " + ex.getMessage());
            }
        }
}
        %>
