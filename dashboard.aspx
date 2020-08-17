<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dash Board</title>
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
                 
        .auto-style1 {
            width: 36%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 190px;
        }
                 
        .auto-style5 {
            width: 448px;
        }
        .auto-style6 {
            width: 393px;
        }
                 
        </style>  
</head>
<body>
    <form id="form1" runat="server">
        <div>  
                    

                <table style="width:100%;">  
                    <caption class="style6">  
                        <strong>Dash Board:</strong>  
                        
                        </caption>

                    </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButtonList ID="RadioButtonList1" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" runat="server">
                                        <asp:ListItem>Faculty Member Resources</asp:ListItem>
                                        <asp:ListItem>Student Resources</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            </table>
                        <br />
            <asp:Panel ID="Panelfaculty" Visible="false" runat="server">
                        <table style="width:100%;">
                       
                      
                    <tr>  
                        <td class="auto-style6">  
   
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Faculty Member Resources :&nbsp;</td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
Subject:  
                        </td>  
                        <td>  
                            <asp:DropDownList ID="ddlsub" runat="server"></asp:DropDownList>  
                        </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
   
                            Faculty Member :</td>  
                        <td>  
                            <asp:DropDownList ID="ddlfac" runat="server"></asp:DropDownList>  
 </td>  
                        <td>  
 </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style6">  
                             
                        </td>  
                        <td class="style2">  
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back to Main  
                            </asp:LinkButton>  
                        </td>  
                        <td>  
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="btn" Text="Submit"/>  
                        </td>  
                        <td>  
 </td>  
                    </tr>  
                </table>  

                <br />

            <br />

            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>  
                            <asp:TemplateField HeaderText="FACULTY">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("snm") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lbldid" runat="server"  Text='<%# Bind("snm") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="SEM">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Bind("s_sem") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:HyperLink ID="lblsub" runat="server"  Text='<%# Bind("s_sem") %>' ></asp:HyperLink>  
                                </ItemTemplate>  
                            </asp:TemplateField>



                            <asp:TemplateField HeaderText="RESOURCES">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Bind("link") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:HyperLink ID="Label2" runat="server" Target="_blank" NavigateUrl='<%# Eval("link") %>'  Text='<%# Bind("link") %>' ></asp:HyperLink>  
                                </ItemTemplate>  
                            </asp:TemplateField> 
                            <asp:TemplateField HeaderText="ABOUT">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("about") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("about") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            
                           
                                  
                            
                        </Columns>

                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

            </asp:GridView>
        </asp:Panel>  



            <asp:Panel ID="Panelstudent" Visible="false" runat="server">
                        <table style="width:100%;">
                       
                      
                    <tr>  
                        <td class="auto-style6">  
   
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Resources :&nbsp;</td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
Subject:  
                        </td>  
                        <td>  
                            <asp:DropDownList ID="ddlsub1" runat="server"></asp:DropDownList>  
                        </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
   
                            Student :</td>  
                        <td>  
                            <asp:DropDownList ID="ddlstu" runat="server"></asp:DropDownList>  
 </td>  
                        <td>  
 </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style6">  
   
                        </td>  
                        <td class="style2">  
   
                        </td>  
                        <td>  
 </td>  
                        <td>  
 </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style6">  
                             
                        </td>  
                        <td class="style2">  
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Back to Main  
                            </asp:LinkButton>  
                        </td>  
                        <td>  
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" CssClass="btn" Text="Submit"/>  
                        </td>  
                        <td>  
 </td>  
                    </tr>  
                </table>  

                <br />

            <br />

            <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>  
                            <asp:TemplateField HeaderText="Student">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("s_nm") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lbldid" runat="server"  Text='<%# Bind("s_nm") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="SEM">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Bind("s_sem") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:HyperLink ID="lblsub" runat="server"  Text='<%# Bind("s_sem") %>' ></asp:HyperLink>  
                                </ItemTemplate>  
                            </asp:TemplateField>



                            <asp:TemplateField HeaderText="RESOURCES">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Bind("link") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:HyperLink ID="Label2" runat="server" Target="_blank" NavigateUrl='<%# Eval("link") %>'  Text='<%# Bind("link") %>' ></asp:HyperLink>  
                                </ItemTemplate>  
                            </asp:TemplateField> 
                            <asp:TemplateField HeaderText="ABOUT">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("about") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("about") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            
                           
                                  
                            
                        </Columns>

                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

            </asp:GridView>
        </asp:Panel>



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
