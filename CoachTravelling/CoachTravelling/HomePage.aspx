<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CoachTravelling.HomePage" %>
   <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h1> Join us, Let&#39;s Travel Europe Together.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="wrnUser" runat="server" ForeColor="Red" Text="First Choose a destination." Visible="False"></asp:Label>
       </h1> 
     
    <div>
        <br />
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
       <ContentTemplate>
    <Triggers>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
        </asp:Timer>
         </ContentTemplate>
            </asp:UpdatePanel> 
    <asp:ImageMap ID="ImageMap1"  runat="server" Height="400px" Width="600px">
    </asp:ImageMap>
        <br />
    </div>
    <h1> Start A Journey Now. </h1> 
    <h2> Simple! Cheap! Reliable!</h2>
       <h3> Start Now!</h3>
    <br />
       To :&nbsp;&nbsp;
       <asp:DropDownList ID="ddTo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="to" DataValueField="to" OnSelectedIndexChanged="ddTo_SelectedIndexChanged1">
           <asp:ListItem Selected="True">Pick A Destination</asp:ListItem>
       </asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT DISTINCT [to] FROM [trips]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT DISTINCT [to] FROM [trips]"></asp:SqlDataSource>
           <asp:Label ID="wrnTo" runat="server" ForeColor="Red" Text="Pick a destination to go to." Visible="False"></asp:Label>
       <br />
       <br />
       From :&nbsp;&nbsp;
       <asp:DropDownList ID="ddFrom" runat="server" DataSourceID="SqlDataSource3" DataTextField="from" DataValueField="from">
       </asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT [from] FROM [trips] WHERE ([to] = ?)">
           <SelectParameters>
               <asp:SessionParameter Name="to" SessionField="get" Type="String" />
           </SelectParameters>
       </asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT [from] FROM [trips] WHERE ([triptime] = ?)">
           <SelectParameters>
               <asp:SessionParameter Name="triptime" SessionField="get" Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
       <br />
       <br />
    <p>
        Passangers&nbsp; :&nbsp;&nbsp;
        <asp:DropDownList ID="ddPassenger" runat="server" Height="20px" Width="84px">
            <asp:ListItem Selected="True" Value="0">Pick Passangers</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
        </asp:DropDownList>
           <asp:Label ID="wrnPassanger" runat="server" ForeColor="Red" Text="How many Passangers is this trip for." Visible="False"></asp:Label>
        </p>
       <div class="input-group">
                Date Of Trip :<br />
                <asp:DropDownList ID="ddDay" runat="server" Height="20px" Width="50px">
                    <asp:ListItem Value="0">Day</asp:ListItem>
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
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddMonth" runat="server" Height="20px" Width="66px">
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
                </asp:DropDownList>
                <br />
           <asp:Label ID="wrnDate" runat="server" ForeColor="Red" Text="Please Pick a date of time for travel." Visible="False"></asp:Label>
                    </div>
       <p>
           <asp:Button ID="btnCheckOut" runat="server" Height="30px" Text="Check Out" Width="106px" OnClick="btnCheckOut_Click" />
           <br />
            <br />
       <h2>Check out the reviews</h2>
       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource5">
           <ItemTemplate>
               subject:
               <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
               <br />
               rating:
               <asp:Label ID="ratingLabel" runat="server" Text='<%# Eval("rating") %>' />
               <br />
               message:
               <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
               <br />
<br />
           </ItemTemplate>
       </asp:DataList>
    <br />
       </div>
       <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString2.ProviderName %>" SelectCommand="SELECT [subject], [rating], [message] FROM [reviewpage] ORDER BY [ID]"></asp:SqlDataSource>
       <br />
       <br />
       <br />
       <br />
</asp:Content>
