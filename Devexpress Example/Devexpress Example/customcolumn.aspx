<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="customcolumn.aspx.vb" Inherits="Devexpress_Example.customcolumn" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnCustomUnboundColumnData="grid_CustomUnboundColumnData" KeyFieldName="SATINALIM_SIPARIS_ID">
            <Columns>
                <dx:GridViewDataTextColumn Caption="SIPARIS ID" FieldName="SATINALIM_SIPARIS_ID" ReadOnly="True" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="FIRMA ADI" FieldName="FIRMA_TICARI_ADI" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ONAYLAYAN KISI" FieldName="GERCEK_KULLANICI_ADI" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="MUSTERI ADI" FieldName="ADSOYAD" ReadOnly="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="SİPARİŞ TARİHİ" FieldName="SIPARIS_TARIHI" VisibleIndex="3">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="TOPLAM TUTAR" FieldName="TOPLAM_TUTAR" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="MASRAF" FieldName="GENEL_ISKONTO" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="GENEL TOPLAM" FieldName="GENEL_TOPLAM" UnboundType="Decimal" VisibleIndex="7">
                    <FooterCellStyle ForeColor="Brown" />
                
                </dx:GridViewDataTextColumn>
            </Columns>
            <Settings ShowFilterRow="True" />
        </dx:ASPxGridView>

        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARGESETCRMConnectionString %>" SelectCommand="SELECT [SATINALIM_SIPARIS_ID], [FIRMA_TICARI_ADI], [ARG_CRM_KULLANICI].[GERCEK_KULLANICI_ADI], [ARG_CRM_KISI_FIRMA].[AD]+' '+[ARG_CRM_KISI_FIRMA].[SOYAD] AS [ADSOYAD], [SIPARIS_TARIHI], [TOPLAM_TUTAR], [GENEL_ISKONTO] FROM [ARG_CRM_SATINALIM_SIPARIS] INNER JOIN [ARG_CRM_FIRMA_GENEL] ON [ARG_CRM_SATINALIM_SIPARIS].FIRMA_ID=[ARG_CRM_FIRMA_GENEL].FIRMA_ID INNER JOIN [ARG_CRM_KISI_FIRMA] ON [ARG_CRM_SATINALIM_SIPARIS].[KISI_ID]=[ARG_CRM_KISI_FIRMA].[KISI_ID] INNER JOIN [ARG_CRM_KULLANICI] ON [ARG_CRM_SATINALIM_SIPARIS].[ONAYLAYAN_KISI]=[ARG_CRM_KULLANICI].[KULLANICI_ID]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
