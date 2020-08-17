<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demowp.aspx.cs" Inherits="Demowp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Country" HeaderText="Country" />
        <asp:ButtonField Text="Select" CommandName="Select" />
    </Columns>
</asp:GridView>
<asp:LinkButton ID="lnkShare" Text="Share" runat="server" OnClick="lnkShare_Click"/>

<script type="text/javascript">
    function ShareOnWhatsApp(id, name, country) {
        window.open('https://api.whatsapp.com/send?text= Reg No.: ' + id + ',Name: ' + name + ',Country: ' + country + '');
        return false;
    }
</script>
        </div>
    </form>
</body>
</html>
