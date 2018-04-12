<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DemoDocs.aspx.cs" Inherits="DemoDocs" Title="Untitled Page" %>

<asp:Content ID="Content3" ContentPlaceHolderID="CPH_New" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder4">
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
<asp:Content ID="Content5" runat="server"  contentplaceholderid="ContentPlaceHolder5">
    <div class="Reg_Outer">
        <div style="height:10px"></div>
            <div class="Row">
                <div style="height:10px;"></div>
                <h1>DOWNLOAD DEMO DOCUMENTS</h1>   
            </div>
        <div style="height:10px"></div>
        <div style="height:auto; width:680px; margin:2px 10px auto 10px;">
            <fieldset style="width:680px; height:auto; padding:0px;">
                <div style="height:auto; width:680px;">
                    
                    
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:Button ID="Btn_Home" runat="server" CssClass="Initial" Text="Home" 
                                    onclick="Btn_Home_Click" />
                                <asp:Button ID="Btn_Farm" runat="server" CssClass="Initial" Text="Farm" 
                                    onclick="Btn_Farm_Click" />
                                <asp:Button ID="Btn_Plot" runat="server" CssClass="Initial" Text="Plot" 
                                    onclick="Btn_Plot_Click" />
                                
                            </td>
                           
                        </tr>
                        <tr>
                            <td>
                                <asp:MultiView ID="MV_Docs" runat="server">
                                    <asp:View ID="V_Home" runat="server">
                                        <div>
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                                        </div>
                                    </asp:View>
                                    <asp:View ID="V_Farm" runat="server">
                                        <div>
                                            2
                                        </div>
                                    </asp:View>
                                    <asp:View ID="V_Plot" runat="server">
                                        <div>
                                            3
                                        </div>
                                    </asp:View>
                                </asp:MultiView>
                            </td>
                        </tr>
                    </table>
                    
                    
                </div>
            </fieldset>
        </div>
         <div style="height:10px"></div> 
   </div> 
             
</asp:Content>


