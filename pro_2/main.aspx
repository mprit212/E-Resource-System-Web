<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Welcome</title>
 
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
    <center><font size="5" color="red">E-Resource Syetem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        &nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:Button ID="btnlogout" runat="server" OnClick="btnlogout_Click" Text="Logout"  CssClass="btn"/>
        </center>
</div>
&nbsp;<asp:Label ID="lblhello" runat="server" Font-Size="14pt"></asp:Label>
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmeg" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Uploaded Sucessfully." Visible="False"></asp:Label>
    <asp:Panel ID="panel3" runat="server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Height="19px" Width="280px">
        <asp:ListItem>UPLOAD LINK</asp:ListItem>  
        <asp:ListItem>VIEW LINK</asp:ListItem> 
        
    </asp:RadioButtonList>
    </asp:Panel>

    <asp:Panel ID="panel4" runat="server">

<asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" Height="19px" Width="280px">
        <asp:ListItem>ADD/DELETE FACULTY MEMBER</asp:ListItem>  
        <asp:ListItem>ADD/DELETE SUBJECT</asp:ListItem>

     </asp:RadioButtonList>
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    &nbsp;</p>
           
        
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
<asp:Panel ID="Panel2" runat="server">
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
                <tr>
                    <td>
                        <center><asp:Button ID="btnview" runat="server" OnClick="btngo_Click" Text="VIEW" Width="74px" class="btn" /></center>
                    </td>
                </tr>
                      
                       
                        
            
            </table>
    <br />
    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" EmptyDataText="Search Is Not Found"  BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidtd="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="false" Height="253px" Width="833px"  >
        <AlternatingRowStyle BackColor="White"/>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        <Columns>
                    
            <asp:TemplateField HeaderText="LINK">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("link") %>' Text='<%# Eval("link") %>' Target="_blank"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ABOUT">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("ABOUT") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="TYPE">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("TYPE") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="FACULTY NAME">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("FACULTY") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
                  </Columns>
    </asp:GridView>
         <asp:Button ID="Button1" runat="server" PostBackUrl="~/view.aspx" Text="Share"  CssClass="btn"/>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;


     <asp:Panel  ID="paneldel" runat="server" Visible="false">
        <table style="width:100%;">  
             <tr>  
                  
                  
                <td>  
                     DELETE LINK : </td>  
            </tr> 
            <tr>  
                   <%--DataKeyNames="d_id"--%>
                <td>  
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"   
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="NO ONE RECORDS HERE " ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" >  
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            
                            <asp:TemplateField HeaderText="DATA_ID">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("d_id") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lbldid" runat="server" Text='<%# Bind("d_id") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="SUBJECT">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SUBJECT") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lblsub" runat="server" Text='<%# Bind("SUBJECT") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                            <asp:TemplateField HeaderText="LINK">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("link") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lbllink" runat="server" Text='<%# Bind("link") %>'></asp:Label>  
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
                            <asp:TemplateField HeaderText="FACULTY NAME">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FACULTY") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="lblfac" runat="server" Text='<%# Bind("FACULTY") %>'></asp:Label>  
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
                     <asp:Button ID="Btndellink0" runat="server" onclick="Btndellink_Click" Text="DELETE"  CssClass="btn"/>
                     </td>  
                <td>  
                    &nbsp;</td>  
                <td>  
                     </td>  
            </tr>  
        </table>
         </asp:Panel>
        

    </fieldset></asp:Panel>

    <asp:Panel ID="Panel5" runat="server">
    <fieldset>
        <legend>ADD FACULTY MEMBER</legend>

        <table align="left" cellpadding="10" cellspacing="5">
            
            <tr>  
                  
                  
                <td>  
                     ADD MEMBER : </td>  
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblnm" runat="server" Text="NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtname" ErrorMessage="*Name is Reuired" ForeColor="Red" ValidationGroup="d"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="EMAIL"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtemail" ErrorMessage="*Email is Reuired" ForeColor="Red" ValidationGroup="d"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpass" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpass" ErrorMessage="*Password is Reuired" ForeColor="Red" ValidationGroup="d"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcpass" runat="server" Text=" CONFORM PASSWORD"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpass" runat="server"></asp:TextBox>
                </td>
                <td>

                    

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcpass" ControlToValidate="txtpass" ErrorMessage="*Password must be same" ForeColor="Red" ValidationGroup="d"></asp:CompareValidator>

                    

                </td>
            </tr>

             <tr>
                           <td>
                               <center><asp:Button ID="Btninsert" runat="server" Text="INSERT" Width="73px" OnClick="Btninsert_Click" ValidationGroup="d" class="btn"/></center>
                           </td>
                       </tr>
        </table>

        <table style="width:100%;">  
             <tr>  
                  <td>

                  </td>
                  
                <td>  
                     DELETE MEMBER : </td>  
            </tr> 
            <tr>  
                <td>  
                     &nbsp;</td>  
                <td>  
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"   
                        DataKeyNames="staff_id" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >  
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="STAFF_ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("staff_id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%# Bind("staff_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="STAFF_NAME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("suername") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("susername") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
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
                     </td>  
                <td>  
                    <asp:Button ID="Btnstaffdel" runat="server" onclick="Btnstaffdel_Click" Text="DELETE"  CssClass="btn"/>  
                </td>  
                <td>  
                     </td>  
            </tr>  
        </table>



    </fieldset>
</asp:Panel>



    <asp:Panel ID="Panel6" runat="server">
    <fieldset>
        <legend>ADD/DELETE SUBJECT</legend>

        <table align="left" cellpadding="10" cellspacing="5">
            <tr>
                <td>
                    ADD SUBJECT:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="llbsub" runat="server" Text="Subject Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsub" runat="server"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtsub" ErrorMessage="*Subject name is Reuired" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>

                </td>
            </tr>
             <tr>
                           <td>
                               <center><asp:Button ID="btnadd" runat="server" Text="ADD" Width="73px" OnClick="btnadd_Click" ValidationGroup="c" /></center>
                           </td>
                       </tr>
        </table>
        
        <table style="width:100%;">  
             <tr>  
                  
                <td>  
                     </td>  
                <td>  
                     DELETE SUBJECT: </td>  
            </tr> 
            <tr>  
                <td>  
                     &nbsp;</td>  
                <td>  
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   
                        DataKeyNames="s_id" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >  
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Subject_ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("s_id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("s_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject_Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("s_nm") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("s_nm") %>'></asp:Label>
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
                     </td>  
                <td>  
                    <asp:Button ID="Btndel" runat="server" onclick="Btndel_Click" Text="DELETE" />  
                </td>  
                <td>  
                     </td>  
            </tr>  
        </table>


    </fieldset>
</asp:Panel>
</div>
   <footer class="site-footer" style="position: absolute;
  right: 0;
  
 
  padding: 1rem;
  
  text-align: left;">
      <div class="container">
        
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text"> 
         &nbsp;</p>
          </div>

          
        </div>
      </div>
          </div>
</footer>
</form>
        
</body>
</html>
