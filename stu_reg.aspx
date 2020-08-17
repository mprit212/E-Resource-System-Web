<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_reg.aspx.cs" Inherits="stu_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 148px;
        }
    </style>
    
<table>
    <center>
    <td>
        <th>
            <img src="srki.png" alt="logo" style="width: 103px; height: 93px" />
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

 p{padding: 10px 0 0 0; font:14px Tahoma, sans-serif; font-weight:normal; text-align:center; color:#3b3b21;}

 p a{font:14px Tahoma, sans-serif; font-weight:normal; color:#3b3b21; text-decoration:none; padding: 0 10px }

 p a:hover{text-decoration:underline; color:#3b3b21}
               .auto-style2 {
                   font-size: xx-large;
               }

           </style>

    <form id="form1" runat="server" autocomplete="off">
        <div>

            <center>
            <table cellpedding="10" cellspacing="5">
                <tr>
                    <td colspan="2" >
                      <center><h1>Registration</h1></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblsnm" runat="server" Text="Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtsnm" runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="rfsnm" runat="server" ErrorMessage="* Name is Required" ForeColor="Red" ControlToValidate="txtsnm" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>
                </tr>
               
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblsemail" runat="server" Text="Email:"></asp:Label></td>
                    <td><asp:TextBox ID="txtemail" runat="server"  Height="30px" Width="193px"></asp:TextBox></td>
                <td>

                        <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="*Email is Required" ForeColor="Red" ControlToValidate="txtemail" ValidationGroup="a"></asp:RequiredFieldValidator>

                    </td>
                        </tr>
                
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbldob" runat="server" Text="Mobile Number:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtdob"  runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="Rfdob" runat="server" ErrorMessage="* Mobile Number is Required" ForeColor="Red" ControlToValidate="txtdob" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>
                    <td>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtdob"
                        ErrorMessage="*Please enter a valid Mobile Number" Operator="DataTypeCheck" Type="Integer" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblern" runat="server" Text="Enrollment Number:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txterno" runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="Rfer" runat="server" ErrorMessage="* Enrollment Number is Reuired" ForeColor="Red" ControlToValidate="txtsnm" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>
                </tr>
                <tr>
                
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Date Of Birth:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtdob1" placeholder="dd-mm-yy" runat="server" Height="30px" Width="193px"></asp:TextBox>
               
                        </td>

                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Date Of Birth is Reuired" ForeColor="Red" ControlToValidate="txtdob1" ValidationGroup="a"></asp:RequiredFieldValidator>

               </td>



                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="btn" Height="36px" Width="85px" style="margin-left: 42px" ValidationGroup="a" /> 
                    </td>
                    <td>
                        <asp:Button ID="Btnlogin" runat="server" Text="Login" OnClick="Btnlogin_Click" CssClass="btn" Height="36px" Width="85px" style="margin-left: 42px"/>
                    </td>
                   <td>
                       <asp:Label ID="lblmesg" runat="server" Text="Registration Sucessfully !!" 
                           Font-Bold="True" Visible="False"></asp:Label>
                   </td>
                </tr>
                </table>
                </center>

        </div>
  <div>    
  <div class="footer">
      <hr />
      <p><a href="home.aspx">HOME PAGE</a> | <a href="contact.aspx">CONTACT US</a> | <a href="login1.aspx">FACULTY MEMBER</a> | <a href="login1.aspx">ADMIN</a> | <a href="stulogin.aspx">STUDENT</a> | <a href="stu_reg.aspx">REGISTRATION</a> | <a href="#">HELP</a> <br/>
      Copyright &copy; E-Resource System | Design by <a>Prit Mehta</a></p>
  </div>
</div>   </form>
</body>
</html>
