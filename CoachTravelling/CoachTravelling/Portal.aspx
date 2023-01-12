<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="CoachTravelling.Portal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

    <div>
        <table style="width:100%; height: 61px;">
            <tr>
                <td style="width: 364px; height: 20px;">
                    This is your personal Portal, where you can review and edit your personal information or view your trips and edit them.</td>
                <td style="width: 306px; height: 20px;">
                    <h2>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPurchase" runat="server" ForeColor="#009933" Text="You have succesfully purchased your new holiday" Visible="False"></asp:Label>
                    </h2>
                </td>
            </tr>
            <tr>
                <td style="width: 364px; height: 20px;">
                    <h3><asp:Image ID="Image1" runat="server" GenerateEmptyAlternateText="True" Height="155px" ImageUrl="~/Portalimage/facebook-default-no-profile-pic.jpg" Width="144px" />&nbsp;<asp:Button ID="btnEditProfile" runat="server" Height="28px" Text="Edit Profile" Width="130px" />
                    </h3>
                    <p>Username :&nbsp;
                        <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
                    <p>Full Name :
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                    <p>Gender :
                        <asp:Label ID="lblGender" runat="server" Text="Label"></asp:Label>
                    <p>Date of Birth :
                        <asp:Label ID="lblDOB" runat="server" Text="Label"></asp:Label>
                    <p>Address :
                        <asp:Label ID="lblAddress" runat="server" Text="lblAddress"></asp:Label>
                    <p>Postcode :
                        <asp:Label ID="lblPostCode" runat="server" Text="lblPostCode"></asp:Label>
                    </p>
                    &nbsp;</td>
                <td style="width: 306px; height: 20px;">
                    <h2>Make a Review</h2>
                    <p>Review Subject
                        <asp:DropDownList ID="ddReview" runat="server" Height="21px" Width="195px">
                            <asp:ListItem Value="0">Choose One</asp:ListItem>
                            <asp:ListItem>Booking</asp:ListItem>
                            <asp:ListItem>Website </asp:ListItem>
                            <asp:ListItem>Customer Service</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
           <asp:Label ID="wrnSubject" runat="server" ForeColor="Red" Text="Please Pick a Subject" Visible="False"></asp:Label>
                    <p>Rating&nbsp;
                        <asp:DropDownList ID="ddRating" runat="server" Height="16px" Width="86px">
                            <asp:ListItem Value="5">5 Star</asp:ListItem>
                            <asp:ListItem Value="4">4 Star</asp:ListItem>
                            <asp:ListItem Value="3">3 Star</asp:ListItem>
                            <asp:ListItem Value="2">2 Star</asp:ListItem>
                            <asp:ListItem Value="1">1 Star</asp:ListItem>
                        </asp:DropDownList>
                    <p>Description<asp:Label ID="wrnDescription" runat="server" ForeColor="Red" Text="Please enter Some Description." Visible="False"></asp:Label>
                    </p>
                    <h3>
                        <textarea  ID="taDescription" runat="server" name="S1"></textarea></h3>
                    <h3>
                        <asp:Button ID="btnReviewSubmit" runat="server" Height="42px" Text="Submit Review" Width="160px" OnClick="btnReviewSubmit_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h3>
                    <p>
           <asp:Label ID="wrnError" runat="server" ForeColor="Red" Text="There was an error during this progress of request." Visible="False"></asp:Label>
                    </p></td>
            </tr>
            <tr>
                <td style="width: 364px; height: 20px;">
                    <h2>View All Trips
                    </h2>
                    <p>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <ItemStyle BackColor="White" ForeColor="#330099" />
                            <ItemTemplate>
                                ID:
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                                <br />
                                from:
                                <asp:Label ID="fromLabel" runat="server" Text='<%# Eval("from") %>' />
                                <br />
                                to:
                                <asp:Label ID="toLabel" runat="server" Text='<%# Eval("to") %>' />
                                <br />
                                tripdate:
                                <asp:Label ID="tripdateLabel" runat="server" Text='<%# Eval("tripdate") %>' />
                                <br />
                                seat:
                                <asp:Label ID="seatLabel" runat="server" Text='<%# Eval("seat") %>' />
                                <br />
                                nopeople:
                                <asp:Label ID="nopeopleLabel" runat="server" Text='<%# Eval("nopeople") %>' />
                                <br />
                                duration:
                                <asp:Label ID="durationLabel" runat="server" Text='<%# Eval("duration") %>' />
                                <br />
                                price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
<br />
                                paidby:
                                <asp:Label ID="paidbyLabel" runat="server" Text='<%# Eval("paidby") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT [ID], [from], [to], [tripdate], [seat], [nopeople], [duration], [price], [paidby] FROM [bookedtrips] WHERE ([bookedby] = ?)">
                            <SelectParameters>
                                <asp:SessionParameter Name="bookedby" SessionField="Username" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT [ID], [from], [to], [tripdate], [nopeople], [duration], [price] FROM [bookedtrips] WHERE ([bookedby] = ?)">
                            <SelectParameters>
                                <asp:SessionParameter Name="bookedby" SessionField="Username" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </p>
                    <h2>To edit a trip enter the trip ID in here! </h2>
                    <p>
                        <asp:TextBox ID="txtTripEdit" runat="server" Height="30px" Width="90px"></asp:TextBox>
&nbsp;&nbsp; <asp:Button ID="btnEdit1" runat="server" Text="Print Trip" Height="42px" Width="78px" />
                    &nbsp;&nbsp;
&nbsp;<asp:Button ID="btnEdit" runat="server" Text="Edit Trip" Height="42px" Width="97px" />
                    &nbsp;&nbsp; <asp:Button ID="btnEdit0" runat="server" Text="Remove Trip" Height="42px" Width="97px" />
                    </p><br />
                    <br />
                </td>
                <td style="width: 306px; height: 20px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 364px; height: 20px;">
                    &nbsp;</td>
                <td style="width: 306px; height: 20px;">
                    &nbsp;</td>
            </tr>
            
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</div>
    </div>
</div>
    </div>
    </div>
</asp:Content>
