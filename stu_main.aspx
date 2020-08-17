<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_main.aspx.cs" Inherits="stu_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Resource System</title>
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
    <center><font size="5" color="red">E-Resource Syetem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        &nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btnprofile" runat="server" OnClick="Btnprofile_Click" Text="Profile"  CssClass="btn"/>
        <asp:Button ID="btnlogout" runat="server" OnClick="btnlogout_Click" Text="Logout"  CssClass="btn"/>
        </center>
</div>
&nbsp;<asp:Label ID="lblhello" runat="server" Font-Size="14pt"></asp:Label>
   <asp:Label ID="lblmeg" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Uploaded Sucessfully." Visible="False"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Height="19px" Width="280px">
        <asp:ListItem>UPLOAD RESOURCE</asp:ListItem>  
        <asp:ListItem>VIEW RESOURCE</asp:ListItem>
        <asp:ListItem>DASHBOARD</asp:ListItem>
        <asp:ListItem>SUREVEY</asp:ListItem>

        
    </asp:RadioButtonList>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            
        <br />
        <fieldset>
            <legend>Upload link</legend>
            <br />
                  
                <table align="left" cellpadding="10" cellspacing="5">
                    <tr>
                        <td>
                            <asp:Label ID="lblsub" runat="server" Text="Select Subject :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlsub" runat="server" Height="36px" >
                
            </asp:DropDownList>
                        </td>
                        <td> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlsub" ErrorMessage="*Subject is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       
                    
                   
                   
            <tr>
                <td>
                        <asp:Label ID="lblyr" runat="server" Text="Select Year :"></asp:Label>
                </td>
                <td>
                             
                        <asp:DropDownList ID="ddlyr" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlyr_SelectedIndexChanged">
                <asp:ListItem>FIRST YEAR</asp:ListItem>
                <asp:ListItem>SECOND YEAR</asp:ListItem>
                <asp:ListItem>THIRD YEAR</asp:ListItem>
                <asp:ListItem>MSC-1</asp:ListItem>
                <asp:ListItem>MSC-2</asp:ListItem>
            </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlyr" ErrorMessage="*Year is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                            
                    <asp:Label ID="lblsem" runat="server" Text="Select Semester :"></asp:Label>
                </td>
                <td>

                            
            <asp:DropDownList ID="ddlsem" runat="server" OnSelectedIndexChanged="ddlsem_SelectedIndexChanged">
                            <asp:ListItem>SEM-1</asp:ListItem>
                            <asp:ListItem>SEM-2</asp:ListItem>
            </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlsem" ErrorMessage="*Sem is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                </td>
            </tr>
                   
                   
            <tr>
                <td>
                            
                    <asp:Label ID="lblsem0" runat="server" Text="Select  Acadmic Year:"></asp:Label>
                </td>
                <td>
                        <asp:DropDownList ID="ddlay" runat="server">
                
                <asp:ListItem>2018-19</asp:ListItem>
                <asp:ListItem>2019-20</asp:ListItem>
                <asp:ListItem>2020-21</asp:ListItem>
                <asp:ListItem>2021-22</asp:ListItem>
                <asp:ListItem>2022-23</asp:ListItem>
                <asp:ListItem>2023-24</asp:ListItem>
            </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlay" ErrorMessage="*Year is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                </td>
            </tr>
                   
            <tr>
                <td>
                <asp:Label ID="lbltype" runat="server" Text="Type Of  Document :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddltype" runat="server">
                <asp:ListItem>PDF</asp:ListItem>
                <asp:ListItem>PPT</asp:ListItem>
                <asp:ListItem>VIDEO</asp:ListItem>
                <asp:ListItem>WEBSITE</asp:ListItem>
                <asp:ListItem>OTHERS</asp:ListItem>
            </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddltype" ErrorMessage="*Type is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                </td>
            </tr>
                   
                    
                
            <tr>
                <td>
                    <asp:Label ID="lbllink" runat="server" Text="Paste Your Link Here  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlink" runat="server" Widtd="416px"></asp:TextBox>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlink" ErrorMessage="*Link is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                </td>
            </tr>
                    
            <tr>
                <td>
                    <asp:Label ID="lblsem1" runat="server" Text="Description About Link :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdesc" runat="server" Widtd="416px"></asp:TextBox>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdesc" ErrorMessage="*Description is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                </td>
            </tr>
                   
                 
            <tr>
                <td>
                    <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="UPLOAD" ValidationGroup="b" CssClass="btn" />
                </td>
            </tr>
                    
                  
                    
                </table>
                           

        </fieldset>
