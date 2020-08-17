<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpass.aspx.cs" Inherits="forgetpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
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

    <style>  
.style1  
{  
width: 225px;  
}  
.style2  
{  
width: 155px;  
}  
.style6  
{  
text-align: left;  
font-size: large;  
text-decoration: underline;  
color: #0000FF;  
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
</head>
<body>
    <form id="form1" runat="server">
        <div>  
                <table style="width:100%;">  
                    <caption class="style6">  
                        <strong>ForgetPassword:</strong>  
                    </caption>  
                    <tr>  
                        <td class="style1">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>
                    
                    <tr>  
                        <td class="style1">  
   
                        </td>  
                        <td class="style2">  
UserName:
                        </td>  
                        <td>  <asp:TextBox ID="TextBox2" runat="server">  
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300" ValidationGroup="a">*User Name is Required</asp:RequiredFieldValidator>
 </td>  
                        <td>  
 </td>  
                    </tr>
                    <tr>  
                        <td class="style1">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>


                    <tr>  
                        <td class="style1">  
   
                        </td>  
                        <td class="style2">  
EmailId:  
                        </td>  
                        <td>  
                            <asp:TextBox ID="TextBox1" runat="server">  
                            </asp:TextBox>  
                            <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300" ValidationGroup="a">*Email is Required</asp:RequiredFieldValidator>
                        </td>  
                        <td>  
 </td>  
                    </tr> 
                    

                    <tr>  
                        <td class="style1">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="lbmsg" runat="server">  
                            </asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back to Login  
                            </asp:LinkButton>  
                        </td>  
                        <td>  
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" CssClass="btn" ValidationGroup="a"/>  
                        </td>  
                        <td>  
 </td>  
                    </tr>  
                </table>  
            </div>
        <div>    
  <div class="footer">
      <hr />
    <p><a href="home.aspx">HOME PAGE</a> | <a href="contact.aspx">CONTACT US</a> | <a href="login1.aspx">FACULTY MEMBER</a> | <a href="login1.aspx">ADMIN</a> | <a href="stulogin.aspx">STUDENT</a> | <a href="stu_reg.aspx">REGiSTRATION</a> | <a href="aboutus.aspx">ABOUT US</a> <br/>
      Copyright &copy; E-Resource System | Design by <a>Prit Mehta</a></p>
  </div>
</div>
    </form>
</body>
</html>
