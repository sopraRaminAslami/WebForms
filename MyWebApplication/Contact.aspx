<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyWebApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <%--        <div runat="server" id="divmessage" class="message">welcome to the contact page!</div>--%>

        <div>
            <label>Name</label>
            <asp:TextBox ID="txtName" CssClass="text-box" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="Valid email addres is required" ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
            <div>
                <label>Age</label>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </div>

            <div>
                <label>Your Favorite Color:</label>
                <asp:DropDownList ID="ddlColor" runat="server">
                    <asp:ListItem Text="Please Choose a Color"></asp:ListItem>
                    <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
                    <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                    <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
                    <asp:ListItem Text="Yellow" Value="Yellow"></asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="Color Required."></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Info" OnClick="btnSubmit_Click" />
            </div>

            <address>
                <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
                <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
            </address>
    </main>


    <div class="message">
        <asp:Literal ID="ltMessage" runat="server"></asp:Literal>
    </div>


</asp:Content>
