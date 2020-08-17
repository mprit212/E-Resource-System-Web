<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Profile</title>
 
<table>
<center>
<td>
<th>
    <img src="srki.png" alt="logo" style="width: 103px; height: 93px"/>
</th>
<th>
    <h2>SHREE&nbsp; RAMKRISHNA&nbsp;  INSTITUTE&nbsp;  OF&nbsp; COMPUTER&nbsp; EDUCATION&nbsp; AND&nbsp; APPLIED&nbsp; SCIENCES</h2>
</th>
</td>
</center>
</table>
<br />
<hr />
</head>
<body>
    <style>
                .auto-style1 {
            width: 148px;
        }


        .btn{
  background-color:black ;
  color: white;
  border: 2px solid #555555;
}

.btn:hover {
  background-color: white;
  color:#555555;
}

.footer { 
  height:48px; clear:both; 
}

 p{padding: 7px 0 0 0; font:14px Tahoma, sans-serif; font-weight:normal; text-align:center; color:#3b3b21;}

 p a{font:14px Tahoma, sans-serif; font-weight:normal; color:#3b3b21; text-decoration:none; padding: 0 7px }

 p a:hover{text-decoration:underline; color:#3b3b21}
               
           </style>
    <form id="form1" runat="server">
        <div>
            <center>
            <table class = "table" border="0" >
            
            <tr>
                <td>
                   
                    <asp:Label ID="lblsnm" runat="server" Text=" Name :" CssClass="label" /><br />
                </td>
                <td>
                
                    <asp:TextBox   ID="txtsnm" runat="server" Text=""  />
                    
                </td>
            </tr>
            <tr>
                <td>
                   
                    <asp:Label ID="lblsemail" runat="server" Text=" Email :" CssClass="label" />
                <br />
                </td>
                <td>
                    <asp:TextBox  ID="txtsemail" runat="server" Text="" />
                    
                </td>
            </tr>
            <tr>
                <td>
                   
                    <asp:Label ID="lblspwd" runat="server" Text=" Password :" CssClass="label" />
                <br />
                </td>
                <td>
                    <asp:TextBox ID="txtspwd"  runat="server" Text="" />
                                    </td>
            </tr>
            
            <tr>
                <td>
                <asp:Button ID="Btnupdate" runat="server" Text="Update"  OnClick="Btnupdate_Click" CssClass="btn"/>
                </td>
                <td>
                    <asp:Button ID="Btnclear" runat="server" Text="Back" OnClick="Btnclear_Click" 
                        CssClass="btn" PostBackUrl="~/profilefac.aspx" />
                </td>

            </tr>
        </table>
                </center>
        </div>
          <div>    
  <div class="footer">
      <hr />
      
              <p><a href="home.aspx">HOME PAGE</a> | <a href="contact.aspx">CONTACT US</a> | <a href="login1.aspx">FACULTY MEMBER</a> | <a href="login1.aspx">ADMIN</a> | <a href="stulogin.aspx">STUDENT</a> | <a href="stu_reg.aspx">REGISTRATION</a> | <a href="aboutus.aspx">ABOUT US</a> <br/>
      Copyright &copy; E-Resource System | Design by <a>Prit Mehta</a></p>
 
  </div>
</div>
    </form>
</body>
</html>
