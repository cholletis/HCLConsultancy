<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DeleteFiles.ascx.cs"
    Inherits="Consultancy.UserControl.DeleteFiles" %>
<table>
    <tr>
        <td colspan="2" align="center">
            <div class="title">
                <h3>
                    Select Files to Delete
                </h3>
            </div>
        </td>
    </tr>
    <tr>
    <td>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Click to display latest data</asp:LinkButton>
    </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridViewFileList" runat="server" DataKeyNames="FileID" AutoGenerateColumns="false" >
                <Columns>
                    <asp:BoundField DataField="FileName" SortExpression="FileName" HeaderText="File Name" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkDelete" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btDeleteFiles" runat="server" Text="Delete Files" OnClick="btDeleteFiles_Click" />
        </td>
    </tr>
</table>
