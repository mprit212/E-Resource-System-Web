<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CONTACT US</title>
     
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

 p{padding: 10px 0 0 0; font:14px Tahoma, sans-serif; font-weight:normal; text-align:center; color:#3b3b21;}

 p a{font:14px Tahoma, sans-serif; font-weight:normal; color:#3b3b21; text-decoration:none; padding: 0 10px }

 p a:hover{text-decoration:underline; color:#3b3b21}
               .auto-style2 {
                   font-size: xx-large;
               }

           </style>

    <form id="form1" runat="server">
        <div>
    <fieldset>
    <legend><h3>Contact Us</h3></legend> 
    <div class='short_explanation'>* Required Fields</div>
    
    <div class='container'>
    <asp:Label ID="lblName" runat="server" 
               Text="Your Name*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtName" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtName" 
                                ErrorMessage="*Enter Your Name" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblEmail" runat="server" 
               Text="Email*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMail" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtMail" 
                                ErrorMessage="*Please Provide 
                                             Your Email Address" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblSubject" runat="server" 
              Text="Subject*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtSubject" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" 
                                ControlToValidate="txtSubject" 
                                ErrorMessage="*Please provide 
                                            reason to contact us" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblMessage" runat="server" 
               Text="Feedback:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMessage" runat="server" 
                 TextMode="MultiLine" Width="268px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtMessage" 
                                ErrorMessage="*Write your feedback" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Button ID="btnSubmit" runat="server" 
                Text="Submit" OnClick="btnSubmit_Click"  />
    </div>
  
    </fieldset>
   <asp:Label ID="Label1" runat="server" Text="Thank you for feedback !" ForeColor="Red" Visible="false" />
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
