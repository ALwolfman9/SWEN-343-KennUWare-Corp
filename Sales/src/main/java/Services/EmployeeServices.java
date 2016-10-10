/**
 * Created by John King on 07-Oct-16.
 */

package Services;

import Sales.Employees.*;
import Sales.*;
import java.util.ArrayList;

import static spark.Spark.get;

public class EmployeeServices {
    //Called when someone logs in
    //Search through database for employee, check if password is right
    public static Employee login(String username, String password){
        if(username.equals("Timmy") & password.equals("password")) {
            System.out.println("Employee logged in!");
            return new SalesRep(username, "1", 6.8, .5, 1000.0, new OrderHistory());
        }
        else{ // fail case
            return null;
        }
    }

    //Called when a list of employees is needed
    //Get all employees and return an Arraylist of them
    public static ArrayList<Employee> getEmployees(){
        return null;
    }

    ////Called when a list of employees is needed from a region
    //Get all employees and return an Arraylist of them
    public static ArrayList<Employee> getEmployees(String region){
        return null;
    }

    ////Called when a list of employees is needed from a specific store
    //Get all employees and return an Arraylist of them
    public static ArrayList<Employee> getEmployees(String region, String store){
        return null;
    }

    //Called when revenue from an employee is needed
    //Search through database for specific employee, and return their revenue
    public static double getEmployeeRevenue(String id){
        return 0;
    }
}