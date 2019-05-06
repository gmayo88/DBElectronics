
package callcenter;
import java.util.Scanner;
import java.sql.*;

public class CallCenter {
    
    private static Scanner input  = new Scanner(System.in);
    public static void main(String[] args) { 
   
        int selection = 0;
        //loop menu
        while(selection != 2)
        {
        System.out.printf("1) Find Customer \n2) Exit\n");
        selection = input.nextInt();
        switch(selection)
        {
            case 1: findCustomer();
            break;
            case 2:
            break;
            default: System.out.printf("Invalid Selection!/n");
            break;
        }
        }
    }
    
    //find customer data
    public static void findCustomer()
    {
      String DB_URL = "jdbc:mysql://localhost/mysql";
      String DB_USER = "root";
      String DB_PASSWD = "root";
      Connection connection = null;
      Statement statement = null;
      ResultSet resultSet = null;
       //get last and first name to filter through DB
        String lastName;
        String firstName;
        System.out.print("Enter the customer's last name: ");
        lastName = input.next();
        System.out.print("Enter the customer's first name: ");
        firstName = input.next(); 

      try{
         connection=DriverManager.getConnection
            (DB_URL,DB_USER,DB_PASSWD);
         statement=connection.createStatement();
         PreparedStatement firstAndLast = null;
         String fAndL = "select * from customer WHERE first_name = ? AND last_name = ?"; 
         
         firstAndLast = connection.prepareStatement(fAndL);
         firstAndLast.setString(1, firstName);
         firstAndLast.setString(2, lastName);
                 
           resultSet = firstAndLast.executeQuery();

         while(resultSet.next()){
            System.out.printf("Customer ID: %s\nFirst Name: %s\n"
                    + "Last Name: %s\nEmail: %s\nPhone Number: %s\n"
                    + "Street Address: %s\nStreet Address 2: %s\nCity: %s\nState: %s\n"
                    + "Zip: %s\n\n",
            resultSet.getString(1),
            resultSet.getString(2),
            resultSet.getString(3),
            resultSet.getString(4),
            resultSet.getString(5),
            resultSet.getString(6),
            resultSet.getString(7),
            resultSet.getString(8),
            resultSet.getString(9),
            resultSet.getString(10)
            );
         }
      }catch(SQLException ex){
      }finally{
         try {
            resultSet.close();
            statement.close();
            connection.close();
              
         } catch (SQLException ex) {
         }
              
              
      }   
   }
}