<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CoachTravelling.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <h2>Login Page</h2>
        If you still haven&#39;t registered,
        <asp:Button ID="btnRegister" runat="server" Text="Register Now" Width="125px" OnClick="btnRegister_Click" class="btn btn-default"/>

    <p>
        &nbsp;</p>
    <p>
        Username :&nbsp; <asp:TextBox ID="txtUsername" runat="server" Width="132px" Class="form-control"></asp:TextBox>
    &nbsp;</p>
    <p>
        Password&nbsp; :&nbsp;
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="132px" Class="form-control"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="wrnError" runat="server" ForeColor="Red" Text="The Username or Password is incorrect. " Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="131px" OnClick="btnLogin_Click" Class="form-control" />
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
