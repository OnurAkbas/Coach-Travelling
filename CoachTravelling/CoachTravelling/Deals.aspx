<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Deals.aspx.cs" Inherits="CoachTravelling.Deals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Catalouge of our current avaiable destinations</h2>
    <p>Our lexury trips are one of the kind. We make sure that our customers get the best holidays of their lives with us. </p>
    <p>All our trips include :</p>
    <p>Transport</p>
    <p>Night stay</p>
    <p>Breakfast and lunch</p>



     <div>
        <table style="width:100%; height: 61px;">
            <tr>
                <td style="width: 337px; height: 20px;">
                    <asp:Image ID="Image1" runat="server" Height="230px" ImageUrl="~/destination/barcelona.jpg" Width="387px" />
                </td>
                <td style="width: 381px; height: 20px;">
                    <asp:Image ID="Image2" runat="server" Height="228px" ImageUrl="~/destination/madrid.jpg" Width="405px" />
                </td>
                <td style="height: 20px; width: 368px;">
                    <asp:Image ID="Image3" runat="server" Height="230px" ImageUrl="~/destination/lizbona.jpg" Width="395px" />
                </td>
            </tr>
            <tr>
                <td style="width: 337px; height: 20px;">Barcelona<br />
                    Barcelona, the cosmopolitan capital of Spain’s Catalonia region, is known for its art and architecture. The fantastical Sagrada Família church and other modernist landmarks designed by Antoni Gaudí dot the city<br />
                </td>
                <td style="width: 381px; height: 20px;">Madrid<br />
                    Is the capital city of Spain, located right in the centre of the Iberian Peninsula. Its geographical location grants good communications of the city with other Spanish regions. As capital of the country, it is the seat to the Spanish government institutions and the city of residence of Spanish Royal family.
                    <br />
                </td>
                <td style="height: 20px; width: 368px;">Lisbon<br />
                    is recognised as a global city because of its importance in finance, commerce, media, entertainment, arts, international trade, education and tourism. It is one of the major economic centres on the continent, with a growing financial sector and one of the largest container ports on Europe&#39;s Atlantic coast.</td>
            </tr>
            <tr>
                <td style="width: 337px">
                    <asp:Button ID="btnbarcelona" runat="server" Text="Select" />
                </td>
                <td style="width: 381px">
                    <asp:Button ID="btnmadrid" runat="server" Text="Select" />
                </td>
                <td style="width: 368px">
                    <asp:Button ID="btnlisbon" runat="server" Text="Select" />
                </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Image ID="Image4" runat="server" Height="230px" ImageUrl="~/destination/sofia.jpg" Width="385px" />
                 </td>
                <td style="width: 381px">
                    <asp:Image ID="Image5" runat="server" Height="228px" ImageUrl="~/destination/pisa.jpg" Width="407px" />
                </td>
                <td style="width: 368px">
                    <asp:Image ID="Image6" runat="server" Height="226px" ImageUrl="~/destination/rome.jpg" Width="395px" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    Sofia 
                    <br />
                    Sofia&#39;s development as a significant settlement owes much to its central position in the Balkans. It is situated in western Bulgaria, at the northern foot of the Vitosha mountain, in the Sofia Valley that is surrounded by the Balkan mountains to the north. The valley has an average altitude of 550 metres (1,800 ft).</td>
                <td style="width: 381px">
                    Pisa<br />
                    It is the capital city of the Province of Pisa. Although Pisa is known worldwide for its leaning tower (the bell tower of the city&#39;s cathedral), the city contains more than 20 other historic churches, several medieval palaces and various bridges across the Arno. Much of the city&#39;s architecture was financed from its history as one of the Italian maritime republics. </td>
                <td style="width: 368px">
                    Rome<br />
                    Rome is the capital of Italy, and its largest city. ... According to tradition, the city was founded by Romulus, the twin of Remus. The twins decided to build a city, but in an argument Romulus killed Remus and established the city and named it after himself.</td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Button ID="btnsofia" runat="server" Text="Select" />
                 </td>
                <td style="width: 381px">
                    <asp:Button ID="btnpisa" runat="server" Text="Select" />
                </td>
                <td style="width: 368px">
                    <asp:Button ID="btnrome" runat="server" Text="Select" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Image ID="Image7" runat="server" Height="208px" ImageUrl="~/destination/zakopane.jpg" Width="389px" />
                 </td>
                <td style="width: 381px">
                    <asp:Image ID="Image8" runat="server" Height="206px" ImageUrl="~/destination/Mary-Basilica-Krakow.jpg" Width="405px" />
                </td>
                <td style="width: 368px">
                    <asp:Image ID="Image9" runat="server" Height="206px" ImageUrl="~/destination/warszawa.jpg" Width="397px" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    Zakopane<br />
                    Zakopane is situated at the foot of the Tatra Mountains (800-1000 m), in the valley between Gubalówka Monutain (1123m) and Giewont massif (1909m). It is the most famous holiday and tourist resort in Poland. It is also winter sports centre and the starting point of the mountain tours.</td>
                <td style="width: 381px">
                    Cracow (Krakow)<br />
                    Kraków is the capital of Małopolskie Voivodeship, large academic and cultural centre. There are 12 universities in Kraków, among them the oldest one in Poland - the Jagiellonian University, 6 theatres, opera house, concert hall and numerous museums. The largest and the most valuable historic buildings complex is located in the city - these are mainly Gothic, secular and sacred buildings.</td>
                <td style="width: 368px">
                    Warsaw (Warszawa)<br />
                    The capital of Poland. This amazing city is full of contrasts, question marks and surprises. It will excite and inspire you.</td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Button ID="btnzakopane" runat="server" Text="Select" />
                 </td>
                <td style="width: 381px">
                    <asp:Button ID="btncracow" runat="server" Text="Select" />
                </td>
                <td style="width: 368px">
                    <asp:Button ID="btnwarsaw" runat="server" Text="Select" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Image ID="Image10" runat="server" Height="219px" ImageUrl="~/destination/birmingham.jpg" Width="385px" />
                 </td>
                <td style="width: 381px">
                    <asp:Image ID="Image11" runat="server" Height="215px" ImageUrl="~/destination/manchester.jpg" Width="411px" />
                </td>
                <td style="width: 368px">
                    <asp:Image ID="Image12" runat="server" Height="216px" ImageUrl="~/destination/discoverlondon.jpg" Width="395px" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    Birgminham<br />
                    Birmingham, second largest city of the United Kingdom and a metropolitan borough in the West Midlands metropolitan county. It lies near the geographic centre of England.</td>
                <td style="width: 381px">
                    Manchester<br />
                    Manchester is known throughout the world for its variety of exciting activities, lively atmosphere, and energetic culture of innovation. Its influence is particularly notable artistically, architecturally, theatrically and musically, helping to make it a &#39;top 10 city in the world to visit.</td>
                <td style="width: 368px">
                    London<br />
                    London is the capital and most populous city of England and the United Kingdom.Standing on the River Thames in the south east of the island of Great Britain.London is a leading global city in the arts, commerce, education, entertainment, fashion, finance, healthcare, media, professional services, research and development, tourism, and transportation</td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Button ID="btnbirmingham" runat="server" Text="Select" />
                 </td>
                <td style="width: 381px">
                    <asp:Button ID="btnmancherster" runat="server" Text="Select" />
                </td>
                <td style="width: 368px">
                    <asp:Button ID="btnlondon" runat="server" Text="Select" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Image ID="Image13" runat="server" Height="220px" ImageUrl="~/destination/paris.jpg" Width="385px" />
                 </td>
                <td style="width: 381px">
                    <asp:Image ID="Image14" runat="server" Height="216px" ImageUrl="~/destination/edinburgh.jpg" Width="408px" />
                </td>
                <td style="width: 368px">
                    <asp:Image ID="Image15" runat="server" Height="219px" ImageUrl="~/destination/brussels.jpg" Width="395px" />
                 </td>
            </tr>
             <tr>
                <td style="width: 337px">
                    Paris<br />
                    Paris is famous for being a global fashion hub, and it is also known for its world-renowned cuisine. Paris is also famous for many of its attractions, including the Eiffel Tower, Notre Dame, The Louvre and Moulin Rouge. </td>
                <td style="width: 381px">
                    Edinburgh<br />
                    Is the capital city of Scotland and one of its 32 local government council areas. Located in Lothian on the Firth of Forth&#39;s southern shore, it is Scotland&#39;s second most populous city and the seventh most populous in the United Kingdom.</td>
                <td style="width: 368px">
                    Brussels<br />
                    Who hasn’t dreamt of seeing Brussels? Our tour of Brussels is an excellent introduction to Belgium. Discover the ancient buildings of the city and its splendid modern districts on board of our comfortable coach.</td>
            </tr>
             <tr>
                <td style="width: 337px">
                    <asp:Button ID="btnparis" runat="server" Text="Select" />
                 </td>
                <td style="width: 381px">
                    <asp:Button ID="btnedinburgh" runat="server" Text="Select" />
                </td>
                <td style="width: 368px">
                    <asp:Button ID="btnbrussels" runat="server" Text="Select" />
                 </td>
            </tr>
             </table>
    </div>
</asp:Content>
