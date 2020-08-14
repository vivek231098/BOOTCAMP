public class EmpWage {

   public static void main(String[] args){
   System.out.println("Welcome to Employee Wage Computation Program");
	int IS_FULL_TIME = 1;
	int PART_TIME = 2;
	int EMP_RATE_PER_HR=20;		
	int salary=0;
	
		double empCheck = Math.floor(Math.random() * 10) % 2;
      	if  (empCheck == IS_FULL_TIME)
			{
				int EMP_HRS=8;
	         System.out.println("Employee is present");
         	salary=(EMP_RATE_PER_HR*EMP_HRS);
				System.out.println("Salary of Employee is" +salary);
			}
			else if (empCheck == PART_TIME)
			{
				int EMP_HRS=4;
				salary=(EMP_HRS*EMP_RATE_PER_HR);
				System.out.println("Employee is Part Time");
				System.out.println("Salary of PartTime Employee is" +salary);
			}
			else
			{          
  				System.out.println("Employee is absent");
				System.out.println("Salary is 0");
	   	}
	switch(empCheck)
			{
			case IS_FULL_TIME :
				int emp_hrs=8;
				salary=(EMP_RATE_PER_HR*emp_hrs);
				System.out.println("Salary for full time is :" +salary);
				break;
			case PART_TIME :
				int emp_hrs=4;
				salary=(EMP_RATE_PER_HR*emp_hrs);
				System.out.println("Salary is :" +salary);
				break;
			default :
				int emp_hrs=0;
				System.out.println("Salary is 0");
			}
	}
}
