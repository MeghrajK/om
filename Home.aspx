<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Sukhkarta Builders" %>

<%--<title>
	Teamgum: Share links with your team directly from your browser
</title>--%>
<%--<meta name="description" content="Teamgum is a browser extension which lets you share links with your team on just a click, without leaving the page you’re on. It’s fast, easy and free to download in the Web Store.">
<meta name="keywords" content="link sharing, sharing links, browser extension, productivity tool, web extension, sharing weblinks, news sharing, email, intranet, enterprise social business, knowledge sharing platform, reddit, facebook, twitter, enterprise social network, enterprise collaboration platform, enterprise social, social business, ESN, collaboration software, enterprise collaboration, SaaS, employee engagement, mobile learning, knowledge management, knowledge base, knowledge management tool, knowledge sharing , knowledge sharing tools,build knowledge, social business, DIY, link sharing, sharing links, knowledge sharing, reader list, discover knowledge, teams , drona mobile, enagement platform, social learning, news feed.">
<meta charset="UTF-8">--%>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
     <div id="navigation">
		<div id="navigation_inner">
			
			<ul>
				<li class="current_page_item"><a href="Home.aspx">Home</a></li>
				<li><a href="Buy.aspx">Buy Home</a></li>
				<li><a href="BuyLand.aspx">Buy Land</a></li>
				<li><a href="Sell.aspx">Selling</a></li>
				<li><a href="ContactGeneral.aspx">Contact Us</a></li>
				<li><a href="Login.aspx">Admin Login</a></li>
			</ul>

		</div>
	</div>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
     <div class="About_Us">
        <div class="AbtUs_Img">
        </div>
        <div class="AboutUs_Info">
            <%--<div>
                <h1 style="font-size:large; color:#DA3F67; height: 20px; margin-bottom:5px;">About Us</h1>
            </div>
            <div style="font-size:small;">
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:medium; color:#DA3F67;">Sukhkarta Builders and Developers</span>
                
            </div>--%>
        <span style="font-size: large">CAUTION : OPEN FOR TEST ONLY
            <br />
            DATA IS NOT REAL<br />
            <br />
            
            <br />
            </span><br />
            <%--<asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="~/DemoDocs/lab.pdf">HyperLink</asp:HyperLink>--%>
        </div>
        
      </div>
      <div style="height:5px;"></div>
      <div class="Speacial_Offers">
        <div class="Row">
            <div style="height:10px;"></div>
            <h1>Special Offers Home</h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="select soh.SOH_id,h.Home_id,h.Name,h.Area,soh.Original_price as 'Orginal Price',soh.Special_price as 'Special Price',CONVERT(date,soh.Valid_to) as 'Valid Till' from Special_offer_home soh inner join Home h on soh.Home_id=h.Home_id where Valid_status=1">
                </asp:SqlDataSource>
                                       
        </div>
        <div style="height:15px;"></div>
         <div class="Display_SO">
            <asp:Panel runat="server" ID="Panel1" ScrollBars="Both">
           
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                    DataKeyNames="SOH_id,Home_id" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333"  
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    Width="660px" 
                    RowStyle-HorizontalAlign="Center" CellSpacing="1" ToolTip="Click on Go Detail to see details" 
                     EmptyDataText="No Data Available For Current Search Criteria - Try new selection"
                      EmptyDataRowStyle-CssClass="Empty">
                    <RowStyle BackColor="#E3EAEB" Height="35px" />
                    <Columns>
                        <asp:TemplateField HeaderText="SOH_id" SortExpression="SOH_id" Visible="False">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("SOH_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("SOH_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Home_id" SortExpression="Home_id" 
                            Visible="False">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Home_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Home_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Area" SortExpression="Area" ItemStyle-Width="60px">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Orginal Price" SortExpression="Orginal Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("[Orginal Price]") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("[Orginal Price]") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Special Price" SortExpression="Special Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("[Special Price]") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("[Special Price]") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Valid Till" SortExpression="Valid Till">
                            <EditItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("[Valid Till]") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("[Valid Till]") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Go Details">
                            <EditItemTemplate>
                                <%--<asp:Label ID="Lbl_GoDetailsSoHm" runat="server" ></asp:Label>--%>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button  runat="server" ID="Btn_GoDetailsSoHm" CommandName="select" CssClass="GoDetails" Text="Go Detail" ToolTip="Click to see details" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="35px" Font-Size="Small" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
          
             </asp:Panel>
          </div>
      </div>
      <div style="height:10px;"></div>
      <div class="Speacial_Offers">
        <div class="Row">
            <div style="height:10px;"></div>
            <h1>Special Offers Land</h1>
        </div>    
        <div style="height:15px; width: 700px;">
            <asp:SqlDataSource ID="DS_SOL" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                
                SelectCommand="select sol.SOL_id,sol.Land_id,l.Name,l.Area,l.Unit,sol.Original_price as 'Original Price',sol.Special_price as 'Special Price',convert(date,sol.Valid_to) as 'Valid Till' from Land l inner join Special_offer_land sol on l.Land_id=sol.Land_id where sol.Valid_status=1"></asp:SqlDataSource>
          </div>
          <div class="Display_SO">
            <asp:Panel runat="server" ID="Panel2" ScrollBars="Both">
             
                 <asp:GridView ID="GV_SOL" runat="server" AutoGenerateColumns="False" 
                     BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" CellSpacing="1" 
                     DataKeyNames="SOL_id" DataSourceID="DS_SOL" ForeColor="#333333" 
                     onselectedindexchanged="GV_SOL_SelectedIndexChanged" 
                     RowStyle-HorizontalAlign="Center" ToolTip="Click on Go Detail to see details" 
                     Width="660px" EmptyDataText="No Data Available For Current Search Criteria - Try new selection"
                      EmptyDataRowStyle-CssClass="Empty">
                     <RowStyle BackColor="#E3EAEB" Height="35px" />
                     <Columns>
                         <asp:TemplateField HeaderText="SOL_id" SortExpression="SOL_id" Visible="False">
                             <EditItemTemplate>
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("SOL_id") %>'></asp:Label>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label1" runat="server" Text='<%# Bind("SOL_id") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Land_id" SortExpression="Land_id" 
                             Visible="False">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Land_id") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Bind("Land_id") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Name" SortExpression="Name">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Area" SortExpression="Area" ItemStyle-Width="60px">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label4" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Unit" SortExpression="Unit">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Unit") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label5" runat="server" Text='<%# Bind("Unit") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Original Price" SortExpression="Original Price">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox5" runat="server" 
                                     Text='<%# Bind("[Original Price]") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label6" runat="server" Text='<%# Bind("[Original Price]") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Special Price" SortExpression="Special Price">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Special Price]") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label7" runat="server" Text='<%# Bind("[Special Price]") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Valid Till" SortExpression="Valid Till">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("[Valid Till]") %>'></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label8" runat="server" Text='<%# Bind("[Valid Till]") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Go Details">
                            <EditItemTemplate>
                                <%--<asp:Label ID="Lbl_GoDetailsSoHm" runat="server" ></asp:Label>--%>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button  runat="server" ID="Btn_GoDetailsSoLd" CommandName="select" CssClass="GoDetails" Text="Go Detail" ToolTip="Click to see details" />
                            </ItemTemplate>
                        </asp:TemplateField>
                     </Columns>
                     <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                     <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                     <HeaderStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="Small" 
                         ForeColor="White" Height="35px" />
                     <EditRowStyle BackColor="#7C6F57" />
                     <AlternatingRowStyle BackColor="White" />
                 </asp:GridView>
             
            </asp:Panel>     
        </div>
        <div style="height:15px;"></div>
      </div>
