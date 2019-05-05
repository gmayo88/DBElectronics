
package callcenter;
import java.util.Scanner;
import java.sql.*;

public class CallCenter {
    
    private static Scanner input  = new Scanner(System.in);
    public static void main(String[] args) { 
        
        connectToDatabase();
        int selection = 0;
        //loop menu
        while(selection != 3)
        {
        System.out.printf("1) Find Customer \n2) Create Order \n3) Exit\n");
        selection = input.nextInt();
        switch(selection)
        {
            case 1: findCustomer();
            break;
            case 2: createOrder();
            break;
            case 3:
            break;
            default: System.out.printf("Invalid Selection!/n");
            break;
        }
        }
    }
    
    //find customer data
    public static void findCustomer()
    {
        //get last and first name to filter through DB
        String lastName;
        String firstName;
        System.out.print("Enter the customer's last name: ");
        lastName = input.next();
        System.out.print("Enter the customer's first name: ");
        firstName = input.next();   
    }
    
    public static void connectToDatabase()
    {
    try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/sonoo","root","root");  
//here sonoo is database name, root is username and password  
}catch(Exception e){ System.out.println(e);}
       
    }
    
    public static void createOrder()
    {
        
    }
}