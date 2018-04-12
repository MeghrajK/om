<%@ Page Language="C#" MasterPageFile="~/AdminMasterPg.master" AutoEventWireup="true" CodeFile="EditLand.aspx.cs" Inherits="EditLand" Title="Untitled Page" %>

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
<div class="Edit_Outer">
        <div style="height:5px;"></div>
        <div class="Edit_Contents">
            <fieldset style="width:680px; padding:0px; height:auto;">
                <legend style="font-size:small; color:#DA3F67;">Search Land</legend>
                <div style="height:5px;"></div>
                <div style="width:665px; margin-left:5px; height:auto;">
                    <table style="width: 100%; height:80px;">
                        <tr>
                            <td style="width: 119px">
                                <asp:Label ID="Label1" runat="server" Text="Land ID" CssClass="LblGeneral"></asp:Label>
                            </td>
                           
                            <td>
                                <asp:TextBox ID="Tb_Land_Id" runat="server" CssClass="Textbox"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Land Name" CssClass="LblGeneral"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_LandNm" runat="server" CssClass="Textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <div style="width:120px; height:35px; margin:5px auto;">
                                    <asp:Button ID="Btn_LandSearch" runat="server" Text="Search" Width="120px" 
                                        Height="35px" CssClass="Btn_General" onclick="Btn_LandSearch_Click"  />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="height:10px;"></div>
            </fieldset>
        </div>
        <div style="height:10px;"></div>
        <div class="Edit_Contents">
            <fieldset style="width:680px; padding:0px; height:auto;">
                <legend style="font-size:small; color:#DA3F67;">Edit Land Details</legend>
                <div style="height:5px;"></div>
                <div style="width:665px; margin-left:5px; height:auto;">
                    <asp:GridView ID="GV_LndSearchResult" runat="server"
                    BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                    ForeColor="#333333" 
                    Width="670px" 
                    RowStyle-HorizontalAlign="Center" CellSpacing="1" 
                    ToolTip="Click on edit to edit details" 
                    DataKeyNames="Land_id" 
                    AutoGenerateColumns="false" 
                        onselectedindexchanged="GV_LndSearchResult_SelectedIndexChanged" >
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
                                       <asp:Button ID="BtnEditLand" runat="server" CommandName="select" 
                                                CssClass="GoDetails" Text="Edit" 
                                                ToolTip="Click to edit land details" />
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
                </div>
                <div style="height:10px;"></div>
            </fieldset>
        </div>
        <div style="height:15px;"></div>
</div>           
 
</asp:Content>


