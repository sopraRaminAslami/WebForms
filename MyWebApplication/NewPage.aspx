<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPage.aspx.cs" Inherits="MyWebApplication.NewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Advcned APS.NET Web Server controls</h2>
    <h3>Create a list of events in a repeater calendar control</h3>

    <div class="form-group">
        <label>Event Name:</label>
        <asp:TextBox ID="txtEvent" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Event date:</label>
        <asp:Calendar ID="calendarEvents" runat="server"></asp:Calendar>
    </div>

    <div class="form-group">
        <asp:Button ID="btnEvent" runat="server" CssClass="btn btn-primary btn-lg" Text="Add Event" OnClick="btnEvent_Click" />
    </div>
    <h3>Events Repeater.</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server">
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small><%# DataBinder.Eval(Container.DataItem, "EventName") %></small></h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
