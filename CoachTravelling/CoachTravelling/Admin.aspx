<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CoachTravelling.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <table style="width:100%; height: 61px;">
            <tr>
                <td style="width: 317px; height: 20px;">
                    
                    <br />
                    <h2>Admin Panel </h2>
                <td style="width: 306px; height: 20px;">
                    <h2>User Configuation</h2></td>
            </tr>
            <tr>
                <td style="width: 317px; height: 140px;">
                    <asp:Button ID="btnAddTrip" runat="server" Height="56px" Text="Add a New Trip" Width="157px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Height="56px" Text="Update/Edit Trip" Width="157px" />
                    <br />
                    <asp:Button ID="btnRemove" runat="server" Height="56px" Text="Remove Trip" Width="157px" />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 306px; height: 140px;">
                    <asp:Button ID="btnAddTrip0" runat="server" Height="56px" Text="Register a New Account" Width="157px" />
                    <br />
                    <asp:Button ID="btnAddTrip1" runat="server" Height="56px" Text="Update/Edit Account" Width="157px" />
                    <br />
                    <asp:Button ID="btnAddTrip2" runat="server" Height="56px" Text="Remove Account" Width="157px" />
                    <br />
                    <br />
                    <br />
                    </td>
            </tr>
    </div>
&nbsp;&nbsp;&nbsp; 
            <tr>
                <td style="width: 317px; height: 20px;">
                    <h2>Enquires           
                    </td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 317px; height: 20px;">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 317px; height: 20px;">
                    Please remove the Enquiry Onces its solved.<br />
                    ID :&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="121px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSolved" runat="server" Height="39px" Text="Enquiry Solved" Width="124px" />
                    <br />
                    <br />
                </td>
                <td style="width: 306px; height: 20px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 317px; height: 20px;">
                    <h2>&nbsp;Recently Booked Trips</h2><br />
                    <br />
                </td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
            </tr>
    </div>
    </div>
    </div>
</div>
    </div>
            <tr>
                <td style="width: 317px; height: 20px;">
                    &nbsp;</td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 317px; height: 20px;">
                    <br />
                    Edit Customer Trip by entering the Trip ID
                    <br />
                    ID :&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="121px"></asp:TextBox>
&nbsp;<asp:Button ID="btnSolved0" runat="server" Height="39px" Text="Edit Trip" Width="124px" />
                </td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
            </tr>
    
    </div>
    </div>
    </div>
    </div>
</asp:Content>

