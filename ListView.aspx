<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListView.aspx.cs" Inherits="ListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <fieldset style="width: 300px">
            <legend>ListView Example</legend>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>Name</asp:TableCell><asp:TableCell>
                        <asp:TextBox runat="server" ID="txtName"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Contact</asp:TableCell><asp:TableCell>
                        <asp:TextBox runat="server" ID="txtContact"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Email</asp:TableCell><asp:TableCell>
                        <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell>
                        <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button runat="server" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </fieldset>
    </div>

    <asp:HiddenField ID="hfRecord" runat="server" />

    <h3>Employee Information</h3>

    <asp:ListView ID="ListEmployee" runat="server" OnItemCommand="ListEmployee_ItemCommand" DataKeyNames="EmpID">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 100px">
                        <b>No. :</b>
                        <%#Eval("EmpID") %>  
                    </td>
                    <td style="width: 200px">
                        <b>Name :</b>
                        <%#Eval("EmpName") %>  
                    </td>
                    <td style="width: 200px">
                        <b>Contact :</b>
                        <%#Eval("Contact") %>  
                    </td>
                    <td style="width: 250px">
                        <b>Email :</b>
                        <%#Eval("EmailId") %>  
                    </td>
                    <td>
                        <asp:Button ID="btndel" runat="server" Text="Delete" ToolTip="Delete a record" OnClientClick="javascript:return confirm('Are you sure to delete record?')" CommandName="EmpDelete" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "EmpID") %>' />
                        <asp:Button ID="btnupdt" runat="server" Text="Edit" ToolTip="Update a record" CommandName="EmpEdit" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "EmpID") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

