<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profilefac.aspx.cs" Inherits="profilefac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PROFILE</title>
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
<hr>
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

            <asp:DataList ID="DataList1" runat="server" DataKeyField="staff_id" DataSourceID="SqlDataSource1"  >
             <ItemTemplate>
        <br />   
        <table class = "table" border="0">
        <tr>
                <td>
                    
                    <asp:Label ID="lblsnm" runat="server" Text="Name :" CssClass="label" />
                
                </td>
            <td>
                    <asp:TextBox ReadOnly="true"  ID="txtsnm" runat="server" Text='<%# Eval("susername") %>'  />
                       
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="lblsemail" runat="server" Text="Email :" CssClass="label" />
                </td>
                <td>
                    <asp:TextBox ReadOnly="true" ID="txtsemail" runat="server" Text='<%# Eval("email_id") %>' />
                    
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="lblspwd" runat="server" Text="Password :" CssClass="label" />
                </td>
                <td>
                
                    <asp:TextBox ID="txtspwd" ReadOnly="true" runat="server" Text='<%# Eval("spwd") %>' />
                    
                </td>
            </tr>
            <tr>
                <td>
                <asp:Button ID="Btnupdate" runat="server" Text="Update" OnClick="Btnupdate_Click" CssClass="btn" />
                </td>
                <td>
                    <asp:Button ID="Btnclear" runat="server" Text="BACK" OnClick="Btnclear_Click" CssClass="btn" />
                </td>

            </tr>
        </table>    
    </ItemTemplate>
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBERConnectionString %>" ProviderName="<%$ ConnectionStrings:DBERConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblstaff] WHERE ([susername] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="susername" SessionField="unm" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

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
