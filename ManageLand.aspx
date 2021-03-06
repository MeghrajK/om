﻿<%@ Page Language="C#" MasterPageFile="~/AdminMasterPg.master" AutoEventWireup="true" CodeFile="ManageLand.aspx.cs" Inherits="ManageLand" Title="Untitled Page" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <div class="MasterOuter">
        <div style="height:10px;"></div>
        <div class="Admin_Header">
            <fieldset style="height:60px; width:680px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Welcome</legend>
                <div style="height:5px;"></div>
                <div style="height:30px;">
                    <div style="height:30px; width:376px; float:right;">
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 250px">
                                    &nbsp;</td>
                                <td>
                                    <asp:LinkButton ID="LogOut" runat="server" onclick="LogOut_Click" 
                                        CssClass="LogoutBtn" Width="110px">Logout</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </fieldset>
        </div>
     </div>
    <div style="height:5px;"></div>
    
     <div class="Outer">
        <div style="height:5px;"></div>
        <div style="width:680px; margin-left:10px; height:560px;" >
            <fieldset style="height:525px; width:680px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Add Offer Land</legend>
                <div style="height:5px;"></div>
                <div style="height:530px;">
                    <div style="width:665px; margin-left:5px; height:530px;">
                        <div style="height:5px;"></div>
                        <fieldset style="width:665px; height:100px; padding:0px;">
                            <legend style="font-size:small; color:#DA3F67;">General Info</legend>
                            <div style="height:5px;">
                                <asp:SqlDataSource ID="DS_Unit" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                    SelectCommand="SELECT [Unit] FROM [Unit]"></asp:SqlDataSource>
                            </div>
                            <div style="height:80px;">
                                <table style="width: 100%; height:100%;">
                                    <tr>
                                        <td style="width: 70px ; padding-left:5px;">
                                            <asp:Label ID="Label1" runat="server" Text="Name " CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td colspan="5">
                                            <asp:TextBox ID="Tb_Name" runat="server" Width="230px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 70px;  padding-left:5px;">
                                            <asp:Label ID="Label2" runat="server" Text="Area" CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td style="width: 105px">
                                            <asp:TextBox ID="Tb_Area" runat="server" Width="100px"></asp:TextBox>
                                        </td>
                                        <td style="width: 45px">
                                            <asp:Label ID="Label9" runat="server" Text="Unit" CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td style="width: 70px; padding-left:5px;">
                                            <asp:DropDownList ID="DP_Unit" runat="server" Width="70px" 
                                                DataSourceID="DS_Unit" DataTextField="Unit" DataValueField="Unit">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 80px;  padding-left:5px;">
                                            <asp:Label ID="Label3" runat="server" Text="Price" CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Tb_Price" runat="server" Width="100px" 
                                                style="margin-left: 0px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </fieldset>
                        <div style="height:5px;"></div>
                        <fieldset style="width:665px; height:115px; padding:0px;">
                            <legend style="font-size:small; color:#DA3F67;">Address</legend>
                            <div style="height:5px;">
                                <asp:SqlDataSource ID="DS_City" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>"
                                 SelectCommand="SELECT [City] FROM [City]">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="DS_State1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                    SelectCommand="SELECT [State] FROM [State]"></asp:SqlDataSource>
                                
                            </div>
                            <div style=" height:90px;">
                   
                                <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td rowspan="3" style="padding:5px; width: 300px;">
                                            <asp:TextBox ID="Tb_Addr" runat="server" Width="300px" Height="70px" 
                                                TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td style="width: 80px; padding-left:5px;">
                                            <asp:Label ID="Label5" runat="server" Text="City" CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="Dp_City" runat="server" Width="200px" 
                                                DataSourceID="DS_City"   DataTextField="City" DataValueField="City">
                                                
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 80px; padding-left:5px;">
                                            <asp:Label ID="Label6" runat="server" Text="State" Width="50px" CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="Dp_State" runat="server" Width="200px" 
                                                DataSourceID="DS_State1" DataTextField="State" DataValueField="State">
                                                
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
                        <div style="height:5px;"> </div>
                        <fieldset style="width:665px; height:115px; padding:0px;">
                            <legend style="font-size:small; color:#DA3F67;">Other Info</legend>
                            <div style="height:5px;">
                            </div>
                            <div style="height:90px;">
                            
                                <table style="width: 100%; height:100%">
                                    <tr>
                                        <td style="width: 158px; padding-left:5px;">
                                            <asp:Label ID="Label8" runat="server" Text="Description" CssClass="Lbl1"></asp:Label>
                                        </td>
                                        <td style="width: 80px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" style="padding:5px; width: 300px;">
                                            <asp:TextBox ID="Tb_Descr" runat="server" Width="300px" Height="45px" 
                                                TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td style="width: 80px; padding-left:5px;">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 80px; padding-left:5px;">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            
                            </div>
                        </fieldset> 
                        <div style="height:75px;">
                                <div style="height:5px;"> </div>
                                    <fieldset style="width:665px; height:70px; padding:0px;">
                                        <legend style="font-size:small; color:#DA3F67;">Upload Image</legend>
                                        <div style="height:15px;"></div>
                                        <div style="height: 45px; padding-left:15px;">
                                            
                                            <asp:FileUpload ID="FileUpload1" runat="server" Width="645px"/>
                                            
                                        </div>
                                        
                                    </fieldset>
                         </div>  
                        <div style="height:10px;"></div>
                        <div style="height:70px;">
                            <div style="width:120px; margin:15px auto;">
                                <asp:Button ID="Btn_Save" runat="server" Text="Save" CssClass="Btn_General" 
                                    Width="120px" Height="35px" onclick="Btn_Save_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>    
        </div>
    </div>
</asp:Content>


