<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
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

                .headerCssClass{  
            background-color:#c33803;  
            color:white;  
            border:1px solid black;  
            padding:4px;  
        }  
        .contentCssClass{  
            background-color:#e59a7d;  
            color:black;  
            border:1px dotted black;  
            padding:4px;  
        }  
        .headerSelectedCss{  
            background-color:#808080;  
            color:white;  
            border:1px solid black;  
            padding:4px;  
        }


           </style> 
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>  

    <div>
    <h1>Survey Result</h1>
    </div>

    <div>
    <asp:LinkButton ID="btnback" runat="server" Text="BACK TO HOME"  class="btn" PostBackUrl="~/main1.aspx" />
    </div>


    <ajaxToolkit:Accordion ID="Accordion1" runat="server" 
        HeaderCssClass="headerCssClass" ContentCssClass="contentCssClass" 
        HeaderSelectedCssClass="headerSelectedCss" Height="333px" Width="1000px">
    <Panes>
    <ajaxToolkit:AccordionPane ID="acc1" runat="server">
    <Header>Your Favourite Subject ?</Header>
    <Content>
    <br />
    <br />
   <asp:Chart ID="EmployeeChartInfo" runat="server" Height="450px" Width="550px">  
                <Titles>  
                    <asp:Title ShadowOffset="3" Name="Items" />  
                </Titles>  
                <Legends>  
                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />  
                </Legends>  
                <Series>  
                    <asp:Series Name="Default" />  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1" BorderWidth="1" />  
                </ChartAreas>  
            </asp:Chart>
        <br />
        <br />
    
    </Content>
    </ajaxToolkit:AccordionPane>
   
    <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
    <Header>What Do You Prefer More ?</Header>
    <Content>
    <br />
    <br />
    <asp:Chart ID="Chart2" runat="server" Height="450px" Width="550px">  
                <Titles>  
                    <asp:Title ShadowOffset="3" Name="Items" />  
                </Titles>  
                <Legends>  
                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />  
                </Legends>  
                <Series>  
                    <asp:Series Name="Default" />  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1" BorderWidth="1" />  
                </ChartAreas>  
            </asp:Chart>
        <br />
        <br />
    
    </Content>
    </ajaxToolkit:AccordionPane>

    <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
    <Header>After Completing UG What Would Like To Do Further ?</Header>
    <Content>
    <br />
    <br />
    <asp:Chart ID="Chart3" runat="server" Height="450px" Width="550px">  
                <Titles>  
                    <asp:Title ShadowOffset="3" Name="Items" />  
                </Titles>  
                <Legends>  
                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />  
                </Legends>  
                <Series>  
                    <asp:Series Name="Default" />  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1" BorderWidth="1" />  
                </ChartAreas>  
            </asp:Chart>
        <br />
        <br />
    
    </Content>
    </ajaxToolkit:AccordionPane>


    </Panes>
    </ajaxToolkit:Accordion>
 
        <div>    
  <div class="footer">
      <hr />
      <p><a href="home.aspx">HOME PAGE</a> | <a href="contact.aspx">CONTACT US</a> | <a href="login1.aspx">FACULTY MEMBER</a> | <a href="login1.aspx">ADMIN</a> | <a href="stulogin.aspx">STUDENT</a> | <a href="stu_reg.aspx">REGISTRATION</a> | <a href="#">HELP</a> <br/>
      Copyright &copy; E-Resource System | Design by <a>Prit Mehta</a></p>
  </div>
</div>
    </form>  
</body>  
</html>