<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 148px;
        }
    </style>
    
<table>
    <center>
    <td>
        <th>
            <img src="srki.png" alt="logo" style="width: 103px; height: 93px">
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

        
            <asp:Label ID="lblfail" runat="server" ForeColor="#CC0000"></asp:Label>
            <div>
                
                       <br />
                <center>
            <table cellpedding="10" cellspacing="5">
                <tr>
                    <td colspan="2">
                        <center><h1>Login</h1></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbluser" runat="server" Text="Username"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="rflogin" runat="server" ErrorMessage="*Username is Reuired" ForeColor="Red" ControlToValidate="txtusername" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>
                </tr>
               
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtpwd" runat="server" type="password" Height="30px" Width="193px"></asp:TextBox>
                <td>

                        <asp:RequiredFieldValidator ID="rfpass" runat="server" ErrorMessage="*Password is Reuired" ForeColor="Red" ControlToValidate="txtpwd" ValidationGroup="a"></asp:RequiredFieldValidator>

                    </td>
                        </tr>
                <tr>
                    <td class="auto-style1">
                        <center><asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" CssClass="btn" Height="36px" Width="85px" style="margin-left: 42px" ValidationGroup="a" /></center> 
                    </td>
                    <td>
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" Height="36px" Width="85px" OnClick="btncancel_Click" CssClass="btn"></asp:Button>
                    </td>
                </tr>
                </table>
                </center>
        
                 
           
            

                 
                  
           
                
        </div>

      
<!-- Footer -->
            <div>    
  <div class="footer">
      <hr />
      <p><a href="#">HOME PAGE</a> | <a href="contact.aspx">CONTACT US</a> | <a href="pro_2/login.aspx">FACULTY MEMBER</a> | <a href="pro_2/login.aspx">ADMIN</a> | <a href="stulogin.aspx">STUDENT</a> | <a href="stu_reg.aspx">REGSTRATION</a> | <a href="#">HELP</a> <br/>
      Copyright &copy; E-Resource System | Design by <a>Prit Mehta</a></p>
  </div>
</div>
           
    
      <%--          
       <footer class="site-footer" style="position: absolute;
  right: 0;
  
 
  padding: 1rem;
  
  text-align: left;">

      <div class="container">
        
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">

          </div>

          
        </div>
      </div>
          </div>
</footer>--%>
    </form>
</body>
</html>
