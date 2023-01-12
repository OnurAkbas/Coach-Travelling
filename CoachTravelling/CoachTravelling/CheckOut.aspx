<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="CoachTravelling.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <table style="width:100%; height: 61px;">
            <tr>
                <td style="width: 414px; height: 20px;">
                    &nbsp;</td>
                <td style="width: 306px; height: 20px;">
                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;Check Out Page</h2>
                </td>
            </tr>
            <tr>
                <td style="width: 414px; height: 20px;"><h3>Personal Details </h3>
                    <p>Username :&nbsp;
                        <asp:TextBox ID="txtUsername" runat="server" Width="272px" Enabled="False" Height="22px"></asp:TextBox>
                    </p>
                    <p>Full Name&nbsp; :&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" Width="263px" Enabled="False" Height="26px"></asp:TextBox>
                    </p>
                    <p>Date Of Birth :
                        <asp:TextBox ID="txtDOB" runat="server" Width="252px" Enabled="False" Height="28px"></asp:TextBox>
                    </p>
                    <p>Phone Number :&nbsp;
                        <asp:TextBox ID="txtNumber" runat="server" Width="235px" Enabled="False" Height="26px"></asp:TextBox>
                    </p>
                    <p>Address Line 1 :&nbsp;
                        <asp:TextBox ID="txtAddress" runat="server" Width="235px" Enabled="False" Height="24px"></asp:TextBox>
                    </p>
                    <p>Postcode : &nbsp;
                        <asp:TextBox ID="txtPostcode" runat="server" Width="267px" Enabled="False" Height="29px"></asp:TextBox>
                    </p>
                    <br />
                </td>
                <td style="width: 306px; height: 20px;">
                    <br />
                </td>
                <td style="height: 20px; width: 541px;"><h3>Your Trip Review</h3>
                    <p>From :
                        <asp:Label ID="lblFrom" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>To :&nbsp;
                        <asp:Label ID="lblTo" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>Trip date :&nbsp;
                        <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>Seating Type :
                        <asp:Label ID="lblSeat" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>People:
                        <asp:Label ID="lblPeople" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>Duration :&nbsp;
                        <asp:Label ID="lblDurnation" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>Journey Time :
                        <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>Total Cost :&nbsp;
                        <asp:Label ID="lblTotalCost" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; (Including Discount)</p></td>
            </tr>

            </div>
    </div>
    </div>
            <tr>
                <td style="width: 414px; ">
                    <h2>Payment Details</h2>
                    <br />
                </td>
                <td style="width: 306px; ">
                    </td>
                <td style="width: 541px;"></td>
            </tr>

            
    </div>
            <tr>
                <td style="width: 414px; height: 20px;">
                   <p>Card Type :&nbsp;&nbsp;
                       <asp:DropDownList ID="ddType" runat="server" Height="26px" Width="177px">
                           <asp:ListItem Selected="True" Value="0">Pick a Payment Method</asp:ListItem>
                           <asp:ListItem>Visa</asp:ListItem>
                           <asp:ListItem>Visa Debt</asp:ListItem>
                           <asp:ListItem>Mastercard</asp:ListItem>
                           <asp:ListItem>Maestro</asp:ListItem>
                           <asp:ListItem>American Express</asp:ListItem>
                       </asp:DropDownList>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="wrnType" runat="server" ForeColor="Red" Text="You haven't picked a payment method" Visible="False"></asp:Label>
                    </p>
                    <p>Long Card Number :&nbsp;&nbsp; <asp:TextBox ID="txtLong" runat="server" Width="217px" Height="23px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="wrnLong" runat="server" ForeColor="Red" Text="Please Write in your long card number" Visible="False"></asp:Label>
                    </p>
                    <p>Expiry Date&nbsp; :&nbsp;&nbsp;<asp:DropDownList ID="ddMonth" runat="server" Height="20px" Width="66px">
                            <asp:ListItem Value="0">Month</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddYear" runat="server" Height="20px" Width="61px">
                            <asp:ListItem Value="0">Year</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="wrnExpiry" runat="server" ForeColor="Red" Text="Enter your card expiry date" Visible="False"></asp:Label>
                    </p>
                    <p>CVV Number :
                        <asp:TextBox ID="txtCVV" runat="server" Width="104px"></asp:TextBox>
                    &nbsp;<asp:Label ID="wrnCVV" runat="server" ForeColor="Red" Text="Enter your last 3 card digit number behind your card" Visible="False"></asp:Label>
                    </p>
                    <p>
                        <asp:Button ID="btnBuy" runat="server" Class="form-control" Height="39px" OnClick="btnBuy_Click" Text="Buy Now" Width="153px" />
                    &nbsp;<asp:Label ID="wrnPayment" runat="server" ForeColor="Red" Text="Payment not Accepted." Visible="False"></asp:Label>
                    </p><br />
                </td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
                <td style="height: 20px; width: 541px;">&nbsp;</td>
            </tr>
</asp:Content>
