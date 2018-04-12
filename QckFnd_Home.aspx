<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QckFnd_Home.aspx.cs" Inherits="QckFnd_Home" Title="Untitled Page" %>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div id="navigation">
		<div id="navigation_inner">
			
			<ul>
				<li><a href="Home.aspx">Home</a></li>
				<li><a href="Buy.aspx">Buy Home</a></li>
				<li><a href="BuyLand.aspx">Buy Land</a></li>
				<li><a href="Sell.aspx">Selling</a></li>
				<li><a href="ContactGeneral.aspx">Contact Us</a></li>
				<li><a href="Login.aspx">Admin Login</a></li>
			</ul>

		</div>
	</div>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="QckFnd_Res">
            <asp:Panel runat="server" ID="Panel1" ScrollBars="Both">
                <asp:GridView ID="GV_QckFnd" runat="server"  
                    BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                    ForeColor="#333333" 
                    Width="680px" 
                    RowStyle-HorizontalAlign="Center" CellSpacing="1" 
                    ToolTip="Click on Go Detail to see details" 
                    onselectedindexchanged="GV_QckFnd_SelectedIndexChanged" DataKeyNames="Home_id" 
                    AutoGenerateColumns="false" 
                     EmptyDataText="No Data Available For Current Search Criteria - Try new selection"
                      EmptyDataRowStyle-CssClass="Empty">
                    <RowStyle BackColor="#E3EAEB" Height="35px" />
                    
                        <Columns>
                            <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Area" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("Area") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Go Details" HeaderStyle-HorizontalAlign="Center" 
                                    HeaderStyle-Width="130px">
                                <ItemTemplate>
                                    <asp:Button  runat="server" ID="Btn_GoDetails" CommandName="select" 
                                                CssClass="GoDetails" Text="Go Detail" 
                                        ToolTip="Click to see details" />
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
</asp:Content>
<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

</asp:Content>


