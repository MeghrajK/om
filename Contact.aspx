<%@Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Untitled Page" %>

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
    <div class="Reg_Outer">
        <div style="height:10px"></div>
            <div class="Row">
                <div style="height:10px;"></div>
                <h1>REGISTER</h1>   
            </div>
        <div style="height:10px"></div>
        <div style="height:auto; width:680px; margin:2px 10px auto 10px;">
            <fieldset style="width:680px; height:95px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Name</legend>
                <div style="height:10px;">
                    <asp:SqlDataSource ID="Title1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT [Title] FROM [Title]"></asp:SqlDataSource>
                </div>
                <div style="height:60px;">
                    <table style="width: 100%; height:100%;">
                        <tr style="height:25px;">
                            <td style="width: 99px">
                                <asp:Label ID="Label1" runat="server" Text="Title" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="First Name" CssClass="Lbl1"></asp:Label>
                            &nbsp;
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RFV_Fname" runat="server" 
                                        ErrorMessage="* - Required first name" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Fname" ValidationGroup="Contact_Valid"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    <asp:RegularExpressionValidator ID="REV_Fname" runat="server"
                                     ErrorMessage="# - Enter valid first name" Text="#" ControlToValidate="Tb_Fname" 
                                     Font-Size="Medium" ValidationGroup="Contact_Valid" ValidationExpression="[aA-zZ]*$"> 
                                    </asp:RegularExpressionValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Middle Name" CssClass="Lbl1"></asp:Label>
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RFV_Mname" runat="server" 
                                    ControlToValidate="Tb_Mname" ErrorMessage="* - Required middle name" 
                                    Font-Size="Medium" InitialValue="" Text="*" ValidationGroup="Contact_Valid"></asp:RequiredFieldValidator>
                                &nbsp;
                                <asp:RegularExpressionValidator ID="REV_Mname" runat="server" 
                                    ControlToValidate="Tb_Mname" ErrorMessage="# - Enter valid middle name" 
                                    Font-Size="Medium" Text="#" ValidationExpression="[aA-zZ]*$"  
                                    ValidationGroup="Contact_Valid">
                                </asp:RegularExpressionValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Last Name" CssClass="Lbl1"></asp:Label>
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RFV_Lname" runat="server" 
                                        ErrorMessage="* - Required last name" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Lname" ValidationGroup="Contact_Valid"></asp:RequiredFieldValidator>
                                    &nbsp;
                                    <asp:RegularExpressionValidator ID="REV_Lname" runat="server"
                                     ErrorMessage="# - Enter valid last name" Text="#" ControlToValidate="Tb_Lname" 
                                     Font-Size="Medium" ValidationGroup="Contact_Valid" ValidationExpression="[aA-zZ]*$">
                                    </asp:RegularExpressionValidator> 
                            </td>
                        </tr>
                        <tr style="height:25px;">
                            <td style="width: 99px">
                                <asp:DropDownList ID="Dp_Title" runat="server" Width="93px" 
                                    DataSourceID="Title1" DataTextField="Title" DataValueField="Title">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Fname" runat="server" Width="180px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Mname" runat="server" Width="180px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Lname" runat="server" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </fieldset>
            <div style="height:5px;"></div>
            <fieldset style="width:680px; height:120px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67">Address</legend>
                <div style="height:10px;">
                    <asp:SqlDataSource ID="DS_City" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT [City] FROM [City]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DS_State" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT [State] FROM [State]"></asp:SqlDataSource>
                </div>
                <div style=" height:85px;">
                   
                    <table style="width: 100%; height: 100%">
                        <tr>
                            <td rowspan="3" style="padding:5px; width: 45px;">
                                <asp:TextBox ID="Tb_Addr" runat="server" Width="300px" Height="70px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td style="width: 80px; padding-left:5px;">
                                <asp:Label ID="Label5" runat="server" Text="City" CssClass="Lbl1"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:DropDownList ID="Dp_City" runat="server" Width="200px" 
                                    DataSourceID="DS_City" DataTextField="City" DataValueField="City">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 80px; padding-left:5px;">
                                <asp:Label ID="Label6" runat="server" Text="State" Width="50px" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Dp_State" runat="server" Width="200px" 
                                    DataSourceID="DS_State" DataTextField="State" DataValueField="State">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 80px; padding-left:5px;">
                                <asp:Label ID="Label7" runat="server" Text="Pincode" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Pincode" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                   
                </div>
            </fieldset>
            <div style="height:5px;"></div>
            <fieldset style="width:680px; height:90px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Contact Information</legend>
                <div style="height:10px;"></div>
                <div style="height:50px;">
                    
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 120px; padding-left:5px;">
                                <asp:Label ID="Label8" runat="server" Text="Moblile Number" CssClass="Lbl1"></asp:Label>
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RFV_Mobile" runat="server" 
                                    ControlToValidate="Tb_Mobno" ErrorMessage="*" Font-Bold="True" 
                                    Font-Size="Medium"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width:180px; ">
                                <div style="width:155px; float:left;">
                                    <asp:TextBox ID="Tb_Mobno" runat="server" Width="155px"></asp:TextBox>
                                </div>
                                <div style="float:right">
                                    <asp:RequiredFieldValidator ID="RFV_Mobno" runat="server" 
                                        ErrorMessage="* - Required mobile number" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Mobno" ValidationGroup="Contact_Valid"></asp:RequiredFieldValidator>
                                        
                                    <asp:RegularExpressionValidator ID="REV_Mobno" runat="server"
                                     ErrorMessage="# - Enter valid mobile number" Text="#" ControlToValidate="Tb_Mobno" 
                                     Font-Size="Medium" ValidationGroup="Contact_Valid" ValidationExpression="[0-9]*$">
                                    </asp:RegularExpressionValidator> 
                                </div>    
                            </td>
                            <td style="width: 140px; padding-left:5px;">
                                <asp:Label ID="Label10" runat="server" Text="Phone Residential" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Phoneno" runat="server" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 120px; padding-left:5px;">
                                <asp:Label ID="Label9" runat="server" Text="Email id" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="Tb_Email" runat="server" Width="280px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    
                </div>
            </fieldset>
            <div style="height:10px;"></div>
            <div style="height:70px;">
                <div style="width:120px; margin:15px auto;">
                    <asp:Button ID="Btn_Save" runat="server" Text="Save" CssClass="Btn_General" 
                        Width="120px" Height="35px" onclick="Btn_Save_Click" ValidationGroup="Contact_Valid" />
                </div>
            </div>
            <div>
                <asp:ValidationSummary ID="VS_Contact" DisplayMode="BulletList" ValidationGroup="Contact_Valid" Font-Size="12px" runat="server" ShowSummary="false" ShowMessageBox="true" />
            </div> 
            <div style="height:10px;"></div>
        </div>
    </div>    
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder3">

</asp:Content>


