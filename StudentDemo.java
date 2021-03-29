package Student.Demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Student.Bean.*;
public class StudentDemo {
	   public int SetData(Student s)throws SQLException
	   {
		    try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    try {
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
				String query="insert into stud (Name,Dob,std,id,Email,Mobile_no,sub1,sub2,sub3,sub4,sub5,sub6,sub7)"
						+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement prepareStatement=con.prepareStatement(query);
				
				prepareStatement.setString(1,s.getName());
				prepareStatement.setString(2,s.getDob());
				prepareStatement.setString(3,s.getStd());
				prepareStatement.setString(4,s.getId());
				prepareStatement.setString(5,s.getEmail());
				prepareStatement.setString(6,s.getMobile_no());
				
				prepareStatement.setString(7,s.getSub1());
				prepareStatement.setString(8,s.getSub2());
				prepareStatement.setString(9,s.getSub3());
				prepareStatement.setString(10,s.getSub4());
				prepareStatement.setString(11,s.getSub5());
				prepareStatement.setString(12,s.getSub6());
				prepareStatement.setString(13,s.getSub7());
				
				int r=prepareStatement.executeUpdate();
				return r;
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
					String query="   select * from stud where Name='"+n+"' and id='"+i+"' " ;
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
	   public Student getData(String n,String i	)
	   {ResultSet rs=null;
		   
		   try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					String query="   select * from stud where Name='"+n+"' and id='"+i+"'" ;
					Statement st=con.createStatement();
					 rs=st.executeQuery(query);
					 Student s=new Student();
					 while(rs.next())
					 {s.setName(rs.getString("Name"));
					   s.setDob(rs.getString("Dob"));
					   s.setStd(rs.getString("std"));
					   s.setId(rs.getString("id"));
					   s.setEmail(rs.getString("Email"));
					   s.setMobile_no(rs.getString("Mobile_no"));
					   break;
					   
						 
					 }
					 return s;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		return null;
		   
	   }
	   
	   public List<String> getSub(String n,String i,List<Integer> m)
	   {
		   
ResultSet rs=null;
		   List<String> ls=new ArrayList<String>();
		 
		   try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
				try {
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
					String query="   select *from stud where Name='"+n+"' and id='"+i+"'" ;
					Statement st=con.createStatement();
					 rs=st.executeQuery(query);
					 Student s=new Student();
					 while(rs.next())
					 {if(rs.getString(7)!=null)
					  	     {ls.add(rs.getString(7));
					  	        if(rs.getInt(14)==-1)
					  	        	  m.add(0);
					  	        else
					  	        	  m.add(rs.getInt(14));
					  	     }					  	     
					 if(rs.getString(8)!=null) {
						ls.add(rs.getString(8));
						  if(rs.getInt(15)==-1)
			  	        	  m.add(0);
			  	        else
			  	        	  m.add(rs.getInt(15));
					 }
					 if(rs.getString(9)!=null) {
						 ls.add(rs.getString(9)); 
						  if(rs.getInt(16)==-1)
			  	        	  m.add(0);
			  	        else
			  	        	  m.add(rs.getInt(16));
					 }
					 if(rs.getString(10)!=null) {
						 ls.add(rs.getString(10));
						  if(rs.getInt(17)==-1)
			  	        	  m.add(0);
			  	        else
			  	        	  m.add(rs.getInt(17));
					 }
					 if(rs.getString(11)!=null) {
						 ls.add(rs.getString(11));
						  if(rs.getInt(18)==-1)
			  	        	  m.add(0);
			  	        else
			  	        	  m.add(rs.getInt(18));
	                  }
					 if(rs.getString(12)!=null) {
						 ls.add(rs.getString(12));
						  if(rs.getInt(19)==-1)
			  	        	  m.add(0);
			  	        else
			  	        	  m.add(rs.getInt(19));
				  	        }
					 
					 if(rs.getString(13)!=null) {
						 ls.add(rs.getString(13));
						  if(rs.getInt(20)==-1)
			  	        	  m.add(0);
			  	        else
			  	        	  m.add(rs.getInt(20));
				  	        }
					   break;
					   
						 
					 }
					 return ls;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		   
		   
		return null;
		   
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   

}
