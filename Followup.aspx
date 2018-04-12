<%@ Page Language="C#" MasterPageFile="~/AdminMasterPg.master" AutoEventWireup="true" CodeFile="Followup.aspx.cs" Inherits="Followup" Title="Untitled Page" %>

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
     <div class="Followup_Outer">
        <div style="height:5px;"></div>
        <div style="width:680px; margin-left:10px; height:auto;" >
            <fieldset style="height:auto; width:680px; padding:0px;">
                <legend style="font-size:medium; color:#DA3F67;">Take Followup</legend>
                <div style="height:5px;"></div>
                <div style="height: auto; width:670px; margin-left:5px;">
                    <div style="height:35px;" class="Marquee">
                        <div style="height:25px; margin-top:5px;" >
                            <marquee style="height:25px; font-size:medium; color:#DA3F67;" scrolldelay="200">
                                <div style="height:8px;"></div>
                                <asp:Label ID="Lbl_Marquee" runat="server" CssClass="Marquee_Lbl"></asp:Label></marquee>
                        </div>
                    </div>
                    <div style="height:5px;"></div>
                    <div style="width:665px; height:auto;">
                        <fieldset style="padding:0px; width:665px; height:auto;">
                            <legend style="font-size:small; color:#DA3F67;">Details</legend>
                            <div style="height:5px;"></div>
                            <div style="width:650px; margin-left:5px; height:auto;">
                                
                                <table style="width: 100%; height:100%;">
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label2" runat="server" Text="Name" CssClass="Lbl3" Width="70px"></asp:Label>
                                            <asp:TextBox ID="Tb_EnqName" runat="server" CssClass="Tb_Followup" Width="395px" 
                                                Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 115px">
                                            <asp:Label ID="Label3" runat="server" Text="Address" CssClass="Lbl3"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="City" CssClass="Lbl3"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Tb_City" runat="server" CssClass="Tb_Followup" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3" style="width: 260px">
                                            <asp:TextBox ID="Tb_Address" runat="server" TextMode="MultiLine" Width="250px" 
                                                Height="80px" CssClass="TbFup_Addr" Enabled="False" ></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Mobile No." CssClass="Lbl3"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Tb_Mobile" runat="server" CssClass="Tb_Followup" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="Phone No." CssClass="Lbl3"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Tb_PhoneNo" runat="server" CssClass="Tb_Followup" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="E-mail" CssClass="Lbl3"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Tb_Email" runat="server" Width="250px" Enabled="False" CssClass="Tb_Followup"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                
                            </div>
                            <div style="height:10px;"></div>
                            <div style="width:650px; margin-left:5px; height:auto;">
                                <div style="float:left; width:300px; height:auto;">
                                    
                                    <table style="width: 100%; height:200px;">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="This enqury for" 
                                                    CssClass="Lbl3" Width="178px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="Rb_Home" runat="server" CssClass="Rbtn" Text="Home" 
                                                    Enabled="False"  />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="Rb_Land" runat="server" CssClass="Rbtn" Text="Land" 
                                                    Enabled="False" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="Rb_Sell" runat="server" CssClass="Rbtn" Text="Sell" 
                                                    Enabled="False" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="Rb_General" runat="server" CssClass="Rbtn" Text="General" 
                                                    Enabled="False" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="Against Special Offer" 
                                                    CssClass="Lbl3" Width="138px"></asp:Label>
                                                <asp:RadioButton ID="Rb_IsSpecialYes" runat="server" CssClass="Rbtn" Text="Yes" 
                                                    Enabled="False" />
                                            &nbsp; &nbsp; 
                                                <asp:RadioButton ID="Rb_IsSpecialNo" runat="server" CssClass="Rbtn" Text="No" 
                                                    Enabled="False" />
                                            </td>
                                        </tr>
                                    </table>
                                    
                                </div>
                                <div style="height:30px;"></div>
                                 <div style="float:right; width:345px; height:auto; border:1px solid #051F29;">
                                     <asp:DetailsView ID="DV_Details" runat="server" Height="97px" Width="343px" 
                                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                      CellPadding="3" GridLines="Horizontal" >
                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                      <RowStyle BackColor="#E7E7FF" ForeColor="#37062D" Height="35px" Font-Bold="true" Font-Size="Small" />
                                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                      <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                      <AlternatingRowStyle BackColor="#F7F7F7" />
                                      
                                    </asp:DetailsView>
                                    <div style="height:5px;"></div>
                                </div>   
                                
                            </div>
                        </fieldset>
                        <div style="height:5px;"></div>
                    </div>
                </div>
                <div style="width:665px; margin-left:5px;">
                    <fieldset style="width:665px; padding:0px;">
                        <legend style="font-size:small; color:#DA3F67;">Followup Details</legend>
                        <div style="height:5px;"></div>
                        <div style="width:650px; margin-left:5px; height:auto;">
                            
                            <table style="width: 100%; height:150px;">
                                <tr>
                                    <td style="width: 130px">
                                        <asp:Label ID="Label9" runat="server" Text="Followup Date" CssClass="Lbl3" 
                                            Width="93px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Tb_FollDate" runat="server" CssClass="Tb_Followup" 
                                            Width="165px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td style="width:158px;">
                                        <asp:Label ID="Label10" runat="server" Text="Enquiry Date" CssClass="Lbl3"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:TextBox ID="Tb_EnqDate" runat="server" CssClass="Tb_Followup" 
                                            Width="165px" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 129px">
                                        <asp:Label ID="Label11" runat="server" Text="Remark" CssClass="Lbl3"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td style="width: 158px">
                                        <asp:Label ID="Label12" runat="server" Text="Followup Required" CssClass="Lbl3" 
                                            Width="110px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="Rb_FollRqrd_Ys" runat="server" Text="Yes" CssClass="Rbtn" 
                                            GroupName="FollYsNo" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="Rb_FollRqrd_No" runat="server" Text="No" CssClass="Rbtn" 
                                            GroupName="FollYsNo" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" rowspan="3">
                                        <asp:TextBox ID="Tb_Remark" runat="server" Height="68px" Width="303px" 
                                            TextMode="MultiLine" ></asp:TextBox>
                                    </td>
                                    <td style="height: 31px; width: 158px;">
                                        <asp:Label ID="Label13" runat="server" Text="Next Followup Date" 
                                            CssClass="Lbl3" Width="139px"></asp:Label>
                                    </td>
                                    <td colspan="2" style="height: 31px">
                                         <input type="text" id="Tb_NxtFollDate" name="Tb_NxtFollDt" style="width:165px; padding-left:5px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 27px; width: 158px;">
                                        </td>
                                    <td colspan="2" style="height: 27px">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 158px">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            
                        </div>
                        <div style="height:10px;"></div>
                       <%-- <div style="width:650px; margin-left:5px; height:50px;">
                           
                        </div>--%>
                       
                     
                    </fieldset>
                   
                     <div style="height:70px; width:650px; margin-left:5px;">
                            <div style="width:120px; margin:15px auto;">
                                <asp:Button ID="Btn_Save" runat="server" Text="Save" CssClass="Btn_General" 
                                    Width="120px" Height="35px" onclick="Btn_Save_Click"/>
                            </div>
                     </div>
                </div>
            </fieldset>
            <div style="height:10px;"></div>
            <div style="height:auto;">
                <asp:Panel runat="server" ScrollBars="Both">
                    <asp:GridView ID="GV_FollRes" runat="server"
                     BorderColor="#1C5E55" BorderWidth="1px" CellPadding="0" 
                     ForeColor="#333333"  
                     Width="660px"  
                     RowStyle-HorizontalAlign="Center" CellSpacing="1" >
                       
                        
                        <RowStyle BackColor="#E3EAEB" Height="35px" />
                        
                        
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="35px" Font-Size="Small" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </asp:Panel>
            </div>
            <div style="height:10px;"></div>
        </div>    
     </div>
     
</asp:Content>


