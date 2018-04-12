<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="navigation">
		<div id="navigation_inner">
			<ul>
				<li><a href="Home.aspx">Home</a></li>
				<li><a href="Buy.aspx">Buy Home</a></li>
				<li><a href="BuyLand.aspx">Buy Land</a></li>
				<li><a href="Sell.aspx">Selling</a></li>
				<li><a href="ContactGeneral.aspx">Contact Us</a></li>
				<li class="current_page_item"><a href="Login.aspx">Admin Login</a></li>
			</ul>
		</div>
	</div>

</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div id="Login_Outer">
        <div id="Login">
            <div style="height:20px;">
            </div>
            <%--<div class="Row1">
                <h1>Admin Login</h1>
            </div>--%>
           <%-- <div class="Row1">
                <h1>Admin Login</h1>
            </div>
            <div style="margin:15px 0 auto 0; height:35px;">
                <div style="width:100px; height:22px; margin:8px auto 5px 20px; float:left;">
                    <label style="font-size:17px;">User Name :</label>
                </div> 
                <div style="float:right; width:275px; margin:5px 0px 5px auto; height:25px;">
                    <asp:TextBox ID="TB_UserName" runat="server" Width="241px"></asp:TextBox>
                </div>
            </div>
            <div style="margin:10px 0 auto 0; height:35px;">
                <div style="width:100px; height:22px; margin:8px auto 5px 20px; float:left;">
                    <label style="font-size:17px;">Password :</label>
                </div>  
                  <div style="float:right; width:275px; margin:5px 0px 5px auto; height:25px;">
                      <asp:TextBox ID="TB_Psword" runat="server" Width="243px" TextMode="Password"></asp:TextBox>
                </div> 
            </div>
            <div style="width:150px; height:35px; margin:20px auto;">
                <asp:Button ID="Btn_Login" runat="server" Text="Login" Width=150px Height=35px CssClass="Button_bg" />
            </div>--%>
            <div style="width:380px; margin-left:10px;">
                <asp:Login ID="Login1" runat="server"  
                    BorderPadding="4"   
                    Font-Size="15px" ForeColor="#333333" TextLayout="TextOnTop" TitleText="Admin Login"
                    Height="215px" onauthenticate="Login1_Authenticate" Width="370px" 
                    style="margin-top: 0px" FailureText="User Name and Password do not match " OnLoginError="Login1_LoginError">
                    <TextBoxStyle  Height="20px" Width="250px" />
                    <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" ForeColor="#DA3F67" Height="35px" Width="100px" Font-Bold="true"/>
                    <InstructionTextStyle Font-Italic="True" Font-Size="Small" ForeColor="Black" />
                    <TitleTextStyle Font-Size="Large"
                        ForeColor="#DA3F67" Height="0px" Font-Bold="true" />
                        
        
                </asp:Login>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder3">

</asp:Content>


