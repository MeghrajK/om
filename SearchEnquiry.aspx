<%@ Page Language="C#" MasterPageFile="~/AdminMasterPg.master" AutoEventWireup="true" CodeFile="SearchEnquiry.aspx.cs" Inherits="SearchEnquiry" Title="Untitled Page" %>

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
     <div class="EnqSearch_Outer">
        <div style="height:5px;"></div>
        <div style="width:680px; margin-left:10px; height:260px;" >
            <fieldset style="height:255px; width:680px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Manage Enquiry</legend>
                <div style="height:5px;"></div>
                <div style="height: 220px; width:665px; margin-left:5px;">
                
                    <fieldset style="width:665px; height:135px; padding:0px;">
                        <legend style="font-size:small; color:#DA3F67;">Search By</legend>
                        <div style="height:5px;"></div>
                        <div style="height:125px;">
                            
                            <table style="width: 100%; height: 115px;">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label2" runat="server" Text="Enquiry ID" CssClass="Lbl2" 
                                            Width="85px"></asp:Label>
                                        <asp:TextBox ID="Tb_EnqId" runat="server" CssClass="SearchEnq_Tb"></asp:TextBox>
                                    </td>
                                    <td style="width: 150px">
                                        &nbsp;</td>
                                    <td style="width: 150px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 151px">
                                        <asp:Label ID="Label3" runat="server" Text="First Name" CssClass="Lbl2"></asp:Label>
                                    </td>
                                    <td style="width: 141px">
                                        <asp:Label ID="Label4" runat="server" Text="Middle Name" CssClass="Lbl2"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="Last Name" CssClass="Lbl2"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Mobile Number" CssClass="Lbl2"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 151px">
                                        <asp:TextBox ID="Tb_Fname" runat="server" CssClass="SearchEnq_Tb"></asp:TextBox>
                                    </td>
                                    <td style="width: 141px">
                                        <asp:TextBox ID="Tb_Mname" runat="server" CssClass="SearchEnq_Tb"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Tb_Lname" runat="server" CssClass="SearchEnq_Tb"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Tb_MobileNo" runat="server" CssClass="SearchEnq_Tb"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 151px">
                                        <asp:Label ID="Label7" runat="server" Text="Date From" CssClass="Lbl2" Width="85px"></asp:Label>
                                    </td>
                                    <td style="width: 141px">
                                        
                                        <input type="text" id="datepicker1" name="Tb_FromDate" style="margin-left:15px; width:135px;">
                                        
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Date To" CssClass="Lbl2" Width="85px"></asp:Label>
                                    </td>
                                    <td>
                                        <input type="text" id="datepicker2" name="Tb_ToDate" style="margin-left:15px; width:135px;">
                                    </td>
                                </tr>
                            </table>
                            
                        </div>
                    </fieldset>
                    <div style="height:7px;"></div>
                    <div style="height:60px;">
                        <div style="width:120px; margin:15px auto;">
                            <asp:Button ID="Btn_Find" runat="server" Text="Find" CssClass="Btn_General" 
                                Width="120px" Height="35px" onclick="Btn_Find_Click" />
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>        
     </div>  
     <div style="height:5px;"></div> 
     <div class="Result">
        <div class="Inner_Result">
            <div style="height:10px;"></div>
            <asp:Panel runat="server" ID="Pnl_EnqSearch" ScrollBars="Both">
                <asp:GridView ID="GV_SearchEnqRes" runat="server" 
                        BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                        ForeColor="#333333"  
                        Width="660px"  
                        RowStyle-HorizontalAlign="Center" CellSpacing="1" 
                        ToolTip="Click on Followp to take followup" 
                        AutoGenerateColumns="false" DataKeyNames="Enquiry_id" onselectedindexchanged="GV_SearchEnqRes_SelectedIndexChanged"
                        >
                        <RowStyle BackColor="#E3EAEB" Height="35px" />
                        
                        <Columns>
                            <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Left" ItemStyle-CssClass="Srch_Item">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <asp:TemplateField HeaderText="City" ItemStyle-HorizontalAlign="Left" ItemStyle-CssClass="Srch_Item">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("City")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile" ItemStyle-HorizontalAlign="Left" ItemStyle-CssClass="Srch_Item">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("Mobile") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px">
                                <ItemTemplate>
                                    <asp:Button ID="Btn_TkFollowup" runat="server" Text="Followup" CommandName="select" CssClass="GoDetails"  />
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
     </div>
     <div style="height:10px;"></div>



</asp:Content>


