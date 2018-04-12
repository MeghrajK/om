<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Description.aspx.cs" Inherits="Description" Title="Untitled Page" %>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
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
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <div class="Description_Outer">
        <div style="height:10px"></div>
         <div class="Row">
            <div style="height:10px;"></div>
            <h1>DETAILS</h1>   
        </div>
        <div style="height:10px"></div>
        <div class="Left_Desc">
            <div style="width:290px; margin:5px 5px auto 5px; height:275px; border:1px solid #CCCCCC; border-radius:5px">
                <div style="width:280px; height:265px; margin:5px 5px 5px 5px">
                    <%--<asp:Panel runat="server" ID="Pnl_Img" Width="280px" Height="265px">
                    </asp:Panel>--%>
                       <%-- <asp:GridView ID="GV_Img" runat="server" Width="280px" Height="265px" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                         <img  src='<%#Eval("Image_path")%>' alt="" width="280px" height="240px;" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>--%>
                        <asp:GridView ID="GridImg" runat="server" AutoGenerateColumns="false"  
                        EmptyDataText="No Image Found" CellPadding="2"
                        ForeColor="#333333" 

                        Height="265px" Width="280px"  >

                        <AlternatingRowStyle  BackColor="White" ForeColor="#284775"/>
                        <Columns>
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                    <img  src='<%#Eval("Image_path")%>' alt="" width="280px" height="240px;" />
                                 </ItemTemplate>


                            <%--<ItemStyle HorizontalAlign="Center"></ItemStyle>--%>


                            </asp:TemplateField>
                        </Columns>
                        </asp:GridView>
                    
                </div>
            </div>
            <div style="height:10px"></div>
            <div style="width:290px; margin:5px 5px auto 5px; height:200px; border:1px solid #CCCCCC; border-radius:5px">
                <div style="width:280px; height:190px; margin:5px 5px 5px 5px">
                </div>
            </div>
        </div>
        <div class="Right_Desc">
        <div style="width:385px; margin:5px 5px auto 5px; height:275px; border:1px solid #CCCCCC; border-radius:5px">
                <div style="width:375px; height:265px; margin:5px 5px 5px 5px">
                      <div class="Row2">
                        <div style="height:4px;"></div>
                        <h1>Description</h1>   
                      </div>
                      <div style="height:10px;"></div>
                      <div style="height:90px;">
                      
                          <asp:TextBox ID="Tb_Description" runat="server" Height="90px" TextMode="MultiLine" 
                              Width="369px" Enabled="false"></asp:TextBox>
                      </div>
                      <div style="height:10px;"></div>
                      <div class="Row2">
                        <div style="height:4px;"></div>
                        <h1>Address</h1>   
                      </div>
                      <div style="height:10px;"></div>
                      <div>
                            <asp:TextBox ID="Tb_Address" runat="server" Height="90px" TextMode="MultiLine" 
                              Width="369px" Enabled="false"></asp:TextBox>
                      </div>
                </div>
            </div>
            <div style="height:10px"></div>
            <div style="width:385px; margin:5px 5px auto 5px; height:auto; border:1px solid #CCCCCC; border-radius:5px">
                <div style="height:auto; margin:5px 5px 5px 5px">
                     <div class="Row2">
                        <div style="height:4px;"></div> 
                        <h1>Other Details</h1>   
                      </div>
                      <div style="height:10px;"></div>
                      <div>
                       
                          <asp:DetailsView ID="DV_DescPage" runat="server" 
                                Height="97px" Width="374px" 
                              BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                              CellPadding="3" GridLines="Horizontal" >
                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                              <RowStyle BackColor="#E7E7FF" ForeColor="#37062D" Height="35px" Font-Bold="true" Font-Size="Small" />
                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                              <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                              <AlternatingRowStyle BackColor="#F7F7F7" />
                          </asp:DetailsView>
                       
                      </div>
                      <div style="height:5px;"></div>
                      <div style="height:70px;">
                        <div style="width:120px; margin:15px auto;">
                            <asp:Button ID="Btn_ImInterested" runat="server" Text="Interested" 
                                CssClass="Btn_General" Width="120px" Height="40px" 
                                onclick="Btn_ImInterested_Click"/>
                        </div>                        
                      </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


