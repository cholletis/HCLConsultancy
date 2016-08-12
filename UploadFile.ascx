<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.ascx.cs" 
Inherits="Consultancy.UserControl.UploadFile" %>
<table>
    <tr>
        <td colspan="2" align="center">
          <div class="title">
                <h3>
                    Select File to Upload
                </h3>
            </div>
            
        </td>
    </tr>
    <tr>
        <td colspan="2">
           
        <asp:RegularExpressionValidator ID="uplValidator" runat="server" ControlToValidate="FileUpload1"
         ErrorMessage="Only Pdf files are allowed to Upload " ForeColor="Red" Display="Dynamic"
          ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.pdf)$"></asp:RegularExpressionValidator>
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" ></asp:Label>
        </td>
    </tr>
   <%-- <tr>
        <td>
            <asp:Label ID="lblFileType" runat="server" Text="File Type"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlFileType" runat="server">
            </asp:DropDownList>
        </td>
    </tr>--%>
    <tr>
        <td>
            <asp:Label ID="lblFileName" runat="server" Text="File Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblSelectFile" runat="server" Text="Select File"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1"  runat="server"  />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorFile" ErrorMessage="Please select file to Upload" ControlToValidate="FileUpload1"--%>
              <%--  runat="server"  ForeColor="Red" /> --%>
            <%--<input type="file" name="FileUpload1" runat="server" ID="FileUpload1" accept="application/pdf,application/vnd.ms-excel" />--%>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnUpload" runat="server" Text="Upload File" 
                CssClass="submitButton" onclick="btnUpload_Click"/>
            
        </td>
    </tr>
</table>
