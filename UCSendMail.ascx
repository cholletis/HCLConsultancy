<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCSendMail.ascx.cs"
    Inherits="Consultancy.UserControl.UCSendMail" %>
<table width="90%" style="text-align:center"  >
    <tr>
        <th colspan="2">
            <h1>
                Update Form to Send Email</h1>
        </th>
    </tr>
   
    <tr>
        <td>
            <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label><br />
        </td>
        <td>
            <asp:TextBox ID="txtToEmail" runat="server" ValidationGroup="contact" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="txtToEmail" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valRegEx" runat="server" ControlToValidate="txtToEmail"
                ValidationExpression=".*@.*\..*" ErrorMessage="*Invalid Email address." Display="dynamic">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblCCEmail" runat="server" Text="CC"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCCEmail" runat="server" Width="100%" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSubject" runat="server" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                ControlToValidate="txtSubject" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Rows="10" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                ControlToValidate="txtBody" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align:center" colspan="2">
        <br /><br />
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
            &nbsp;
            <asp:Button ID="btnClose" Text="Close" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
        </td>
    </tr>
</table>
