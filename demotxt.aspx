<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demotxt.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:TextBox ID="txtx" runat="server" />
    <asp:Button ID="bttn" runat="server"  Text="submit"/>

    &nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="not allowed that type of words"  ControlToValidate="txtx" 
            Display="Dynamic" onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

    </div>
    </form>
</body>
</html>