</asp:Panel>

        <p>
    <asp:Label ID="Label5" runat="server"></asp:Label>
    </p>
<asp:Panel ID="Panel2" runat="server" Visible="false">
    <fieldset>
        <legend>View Link</legend>
    &nbsp;&nbsp;
            
                
                
        <table align="left" cellpadding="10">
                   
                <tr>
                    <td>
                        <asp:Label ID="lblsub0" runat="server" Text="Enter Subject :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlssub" runat="server" AutoPostBack="True" Height="36px">
                            
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblsyr" runat="server" Text="Enter Year :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlsyr" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlsyr_SelectedIndexChanged">
                            <asp:ListItem>FIRST YEAR</asp:ListItem>
                            <asp:ListItem>SECOND YEAR</asp:ListItem>
                            <asp:ListItem>THIRD YEAR</asp:ListItem>
                            <asp:ListItem>MSC-1</asp:ListItem>
                            <asp:ListItem>MSC-2</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblssem" runat="server" Text="Enter Semester :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlssem" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlssem_SelectedIndexChanged">
                            <asp:ListItem>SEM-1</asp:ListItem>
                            <asp:ListItem>SEM-2</asp:ListItem>
                            
                        </asp:DropDownList>
                    </td>
                </tr>
                
                      
                       
                        
            
            </table>

    <br />
    <br />

          <table style="width:100%;">  
             <tr>  
                  
                  
                <td>  
                     Edit Resources : </td>  
            </tr> 
            <tr>  
                  
                <td>  
                    <asp:GridView ID="GridView4" runat="server"  AutoGenerateColumns="False"   
                        DataKeyNames="d_id" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="NO ONE RECORDS HERE " ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView4_SelectedIndexChanged1">  
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>  
                            <asp:TemplateField HeaderText="DATA_ID">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("d_id") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lbldid" runat="server"  Text='<%# Bind("d_id") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="SUBJECT">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Bind("SUBJECT") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:HyperLink ID="lblsub" runat="server"  Text='<%# Bind("SUBJECT") %>' ></asp:HyperLink>  
                                </ItemTemplate>  
                            </asp:TemplateField>



                            <asp:TemplateField HeaderText="LINK">  
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
                            <asp:TemplateField HeaderText="FACULTY NAME">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("STUDENT") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("STUDENT") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
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
                    
                </td>  
                <td>  
                     </td>  
            </tr>
              <tr>
                    <td>
                        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Text="VIEW" Width="74px" class="btn" />
                        &nbsp&nbsp                 
                        <asp:Button ID="Btndellink0" runat="server" onclick="Btndellink0_Click" Text="DELETE"  CssClass="btn"/>
                   &nbsp&nbsp
                        <asp:Button ID="Button1" runat="server"  Text="Share"  
                            CssClass="btn" onclick="Button1_Click"/>
                    </td>  
                <td>  
                    &nbsp;</td>  
                <td>  
                     </td>  
            </tr>  
        </table>
          



        </fieldset>
         </asp:Panel>

         <%-- <div>    
  <div class="footer">
      <hr />
    <p><a href="#">HOME PAGE</a> | <a href="#">ABOUT US</a> | <a href="#">SERVICES</a> | <a href="#">ROOMS</a> | <a href="#">BOOKING</a> | <a href="#">GALLERY</a> | <a href="#">NEWS</a> | <a href="#">CONTACTS</a><br/>
      Copyright &copy; Your Company Name | Design by <a href="http://freshtemplates.com/">Website Templates</a></p>
  </div>
</div>--%>
    </form>
</body>
</html>
