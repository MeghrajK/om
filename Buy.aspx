<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" Title="Sukhkarta -Find Home" %>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div id="navigation">
		<div id="navigation_inner">
			
			<ul>
			
				<li><a href="Home.aspx">Home</a></li>
				<li class="current_page_item"><a href="Buy.aspx">Buy Home</a></li>
				<li><a href="BuyLand.aspx">Buy Land</a></li>
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
                <h1>Find Home</h1>   
            </div>
            <div style="height:10px">
                <asp:SqlDataSource ID="DS_State1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT [State] FROM [State]"></asp:SqlDataSource>
                                </div>
            <fieldset style="width:680px; height:auto; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Search By</legend>
                <div style="height:10px;"></div>
                <table style="width: 100%; height:100%;">
                    <tr>
                        <td style="width:145px;">
                            <asp:Label ID="Label1" runat="server" Text="City " CssClass="Lbl"></asp:Label>
                        </td>
                        <td style="width:202px;">
                            <asp:TextBox ID="Tb_City" runat="server" CssClass="Textbox" 
                                ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="REV_City" runat="server" ErrorMessage="! - Please enter valid city" Text="!"
                         ValidationGroup="BuyHome" ControlToValidate="Tb_City" ValidationExpression="^[aA-zZ]*$" Font-Size="Medium"></asp:RegularExpressionValidator>

                        </td>
                        <td style="width:145px;">
                            <asp:Label ID="Label4" runat="server" Text="State" CssClass="Lbl" 
                                Visible="False"></asp:Label>
                        </td>
                        <td style="width:195px;">
                            <asp:DropDownList ID="Dp_State" runat="server" CssClass="Textbox" Width="185px" 
                                DataSourceID="DS_State1" DataTextField="State" DataValueField="State" 
                                Visible="False">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                            <asp:Label ID="Label7" runat="server" Text="Price" CssClass="Lbl" 
                                ForeColor="#DA3F67" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width:202px;">
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="Tb_MinPrc" ErrorMessage="# Please Enter Number" 
                                ValidationExpression="^[0-9]*$" ValidationGroup="BuyHome"></asp:RegularExpressionValidator>--%>
                        </td>
                        <td style="width:145px;">
                        </td>
                        <td style="width:195px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                            <asp:Label ID="Label2" runat="server" Text="Minimum" CssClass="Lbl"></asp:Label>
                        </td>
                        <td style="width:202px;">
                            <div style="float:left; width: 170px;">
                            <asp:TextBox ID="Tb_MinPrc" runat="server" CssClass="Textbox" ></asp:TextBox>
                            </div>
                               <div style="float:right">
                                    <asp:RequiredFieldValidator ID="RFV_MinPrc" runat="server" 
                                    ErrorMessage="* - Please enter minimum price" InitialValue="" Text="*" ControlToValidate="Tb_MinPrc" Font-Bold="True" 
                                    Font-Size="Medium" ValidationGroup="BuyHome" ></asp:RequiredFieldValidator>
       
                                    <asp:RegularExpressionValidator ID="REV_MinPrc" runat="server" 
                                    ControlToValidate="Tb_MinPrc" ErrorMessage="# - Minimum price should be in number format" Text="#" ValidationExpression="^[0-9]*$" 
                                    ValidationGroup="BuyHome" Font-Size="Medium" ></asp:RegularExpressionValidator>
                                </div> 
                        </td>
                        <td style="width:145px;">
                            <asp:Label ID="Label5" runat="server" Text="Maximum" CssClass="Lbl"></asp:Label>
                        </td>
                        <td style="width:195px;">
                            <div style="width:170px; float:left">
                            <asp:TextBox ID="Tb_MaxPrc" runat="server" CssClass="Textbox" Width="165px"></asp:TextBox>
                            </div>
                            <div style="float:right">
                                <asp:RequiredFieldValidator ID="RFV_MaxPrc" runat="server" ErrorMessage="* - Please enter maximum price" Text="*" 
                                    InitialValue=""  ControlToValidate="Tb_MaxPrc" 
                                    ValidationGroup="BuyHome" Font-Size="Medium"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_MaxPrc" runat="server" 
                                ErrorMessage="# - Maximum price should be in number format" Text="#"
                                    ControlToValidate="Tb_MaxPrc" ValidationExpression="^[0-9]*$" 
                                    ValidationGroup="BuyHome" Font-Size="Medium"></asp:RegularExpressionValidator>   
                            </div>    
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px;">
                            <asp:Label ID="Label8" runat="server" Text="Area" CssClass="Lbl" 
                                ForeColor="#DA3F67" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width:202px;">
                        </td>
                        <td style="width:145px;">
                        </td>
                        <td style="width:195px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:145px; height: 26px;">
                            <asp:Label ID="Label3" runat="server" Text="Minimum" CssClass="Lbl"></asp:Label>
                        </td>
                        <td style="width:202px; height: 26px;">
                            <asp:TextBox ID="Tb_MinArea" runat="server" CssClass="AreaTb"></asp:TextBox>
                            <asp:TextBox ID="Tb_MinUnitArea" runat="server" CssClass="AreaTbUnit" 
                                BackColor="#CCFFFF" Enabled="False" Font-Bold="True">SqFt</asp:TextBox>
                            <asp:RegularExpressionValidator ID="REV_MinArea" runat="server"
                             ErrorMessage="# - Minimum area value should be in number format" Text="#" Font-Size="Medium"
                              ValidationGroup="BuyHome" ControlToValidate="Tb_MinArea" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>   
                        </td>
                        <td style="width:145px; height: 26px;">
                            <asp:Label ID="Label6" runat="server" Text="Maximum" CssClass="Lbl"></asp:Label>
                        </td>
                        <td style="width:195px; height: 26px;">
                            <asp:TextBox ID="Tb_MaxArea" runat="server" CssClass="AreaTb"></asp:TextBox>
                         
                            <asp:TextBox ID="Tb_MaxUnitArea" runat="server" CssClass="AreaTbUnit" 
                                    BackColor="#CCFFFF" Enabled="False" Font-Bold="True" >SqFt</asp:TextBox>
                            
                            <asp:RegularExpressionValidator ID="REV_MaxArea" runat="server"
                             ErrorMessage="# - Maximum area value should be in number format" Text="#" Font-Size="Medium"
                              ValidationGroup="BuyHome" ControlToValidate="Tb_MaxArea" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>   
                        </td>
                    </tr>
                    <tr style="height:50px">
                        <td colspan="4">
                            <div style="height:40px; width:180px; margin:10px auto;">
                                
                                <asp:Button ID="Btn_FindBuyHm" runat="server" Text="Find" Height="40px" 
                                    Width="180px" Font-Bold="True" Font-Size="20px" ForeColor="#DA3F67" 
                                    onclick="Btn_FindBuyHm_Click" ValidationGroup="BuyHome" />
                                
                            </div>
                            <div style="height:auto;">
                                <asp:ValidationSummary ID="VS1" 
                                   DisplayMode="BulletList"   EnableClientScript="true" 
                                   runat="server" 
                                   ValidationGroup="BuyHome" ShowMessageBox="true" ShowSummary="false" Font-Size="12px" />
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
            <asp:Panel runat="server" ID="Pnl_SearchHm" ScrollBars="Both">
                <asp:GridView ID="GV_FindHmResult" runat="server" 
                        BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                        ForeColor="#333333"  
                        Width="660px"  
                        RowStyle-HorizontalAlign="Center" CellSpacing="1" DataKeyNames="Home_id" 
                        ToolTip="Click on Go Detail to see details" 
                        AutoGenerateColumns="false" 
                        onselectedindexchanged="GV_FindHmResult_SelectedIndexChanged" EmptyDataText="No Data Available For Current Search Criteria - Try new selection"
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
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                            Height="35px" Font-Size="Small" />
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


