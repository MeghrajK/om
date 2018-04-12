<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ContactGeneral.aspx.cs" Inherits="ContactGeneral" Title="Untitled Page" %>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <div id="navigation">
		<div id="navigation_inner">
			
			<ul>
				<li><a href="Home.aspx">Home</a></li>
				<li><a href="Buy.aspx">Buy Home</a></li>
				<li><a href="BuyLand.aspx">Buy Land</a></li>
				<li><a href="Sell.aspx">Selling</a></li>
				<li class="current_page_item"><a href="ContactGeneral.aspx">Contact Us</a></li>
				<li><a href="Login.aspx">Admin Login</a></li>
			</ul>

		</div>
	</div>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
     <div class="Reg_Outer">
        <div style="height:10px"></div>
            <div class="Row">
                <div style="height:10px;"></div>
                <h1>Contact Us</h1>   
            </div>
        <div style="height:10px"></div>
        <div style="height:auto; width:680px; margin:2px 10px auto 10px;">
            <fieldset style="width:680px; height:95px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Name</legend>
                <div style="height:10px;">
                    <asp:SqlDataSource ID="DS_Title_Sell" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT [Title] FROM [Title]"></asp:SqlDataSource>
                </div>
                <div style="height:60px;">
                     <table style="width: 100%; height:100%;">
                            <tr style="height:25px;">
                                <td style="width: 99px">
                                    <asp:Label ID="LblTitl" runat="server" Text="Title" CssClass="Lbl1"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="LblFname" runat="server" Text="First Name" CssClass="Lbl1"></asp:Label>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RFV_Fname" runat="server" 
                                        ErrorMessage="* - Required first name" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Fname1" ValidationGroup="ContactGen_Valid"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    <asp:RegularExpressionValidator ID="REV_Fname" runat="server"
                                     ErrorMessage="# - Enter valid first name" Text="#" ControlToValidate="Tb_Fname1" 
                                     Font-Size="Medium" ValidationGroup="ContactGen_Valid" ValidationExpression="[aA-zZ]*$"> 
                                    </asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    <asp:Label ID="LblMname" runat="server" Text="Middle Name" CssClass="Lbl1"></asp:Label>
                                    &nbsp;
                                     <asp:RequiredFieldValidator ID="RFV_Mname" runat="server" 
                                        ErrorMessage="* - Required middle name" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Mname1" ValidationGroup="ContactGen_Valid"></asp:RequiredFieldValidator>
                                    &nbsp;
                                       <asp:RegularExpressionValidator ID="REV_Mname" runat="server"
                                     ErrorMessage="# - Enter valid middle name" Text="#" ControlToValidate="Tb_Mname1" 
                                     Font-Size="Medium" ValidationGroup="ContactGen_Valid" ValidationExpression="[aA-zZ]*$">
                                    </asp:RegularExpressionValidator> 
                                </td>
                                <td>
                                    <asp:Label ID="LblLname" runat="server" Text="Last Name" CssClass="Lbl1"></asp:Label>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RFV_Lname" runat="server" 
                                        ErrorMessage="* - Required last name" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Lname1" ValidationGroup="ContactGen_Valid"></asp:RequiredFieldValidator>
                                    &nbsp;
                                    <asp:RegularExpressionValidator ID="REV_Lname" runat="server"
                                     ErrorMessage="# - Enter valid last name" Text="#" ControlToValidate="Tb_Lname1" 
                                     Font-Size="Medium" ValidationGroup="ContactGen_Valid" ValidationExpression="[aA-zZ]*$">
                                    </asp:RegularExpressionValidator> 
                                </td>
                            </tr>
                            <tr style="height:25px;">
                                <td style="width: 99px">
                                    <asp:DropDownList ID="Dp_Title1" runat="server" Width="93px" 
                                        DataSourceID="DS_Title_Sell" DataTextField="Title" DataValueField="Title"  >
                                        
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="Tb_Fname1" runat="server" Width="180px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="Tb_Mname1" runat="server" Width="180px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="Tb_Lname1" runat="server" Width="180px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                  </div>      
            </fieldset>
            <div style="height:5px;"></div>
            <fieldset style="width:680px; height:120px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67">Address</legend>
                <div style="height:10px;">
                    <asp:SqlDataSource ID="DS_City1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT [City] FROM [City]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DS_State1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT [State] FROM [State]"></asp:SqlDataSource>
                </div>
                <div style=" height:85px;">
                   
                    <table style="width: 100%; height: 100%">
                        <tr>
                            <td rowspan="3" style="padding:5px; width: 45px;">
                                <asp:TextBox ID="Tb_Addr1" runat="server" Width="300px" Height="70px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td style="width: 80px; padding-left:5px;">
                                <asp:Label ID="Lbl_City" runat="server" Text="City" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Dp_City1" runat="server" Width="200px" 
                                    DataSourceID="DS_City1" DataTextField="City" DataValueField="City" >
                                    
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 80px; padding-left:5px;">
                                <asp:Label ID="Lbl_State" runat="server" Text="State" Width="50px" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Dp_State1" runat="server" Width="200px" 
                                    DataSourceID="DS_State1" DataTextField="State" DataValueField="State" >
                                   
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 80px; padding-left:5px;">
                                <asp:Label ID="Lbl_Pin" runat="server" Text="Pincode" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Pincode1" runat="server" Width="200px"></asp:TextBox>
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
                                <asp:Label ID="Lbl_Mobile" runat="server" Text="Moblile Number" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td style="width:180px; ">
                                <div style="width:155px; float:left;">
                                    <asp:TextBox ID="Tb_Mobno1" runat="server" Width="155px"></asp:TextBox>
                                </div> 
                                <div style="float:right">
                                    <asp:RequiredFieldValidator ID="RFV_Mobno" runat="server" 
                                        ErrorMessage="* - Required mobile number" Text="*" InitialValue="" Font-Size="Medium"
                                        ControlToValidate="Tb_Mobno1" ValidationGroup="ContactGen_Valid"></asp:RequiredFieldValidator>
                                        
                                    <asp:RegularExpressionValidator ID="REV_Mobno" runat="server"
                                     ErrorMessage="# - Enter valid mobile number" Text="#" ControlToValidate="Tb_Mobno1" 
                                     Font-Size="Medium" ValidationGroup="ContactGen_Valid" ValidationExpression="[0-9]*$">
                                    </asp:RegularExpressionValidator>     
                                </div>   
                            </td>
                            <td style="width: 140px; padding-left:5px;">
                                <asp:Label ID="Lbl_Phone" runat="server" Text="Phone Residential" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_Phoneno1" runat="server" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 120px; padding-left:5px;">
                                <asp:Label ID="Lbl_email" runat="server" Text="Email id" CssClass="Lbl1"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="Tb_Email1" runat="server" Width="280px"></asp:TextBox>
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
                    <asp:Button ID="Btn_Save1" runat="server" Text="Save" CssClass="Btn_General" 
                        Width="120px" Height="35px" onclick="Btn_Save1_Click" ValidationGroup="ContactGen_Valid" />
                </div>
            </div>  
            <div>
                <asp:ValidationSummary ID="VS_ContactGen" DisplayMode="BulletList" ValidationGroup="ContactGen_Valid" Font-Size="12px" runat="server" ShowMessageBox="true" ShowSummary="false" />
            </div>  
            <div style="height:10px;"></div>       
        </div>
     </div>           
</asp:Content>


