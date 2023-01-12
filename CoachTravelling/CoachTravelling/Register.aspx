<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CoachTravelling.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 0px">
        <br />
        <h2>Register Page</h2>
        <div>
            If you already have account.&nbsp;
            <asp:Button ID="btnLogin" runat="server" Text="Login in Now" Width="122px" OnClick="btnLogin_Click" class="btn btn-default"/>
                <br />
            The information you provide will not be shared with any 3rd party clients.
                <br /><br />
            <h4>  Personal Details </h4>
               <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="There was an error check your inputs." Visible="False"></asp:Label>
                <br />            
            First Name :&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server" Width="190px" Class="form-control" Height="30px" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
            <asp:Label ID="wrnName" runat="server" Text="Please enter your First Name" Visible="False" ForeColor="Red"></asp:Label>
                <br />
            Last Name :&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server" Width="193px" Class="form-control" Height="30px" OnTextChanged="txtLastName_TextChanged"></asp:TextBox>
            &nbsp;<asp:Label ID="wrnLast" runat="server" Text="Please enter your Last Name." Visible="False" ForeColor="Red"></asp:Label>
            <div class="input-group">
                Day of Birth :<br />
                <asp:TextBox ID="txtDay" runat="server" Width="50px" placeholder="DD" Class="form-control" OnTextChanged="txtDay_TextChanged"></asp:TextBox>
                <asp:TextBox ID="txtMonth" runat="server" Width="50px" placeholder="MM" Class="form-control"></asp:TextBox>
                <asp:TextBox ID="txtYear" runat="server" Width="70px" placeholder="YYYY" Class="form-control"></asp:TextBox>
                    <br />
                    <br />
                <asp:Label ID="wrnDOB" runat="server" Text="Enter your date of birth." Visible="False" ForeColor="Red"></asp:Label>
                    <br />
            </div>
                <br />
            Gender :
            <asp:DropDownList ID="listGender" runat="server" CssClass="form-control">
                <asp:ListItem Value="null">Pick your gender.</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Not Listed</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="wrnGender" runat="server" Text="you haven't selected your gender." Visible="False" ForeColor="Red"></asp:Label>
                <br />            
            Phone Number : <asp:TextBox ID="txtNumber" runat="server" Width="138px" Class="form-control">07</asp:TextBox>
            <asp:Label ID="wrnNumber" runat="server" Text="Enter a proper phone number." Visible="False" ForeColor="Red"></asp:Label>
                <br /><br />
            <h4>Address Details</h4>
                <br />
            First Line of Address :&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" Width="178px" Class="form-control"></asp:TextBox>
            <asp:Label ID="wrnAddress" runat="server" Text="Enter your first line of address" Visible="False" ForeColor="Red"></asp:Label>
                <br />
            Postcode :&nbsp;
            <asp:TextBox ID="txtPostCode" runat="server" Width="134px" Class="form-control"></asp:TextBox>
            <asp:Label ID="wrnPostCode" runat="server" Text="Enter your Postcode" Visible="False" ForeColor="Red"></asp:Label>
                <br /><br />
            <h4> Account Details </h4>
                <br />
            Username :&nbsp;
            <asp:TextBox ID="txtUsername" runat="server" Width="133px" Class="form-control"></asp:TextBox>
            &nbsp;<asp:Label ID="wrnUsername" runat="server" Text="this username is taken or invalid." Visible="False" ForeColor="Red"></asp:Label>
                <br />
            Password :&nbsp; 
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="137px" Class="form-control"></asp:TextBox>
            <asp:Label ID="wrnPassword" runat="server" Text="Enter a password" Visible="False" ForeColor="Red"></asp:Label>
                <br />
            Confirm Password :&nbsp;
            <asp:TextBox ID="txtPassword2" runat="server"  TextMode="Password" Width="119px" Class="form-control"></asp:TextBox>
            <asp:Label ID="wrnPasswordConfirm" runat="server" Text="The password doesn't match" Visible="False" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <br />              
            As a condition of use, you promise not use the service for any purpose that is unlawful or prohibited by these terms,

            or any other purpose not reasonably intended by Coach Travel. by agreeing tick the box. <br />Terms and condition agreement&nbsp;&nbsp;
            <asp:RadioButton ID="agreeterms" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />

            <asp:Label ID="wrnterm" runat="server" Text="You haven't signed the terms and conditions. we are unable to register if so." Visible="False" ForeColor="Red"></asp:Label>
                <br />
                <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" Width="162px" OnClick="btnRegister_Click" CssClass="btn btn-default" />
        </div>
    </div>
</asp:Content>
