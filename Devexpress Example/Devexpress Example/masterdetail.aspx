<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="masterdetail.aspx.vb" Inherits="Devexpress_Example.masterdetail" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="FIRMA_ID">
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="FIRMA_TICARI_ADI" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="WEB_SAYFASI" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="VERGI_DAIRESI" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="VERGI_NO" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FIRMA_ID" VisibleIndex="8" ReadOnly="True" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FIRMA_ENTEGRE_KODU" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
            </Columns>
            <Templates>
                <DetailRow>
                      <dx:ASPxGridView  ID="detailGrid" runat="server"  DataSourceID="SqlDataSource2" KeyFieldName="KISI_ID" OnBeforePerformDataSelect="detailGrid_DataSelect" OnCustomUnboundColumnData="detailGrid_CustomUnboundColumnData"></dx:ASPxGridView>

                </DetailRow>
            </Templates>
            <Settings ShowFilterRow="True" />
            <SettingsDetail ShowDetailRow="true" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ARGESETCRMConnectionString %>" SelectCommand="SELECT [KISI_ID], [AD], [SOYAD], [CINSIYET], [E_MAIL], [TELEFON_MOBIL] FROM [ARG_CRM_KISI_FIRMA] WHERE ([FIRMA_ID] = @FIRMA_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="FIRMA_ID" SessionField="FIRMA_ID" Type="String" DefaultValue="1" />
        </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARGESETCRMConnectionString %>" SelectCommand="SELECT * FROM [ARG_CRM_FIRMA_GENEL]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