</asp:Content>


<asp:Content ID="CPH_New1" runat="server" contentplaceholderid="CPH_New">
     <div class="Quick_Find_Outer">
        <div style="height:1px"></div>
        <div class="Header_Find">
            <div class="Find_Logo"></div>
            <h1>Quick Find</h1>
        </div>
        <div style="height:5px;"></div>
        <div style="height:auto; width:205px; margin-left:5px;">
            <table style="width: 100%; height: 169px;">
                <tr>
                    <td style="width: 97px">
                        <asp:Label ID="Label2" runat="server" Text="City" CssClass="QckFnd_Lbl" Width="72px" 
                            ></asp:Label>
                        <asp:RequiredFieldValidator ID="RFV_City" runat="server" 
                            ErrorMessage="* - Please enter city" Text="*" InitialValue="" ControlToValidate="Tb_QckFnd_City" ValidationGroup="Qfnd_Valid" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="REV_City" runat="server" ErrorMessage="! - Please enter valid city" Text="!"
                         ValidationGroup="Qfnd_Valid" ControlToValidate="Tb_QckFnd_City" ValidationExpression="^[aA-zZ]*$"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Tb_QckFnd_City" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 97px">
                        <asp:Label ID="Label3" runat="server" Text="Price" CssClass="QckFnd_Lbl" Width="70px" ForeColor="#DA3F67"></asp:Label>
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 97px">
                        <asp:Label ID="Label4" runat="server" Text="Minimum" CssClass="QckFnd_Lbl" Width="70px"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFV_MinPrc" runat="server" 
                            ControlToValidate="Tb_QckFnd_MinPrc" ErrorMessage="* - Please enter minimum price" Text="*" InitialValue=""  
                            ValidationGroup="Qfnd_Valid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="REV_MinPrc" 
                        runat="server" ErrorMessage="# - Please enter valid minimum price " Text="#" ValidationExpression="^[0-9]*$" ControlToValidate="Tb_QckFnd_MinPrc" ValidationGroup="Qfnd_Valid"></asp:RegularExpressionValidator>    
                    </td>
                    <td>
                        <asp:TextBox ID="Tb_QckFnd_MinPrc" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 97px">
                        <asp:Label ID="Label5" runat="server" Text="Maximum" CssClass="QckFnd_Lbl" 
                            Width="70px"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFV_MaxPrc" runat="server" 
                            ControlToValidate="Tb_QckFnd_MaxPrc" ErrorMessage="* - Please enter maximum price" Text="*" InitialValue="" 
                            ValidationGroup="Qfnd_Valid"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="REV_MaxPrc" 
                        runat="server" ErrorMessage="# - Please enter valid maximum price" Text="#" ValidationExpression="^[0-9]*$" ControlToValidate="Tb_QckFnd_MaxPrc" ValidationGroup="Qfnd_Valid"></asp:RegularExpressionValidator>      
                    </td>
                    <td>
                        <asp:TextBox ID="Tb_QckFnd_MaxPrc" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 97px">
                        <asp:RadioButton ID="Rb_Land" runat="server" Text=" Land"  
                            CssClass="Qck_Fnd_Rb" GroupName="QckFnd"/>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rb_Home" runat="server" Text=" Home" CssClass="Qck_Fnd_Rb" 
                            GroupName="QckFnd"  Checked="true"/>
                    </td>
                </tr>
                </table>
                <div style="height:5px;"></div>
                <div style="height:auto;">
                    <div style="width:120px; margin:15px auto;">
                        <asp:Button ID="Btn_QuickFind" runat="server" Text="Find" CssClass="Btn_General" 
                        Width="120px" Height="35px" ValidationGroup="Qfnd_Valid" onclick="Btn_QuickFind_Click" />
                    </div>
                    <div style="height:5px;"></div>
                    <div>
                         <asp:ValidationSummary ID="VS_QckFnd" runat="server" 
                             ValidationGroup="Qfnd_Valid" DisplayMode="BulletList" ShowSummary="false" 
                             ShowMessageBox="true" Font-Size="14px" 
                             HeaderText="Kindly check the following :" />
                    </div>
                    <div style="height:10px;"></div>
                </div>
                
        </div>    
    </div>
    
</asp:Content>



