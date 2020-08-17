<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
<hr />
</head>
<body>
 <style>
        .btn{
  background-color:black ;
  color: white;
  border: 2px solid #555555;
}

.btn:hover {
  background-color: white;
  color:#555555;
}
div.relative {
  position: fixed;
  
}

</style>

    <form id="form1" runat="server">
    <div>
    <div>
    <center><font size="5" color="red">E-Resource System&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        &nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%--  <asp:Button ID="Btnpro" runat="server" OnClick="Btnpro_Click" Text="Profile"  CssClass="btn"/>
        <asp:Button ID="btnlogout" runat="server" OnClick="btnlogout_Click" Text="Logout"  CssClass="btn"/>--%>
        </center>
</div>  <%-- header --%>
&nbsp;<asp:Label ID="lblhello" runat="server" Font-Size="14pt"></asp:Label>
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmeg" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Uploaded Sucessfully." Visible="False"></asp:Label>
        
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Height="19px" Width="280px">
        <asp:ListItem>UPLOAD RESOURCE</asp:ListItem>  
        <asp:ListItem>VIEW RESOURCE</asp:ListItem> 
        </asp:RadioButtonList>

        <asp:Panel ID="Panel1" runat="server" Visible="false">
   
            
        <br />
        <fieldset>
            <legend>Upload Resources</legend>
            <br />
                  
                <table align="left" cellpadding="10" cellspacing="5">
                    <tr>
                        <td>
                            <asp:Label ID="lblsub" runat="server" Text="Select Subject :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlsub" runat="server" Height="36px" 
                                onselectedindexchanged="ddlsub_SelectedIndexChanged" >
                
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

                            
            <asp:DropDownList ID="ddlsem" runat="server" OnSelectedIndexChanged="ddlsem_SelectedIndexChanged" AutoPostBack="true">
                          
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
                <asp:FileUpload id="fileupload1" runat="server" />
                  <%--  <asp:TextBox ID="txtlink" runat="server" Widtd="416px"></asp:TextBox>--%>
                </td>
                <td>
                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="fileupload1" ErrorMessage="*Link is Reuired" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                    &nbsp;
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

    <asp:Panel ID="panel2" runat="server" Visible="false">
    <fieldset>
        <legend>View Resources</legend>
    &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
        
                            <asp:TemplateField HeaderText="SUBJECT">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SUBJECT") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lblsub" runat="server" Text='<%# Bind("SUBJECT") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                            <asp:TemplateField HeaderText="RESOURCES">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("image") %>' Text='<%# Eval("image") %>' Target="_blank"></asp:HyperLink>  
                                </ItemTemplate>  
                            </asp:TemplateField> 
                            <asp:TemplateField HeaderText="ABOUT">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("about") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lblabt" runat="server" Text='<%# Bind("about") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TYPE">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lblabt" runat="server" Text='<%# Bind("type") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="SEM">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("sem") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lblabt" runat="server" Text='<%# Bind("sem") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
        

        </Columns>
         </asp:GridView>

    </fieldset>
    </asp:Panel>
    
    </div>
    </form>
</body>
</html>
