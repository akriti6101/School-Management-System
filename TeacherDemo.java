package Teacher.Demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Student.Bean.Student;
import Teacher.Bean.*;
import Teacher.Bean.*;
public class TeacherDemo {

	
	   public int setData(Teacher t)
	   {
		   
		   try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {}
		   try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
			String query="insert into tea (Name,Id,Dob,Email,Mobile_no,Designation,Subject_Faculty,Class_Assigned)"
					+ " values(?,?,?,?,?,?,?,?)";
			PreparedStatement prepareStatement=con.prepareStatement(query);
			prepareStatement.setString(1,t.getName());
			prepareStatement.setString(2,t.getId());
			prepareStatement.setString(3,t.getDob());
			prepareStatement.setString(4,t.getEmail());
			prepareStatement.setString(5,t.getMobile_no());
			prepareStatement.setString(6,t.getDesignation());
			prepareStatement.setString(7,t.getSub_Faculty());
			prepareStatement.setString(8,t.getClass_Assigned());
		
			int r=prepareStatement.executeUpdate();
			
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		   
		return 0;
		   
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   public int findstu(String n,String i,String s)
	   {ResultSet rs=null;

		    try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					String query="   select * from stud where Name='"+n+"' and id='"+i+"' and (sub1='"+s+"' or sub2='"+s+"'or sub3='"+s+"' or sub4='"+s+"' or sub5='"+s+"' or sub6='"+s+"' or sub7='"+s+"'	 )" ;
					Statement st=con.createStatement();
					 rs=st.executeQuery(query);
					 if(rs.next())
						   return 1;
					 else
						 return 0;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return 0;
	   }
	   
	   
	   
	   
	   
	   
	   

	   public int find(String n,String i)
	   {ResultSet rs=null;

		    try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					String query="   select * from tea where Name='"+n+"' and id='"+i+"' " ;
					Statement st=con.createStatement();
					 rs=st.executeQuery(query);
					 if(rs.next())
						   return 1;
					 else
						 return 0;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return 0;
	   }
	   public Teacher getData(String n,String i	)
	   {ResultSet rs=null;
		   
		   try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					String query="   select * from tea where Name='"+n+"' and id='"+i+"'" ;
					Statement st=con.createStatement();
					 rs=st.executeQuery(query);
					 Teacher s=new Teacher();
					 while(rs.next())
					 {s.setName(rs.getString("Name"));
					   s.setId(rs.getString("Id"));
					   s.setDob(rs.getString("Dob"));
					   s.setEmail(rs.getString("Email"));
					   s.setMobile_no(rs.getString("Mobile_no"));
					   s.setDesignation(rs.getString("Designation"));
					   
					   s.setSub_Faculty(rs.getString("Subject_Faculty"));
					   s.setClass_Assigned(rs.getString("Class_Assigned"));
					
					   
					   break;
					   
						 
					 }
					 return s;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		return null;
		   
	   }
	   
	   
	   public List<Student> getStuData(String n,String sub,ArrayList<String>m, ArrayList<String> w)
	   {ResultSet rs=null;
	   String q="";int r=1,l=1;
	   List<Student>ls=new ArrayList<Student>();
	   Teacher t=this.getData(n, sub);
	
	   if(t.getSub_Faculty().equals("science"))
	   { q="m_s1";
	     l=7;
	   
	   r=14;
	     
	   }
	   if(t.getSub_Faculty().equals("English"))
	   { q="m_s2";
	   r=15;l=8;
	     
	   }
	   if(t.getSub_Faculty().equals("Social_sci"))
	   { q="m_s3";
	   r=16;l=9;
	     
	   }
	   if(t.getSub_Faculty().equals("Maths"))
	   { q="m_s4";
	     r=17;l=10;
	   }
	   if(t.getSub_Faculty().equals("Sanskrit"))
	   { q="m_s5";
	   r=18;l=11;
	     
	   }
	   if(t.getSub_Faculty().equals("Computer"))
	   { q="m_s6";
	   r=19;l=12;
	     
	   }
	   if(t.getSub_Faculty().equals("Phy. Edu"))
	   { q="m_s7";
	   r=20;l=13;
	     
	   }
	
	   String cl=t.getClass_Assigned();
	   String i=t.getSub_Faculty();
	   
		   try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					String query="   select * from stud where std='"+cl+"' and (sub1='"+i+"' or sub2='"+i+"'"
							+ " or sub3='"+i+"' or sub4='"+i+"' or sub5='"+i+"' or sub6='"+i+"' or sub7='"+i+"')" ;
					Statement st=con.createStatement();
					 rs=st.executeQuery(query);

						
					 while(rs.next())
					 {Student s=new Student();
						 s.setName(rs.getString("Name"));
					
					   s.setId(rs.getString("id"));
					if(rs.getString(r)==null)
						  m.add("0");
					else
					{  m.add(rs.getString(r));}
					
				
						   
					w.add(rs.getString(l));
					   
					   ls.add(s);
				
					   
			
			 
					 }
					 return ls;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		return null;
		   
	   }
	  
	   
	   
	   public void enterMarks(String n,String id,String sub, int m)
	   {ResultSet rs=null;
	   String r="";int l=0;
	 
	  
	 
		   try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					
					 if(sub.equals("science"))
					  {
						 String q="update stud set m_s1='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
							Statement st=con.createStatement();
							
							int t=st.executeUpdate(q);
							
							   System.out.println(t);
					  
					  }
				if(sub.equals("English"))
				{  String q="update stud set m_s2='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
				Statement st=con.createStatement();
				
				int t=st.executeUpdate(q);
				
				   System.out.println(t);}
				if(sub.equals("Social_sci"))
				{  String q="update stud set m_s3='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
				Statement st=con.createStatement();
				
				int t=st.executeUpdate(q);
				
				   System.out.println(t);}
				
				if(sub.equals("Maths"))
				{  String q="update stud set m_s4='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
				Statement st=con.createStatement();
				
				int t=st.executeUpdate(q);
				
				   System.out.println(t);}
				
				if(sub.equals("Sanskrit"))
					  { String q="update stud set m_s5='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
						Statement st=con.createStatement();
						
						int t=st.executeUpdate(q);
						
						   System.out.println(t);}
				if(sub.equals("Computer"))
				{ String q="update stud set m_s6='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
				Statement st=con.createStatement();
				
				int t=st.executeUpdate(q);
				
				   System.out.println(t);}
				if(sub.equals("Phy. Edu"))
					  { String q="update stud set m_s7='"+m+"' where  Name='"+n+"' and id='"+id+"'  ";
						Statement st=con.createStatement();
						
						int t=st.executeUpdate(q);
						
						   System.out.println(t);}
					
					
				
					 
					   
				               
			 
					 
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

		   
	   }
	  
	   
	   
}
