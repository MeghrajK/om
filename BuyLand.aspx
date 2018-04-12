<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuyLand.aspx.cs" Inherits="BuyLand" Title="Sukhkarta -Find Land" %>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="navigation">
		<div id="navigation_inner">
			
			<ul>
				<li><a href="Home.aspx">Home</a></li>
				<li><a href="Buy.aspx">Buy Home</a></li>
				<li class="current_page_item"><a href="BuyLand.aspx">Buy Land</a></li>
				<li><a href="Sell.aspx">Selling</a></li>
				<li><a href="ContactGeneral.aspx">Contact Us</a></li>
				<li><a href="Login.aspx">Admin Login</a></li>
			</ul>

		</div>
	</div>

</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="Filter">
        <div class="Inner_Filter">
            <div style="height:10px"></div>
            <div class="Row">
                <div style="height:10px;"></div>
                <h1>Find Land</h1>   
            </div>
            <div style="height:10px">
                <asp:SqlDataSource ID="DS_State1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT [State] FROM [State]"></asp:SqlDataSource>
                    
                <asp:SqlDataSource ID="DS_Unit" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT [Unit] FROM [Unit]"></asp:SqlDataSource>
            </div>
            <fieldset style="width:680px; height:auto; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Search By</legend>
                <div style="height:10px;"></div>
                <table style="width: 100%; height:220px;">
                    <tr>
                        <td style="width:145px;">
                           
                            <asp:Label ID="Label1" runat="server" Text="City" CssClass="Lbl"></asp:Label>
                           
                        </td>
                        <td style="width:195px;">
                            
                            <asp:TextBox ID="Tb_CityBuyLnd" runat="server" CssClass="Textbox"></asp:TextBox>
                            
                        </td>
                        <td style="width:145px;">
                           
                            <asp:Label ID="Label6" runat="server" Text="State" CssClass="Lbl" 
                                Visible="False"></asp:Label>
                           
                        </td>
                        <td style="width:195px;">
                           
                            <asp:DropDownList ID="Dp_StateBuyLnd" runat="server" CssClass="Textbox" 
                                Width="185px" DataSourceID="DS_State1" DataTextField="State" 
                                DataValueField="State" Visible="False">
                            </asp:DropDownList>
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                            
                            <asp:Label ID="Label2" runat="server" Text="Price" CssClass="Lbl" ForeColor="#DA3F67" Font-Bold="True"></asp:Label>
                            
                        </td>
                        <td style="width:195px;">
                        </td>
                        <td style="width:145px;">
                            &nbsp;</td>
                        <td style="width:195px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                            
                            <asp:Label ID="Label3" runat="server" Text="Minimium" CssClass="Lbl"></asp:Label>
                            
                        </td>
                        <td style="width:195px;">
                            
                            <asp:TextBox ID="Tb_MinPrcBuyLnd" runat="server" CssClass="Textbox"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RFV_MinPrc_Land" runat="server" 
                                ErrorMessage="*" Font-Bold="true" Font-Size="Medium" 
                                ControlToValidate="Tb_MinPrcBuyLnd" ValidationGroup="FndLnd" ></asp:RequiredFieldValidator>
                            
                        </td>
                        <td style="width:145px;">
                           
                            <asp:Label ID="Label8" runat="server" Text="Maximum" CssClass="Lbl"></asp:Label>
                           
                        </td>
                        <td style="width:195px;">
                           
                            <asp:TextBox ID="Tb_MaxPrcBuyLnd" runat="server" CssClass="Textbox" Width="175px"></asp:TextBox>
                           
                            <asp:RequiredFieldValidator ID="RFV_MaxPrcBuyLnd" runat="server" 
                                ErrorMessage="*" ValidationGroup="FndLnd" 
                                ControlToValidate="Tb_MinPrcBuyLnd" Font-Bold="true" Font-Size="Medium"></asp:RequiredFieldValidator>
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                            
                            <asp:Label ID="Label4" runat="server" Text="Area" CssClass="Lbl" ForeColor="#DA3F67" Font-Bold="True"></asp:Label>
                            
                        </td>
                        <td style="width:195px;">
                        </td>
                        <td style="width:145px;">
                            &nbsp;</td>
                        <td style="width:195px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                           
                            <asp:Label ID="Label5" runat="server" Text="Minimum" CssClass="Lbl" 
                                Width="100px"></asp:Label>
                               
                           
                        <td style="width:195px;">
                            
                            <asp:TextBox ID="Tb_MinAreaBuyLnd" runat="server" CssClass="AreaTb"></asp:TextBox>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="AreaDp" 
                                DataSourceID="DS_Unit" DataTextField="Unit" DataValueField="Unit">
                            </asp:DropDownList>
                        </td>
                        <td style="width:145px;">
                            
                            <asp:Label ID="Label10" runat="server" Text="Maximum" CssClass="Lbl"></asp:Label>
                            
                        </td>
                        <td style="width:195px;">
                            
                            <asp:TextBox ID="Tb_MaxAreaBuyLnd" runat="server" CssClass="AreaTb"></asp:TextBox>
                            <asp:DropDownList ID="Dp_MaxAreaUnit" runat="server" CssClass="AreaDp" 
                                DataSourceID="DS_Unit" DataTextField="Unit" DataValueField="Unit">
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr style="height:50px">
                        <td colspan="4">
                            <div style="height:40px; width:180px; margin:10px auto auto 240px; float:left;">
                                <asp:Button ID="Btn_FindBuyLnd" runat="server" Text="Find" Height="40px" 
                                    Width="180px" Font-Bold="True" Font-Size="20px" ForeColor="#DA3F67" 
                                    onclick="Btn_FindBuyLnd_Click" ValidationGroup="FndLnd"  />
                            </div>
                            <div style="height:40px; width:180px; margin:10px 10px auto auto; float:right;">
                                
                            </div>
                        </td>
                    </tr>
                </table>
                <div style="height:10px;"></div>
            </fieldset> 
            <div style="height:20px;"></div>       
        </div>
    </div>
    <div style="height:5px;"></div>
    <div class="Result">
        <div class="Inner_Result">
        <div style="height:10px;"></div>
            <asp:Panel runat="server" ID="Pnl_SearchLand">
                
                <asp:GridView ID="GV_FindLand" runat="server" BorderColor="#1C5E55" 
                    BorderWidth="1px" CellPadding="0" 
                        ForeColor="#333333"  
                        Width="660px"  
                        RowStyle-HorizontalAlign="Center" CellSpacing="1"  DataKeyNames="Land_id"
                        ToolTip="Click on Go Detail to see details" 
                        AutoGenerateColumns="false" 
                        onselectedindexchanged="GV_FindLand_SelectedIndexChanged" >
                        
                        <RowStyle BackColor="#E3EAEB" Height="35px" />
                            <Columns>
                                <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                
                                <asp:TemplateField HeaderText="Area" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Area") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Price" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="City" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="GoDetails" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px">
                                    <ItemTemplate>
                                        <asp:Button  runat="server" ID="Btn_GoDetails" CommandName="select" CssClass="GoDetails" Text="Go Detail" ToolTip="Click to see details" />
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
        <div style="height:10px;"></div>
    </div>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder3">

</asp:Content>


