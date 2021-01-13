/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hvpm.dcpe;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;
public class Student 
{
  


	
private int sid;
private String name; 
private String email;
private String phone; 
private String DOB;
private String loc;
private String gender; 
private String pass;


private String vtype;
private String vno;
private int vrent;

private String source;
private String destination;
private int dkm;
private int bookd;
private String gname;



public String getSource() {
	return source;
}




public void setSource(String source) {
	this.source = source;
}




public String getDestination() {
	return destination;
}




public void setDestination(String destination) {
	this.destination = destination;
}




public int getDkm() {
	return dkm;
}




public void setDkm(int dkm) {
	this.dkm = dkm;
}




public int getBookd() {
	return bookd;
}




public void setBookd(int bookd) {
	this.bookd = bookd;
}




public String getGname() {
	return gname;
}




public void setGname(String gname) {
	this.gname = gname;
}




public String getVtype() {
	return vtype;
}




public void setVtype(String vtype) {
	this.vtype = vtype;
}




public String getVno() {
	return vno;
}




public void setVno(String vno) {
	this.vno = vno;
}







public int getVrent() {
	return vrent;
}




public void setVrent(int vrent) {
	this.vrent = vrent;
}




public int getSid() {
	return sid;
}




public void setSid(int sid) {
	this.sid = sid;
}


public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}


public void setPhone(String phone) {
	this.phone = phone;
}

public String getDOB() {
	return DOB;
}

public void setDOB(String dOB) {
	DOB = dOB;
}

public String getLoc() {
	return loc;
}

public void setLoc(String loc) {
	this.loc = loc;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}




public boolean insert() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into snuser(name,pass,email,DOB,phone,loc,gender) values(?,?,?,?,?,?,?)";
        
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,name);
        smt.setString(2,pass);
        smt.setString(3,email);
        smt.setString(4,DOB);
        smt.setString(5,phone);
        smt.setString(6,loc);
        smt.setString(7,gender);
      
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}




public boolean vinsert() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into vehicle(name,vtype,vno,vrent) values(?,?,?,?)";
        
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,name);
        smt.setString(2,vtype);
        smt.setString(3,vno);
        smt.setInt(4,vrent);
       
      
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}




public boolean bookinginsert() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into booking(name,email,vtype,vno,vrent,source,destination,dkm,bookd,gname) values(?,?,?,?,?,?,?,?,?,?)";
                
        PreparedStatement smt=con.prepareStatement(msql);
        
        smt.setString(1,name);
        smt.setString(2,email);
        smt.setString(3,vtype);
        smt.setString(4,vno);
        smt.setInt(5,vrent);
        smt.setString(6,source);
        smt.setString(7,destination);
        smt.setInt(8,dkm);
        smt.setInt(9,bookd);
        smt.setString(10,gname);
      
        
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}


public Vector list2(int max)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from vehicle order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
          Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setName(rs.getString("name"));
          s.setVtype(rs.getString("vtype"));
          s.setVno(rs.getString("vno"));
          s.setVrent(rs.getInt("vrent"));
       
          vlist.add(s);
          
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}


public Vector list(String pattern)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from vehicle where name like '"+pattern+"%' OR vtype like '"+pattern+"%' order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
    	  Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setName(rs.getString("name"));
          s.setVtype(rs.getString("vtype"));
          s.setVno(rs.getString("vno"));
          s.setVrent(rs.getInt("vrent"));
       
         
          vlist.add(s);
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}



public Vector list123(String pattern)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from booking where name like '"+pattern+"%' OR vtype like '"+pattern+"%' order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
    	  Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setName(rs.getString("name"));
          s.setEmail(rs.getString("email"));
          s.setVtype(rs.getString("vtype"));
          s.setVno(rs.getString("vno"));
          s.setVrent(rs.getInt("vrent"));
          s.setSource(rs.getString("source"));
          s.setDestination(rs.getString("destination"));
          s.setDkm(rs.getInt("dkm"));
          s.setBookd(rs.getInt("bookd"));
          s.setGname(rs.getString("gname"));
         
          vlist.add(s);
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}







public boolean delete() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="DELETE FROM vehicle WHERE sid= "+sid+"";
        PreparedStatement smt=con.prepareStatement(msql);
     
         smt.executeUpdate();
        
        return true;
    }
   catch(SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}



public boolean deleteb() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="DELETE FROM booking WHERE sid= "+sid+"";
        PreparedStatement smt=con.prepareStatement(msql);
     
         smt.executeUpdate();
        
        return true;
    }
   catch(SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}





public boolean update22() throws ClassNotFoundException
{
    try{
   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="Update vehicle set name=?,vtype=?,vno=?,vrent=? where sid=" +sid;
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,name);
        smt.setString(2,vtype);
        smt.setString(3,vno);
        smt.setInt(4,vrent);
       
        System.out.println(name+vno+vtype+vrent);
        
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}



















    
    
    
}

    
    


