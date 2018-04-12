<%@ Page Language="C#" MasterPageFile="~/AdminMasterPg.master" AutoEventWireup="true" CodeFile="EditHome.aspx.cs" Inherits="EditHome" Title="Untitled Page" %>

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
                <legend style="font-size:small; color:#DA3F67;">Search Home</legend>
                <div style="height:5px;"></div>
                <div style="width:665px; margin-left:5px; height:auto;">
                    <table style="width: 100%; height:80px;">
                        <tr>
                            <td style="width: 119px">
                                <asp:Label ID="Label1" runat="server" Text="Home ID" CssClass="LblGeneral"></asp:Label>
                            </td>
                           
                            <td>
                                <asp:TextBox ID="Tb_HomeId" runat="server" CssClass="Textbox"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Home Name" CssClass="LblGeneral"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Tb_HomeNm" runat="server" CssClass="Textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <div style="width:120px; height:35px; margin:5px auto;">
                                    <asp:Button ID="Btn_SearchHome" runat="server" Text="Search" Width="120px" 
                                        Height="35px" CssClass="Btn_General" onclick="Btn_SearchHome_Click" />
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
                <legend style="font-size:small; color:#DA3F67;">Edit Home Details</legend>
                <div style="height:5px;"></div>
                <div style="width:665px; margin-left:5px; height:auto;">
                    <asp:GridView ID="GV_HmSearchResult" runat="server"
                    BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                    ForeColor="#333333" 
                    Width="670px" 
                    RowStyle-HorizontalAlign="Center" CellSpacing="1" 
                    ToolTip="Click on edit to edit details" 
                    DataKeyNames="Home_id" 
                    AutoGenerateColumns="false" 
                        onselectedindexchanged="GV_HmSearchResult_SelectedIndexChanged" >
                    <RowStyle BackColor="#E3EAEB" Height="35px" />
                        <Columns>
                            <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Area" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("Area") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField  HeaderText="Edit" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px">
                                <ItemTemplate>
                                    <asp:Button ID="BtnEditHome" runat="server" CommandName="select" 
                                                CssClass="GoDetails" Text="Edit" 
                                                ToolTip="Click to edit home details" />
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


