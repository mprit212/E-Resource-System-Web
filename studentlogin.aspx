<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="studentlogin" %>

<DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    
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
        <form id="form1" autocomplete="off" runat="server">

        
            <div>
                
                       <br />
                <center>
            <table cellpedding="10" cellspacing="5">
                <tr>
                    <td colspan="2">
                        <center><h1>Login</h1></center>
                    </td>
                </tr>
                </table>
                    <asp:Panel ID="panel1" runat="server">
                    <table cellpedding="10" cellspacing="5">
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbluser" runat="server" Text="Enter Name "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="rflogin" runat="server" ErrorMessage="*Name is Required" ForeColor="Red" ControlToValidate="txtname" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>
                </tr>
               
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblpwd" runat="server" Text="Enter Mobile Number "></asp:Label></td>
                    <td><asp:TextBox ID="txtmno" runat="server"  Height="30px" Width="193px"></asp:TextBox></td>
                <td>

                        <asp:RequiredFieldValidator ID="rfpass" runat="server" ErrorMessage="*Mobile Number is Required" ForeColor="Red" ControlToValidate="txtmno" ValidationGroup="a"></asp:RequiredFieldValidator>

                    </td>
                        </tr>
                <tr>
                    <td class="auto-style1">
                        
                    </td>
                    <td>
                 <asp:Button ID="btnlogin" runat="server" Text="Send OTP" OnClick="btnlogin_Click" CssClass="btn" Height="36px" Width="104px" style="margin-left: 42px" ValidationGroup="a" />    
                   
                    </td>
                    <td>
                    <asp:HyperLink ID="hy1" runat="server" Text="Another Way to Login ?"  NavigateUrl="~/stulogin.aspx"></asp:HyperLink>
                    </td>
                </tr>
                </table>
                        </asp:Panel>


                    <asp:Panel ID="panel2" runat="server" Visible="false">


                        <table cellpedding="10" cellspacing="5">
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Enter OTP Number "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Txtotp" runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*OTP is Required" ForeColor="Red" ControlToValidate="txtotp" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>
                </tr>
               
                
                <tr>
                    <td class="auto-style1">
                        
                    </td>
                    <td>
                 <asp:Button ID="Button1" runat="server" Text="Verify OTP" OnClick="Button1_Click" CssClass="btn" Height="36px" Width="104px" style="margin-left: 42px" ValidationGroup="a" />    
                   
                    </td>
                    <td>
                    <asp:Button id="btnbk" runat="server" CssClass="btn" Text="Back" Height="36px" 
                            Width="104px" onclick="btnbk_Click"  />
                    </td>
                </tr>
                </table>


                    </asp:Panel>

                </center>
        
                 
           
            

                 
                  
           
                
        </div>

      
<!-- Footer -->
            <div>    
  <div class="footer">
      <hr />
    <p><a href="home.aspx">HOME PAGE</a> | <a href="contact.aspx">CONTACT US</a> | <a href="login1.aspx">FACULTY MEMBER</a> | <a href="login1.aspx">ADMIN</a> | <a href="stulogin.aspx">STUDENT</a> | <a href="stu_reg.aspx">REGISTRATION</a> | <a href="aboutus.aspx">ABOUT US</a> <br/>
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
