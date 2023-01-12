<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CoachTravelling.Contact" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
      <tr>
        <th><h4>Enquires</h4></th>
        <th><h4>Or Contact Us</h4></th>
      </tr>
      <tr>
        <td>
        Name: <asp:TextBox ID="txtName" runat="server" Width="190px"  Class="form-control" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
    
        
    
        <asp:Label ID="wrnName" runat="server" Text="Please enter your First Name" Visible="False" ForeColor="Red"></asp:Label>
   
            <br />
   
        Unqiue Customer ID : (Optional)
    
        <asp:TextBox ID="txtCustomerID" runat="server" Width="200px"  Class="form-control" meta:resourcekey="TextBox1Resource1" ></asp:TextBox>
   
         &nbsp;Phone Number: 
    
        <asp:TextBox ID="txtNumber" runat="server"  Width="190px"  Class="form-control" meta:resourcekey="TextBox2Resource1"></asp:TextBox>

        <asp:Label ID="wrnNumber" runat="server" Text="Please Enter a phone number we can contact you." Visible="False" ForeColor="Red"></asp:Label>

            <br />

        Email:
        <asp:TextBox ID="txtEmail" runat="server"  Width="190px"  Class="form-control" meta:resourcekey="TextBox3Resource1"></asp:TextBox>

        <asp:Label ID="wrnEmail" runat="server" Text="To get a reply, you must enter your email." Visible="False" ForeColor="Red"></asp:Label>

            <br />

        Subject:
        <asp:TextBox ID="txtSubject" runat="server"  Width="268px"  Class="form-control" meta:resourcekey="TextBox4Resource1"></asp:TextBox>

        <asp:Label ID="wrnSubject" runat="server" Text="Enter the Subject your enquiry is about" Visible="False" ForeColor="Red"></asp:Label>

            <br />

        Message
        <asp:TextBox ID="txtMessage" runat="server"  Width="268px"  Class="form-control" meta:resourcekey="TextBox4Resource1" Height="100px"></asp:TextBox>

        <asp:Label ID="wrnMessage" runat="server" Text="Describe the enquiry in debt so our Staff Team could help you soon as possible." Visible="False" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="btnSend" runat="server" Text="Verify" CssClass="btn btn-default" Width="108px" OnClick="btnSend_Click" />
    
        <asp:Label ID="lblCheck" runat="server" ForeColor="#CC0000" Text="Do you need to change anything? if not Submit Now." Visible="False"></asp:Label>

        <asp:Button ID="btnSubmit" runat="server" Text="Submit Enquiry" CssClass="btn btn-default" Width="148px" OnClick="btnSubmit_Click" Visible="False" />

        </td>
        <td VALIGN=TOP>
        Telephone: 02093358324<br />
        1243 Canary Wharf, London, E14 4QQ

        </td>
      </tr>
    </table>
    
        
</asp:Content>
