<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="Devexpress_Example._default" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxGridView" Assembly="DevExpress.Web.v13.2, Version=13.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" EnableTheming="True" Theme="Aqua">
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="Firma Entegre Kodu" FieldName="FIRMA_ENTEGRE_KODU" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Firma Ticari Adı" FieldName="FIRMA_TICARI_ADI" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Web Sayfası" FieldName="WEB_SAYFASI" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Vergi Dairesi" FieldName="VERGI_DAIRESI" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Vergi Numarası" FieldName="VERGI_NO" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARGESETCRMConnectionString %>" SelectCommand="SELECT [FIRMA_ENTEGRE_KODU], [FIRMA_TICARI_ADI], [WEB_SAYFASI], [VERGI_DAIRESI], [VERGI_NO] FROM [ARG_CRM_FIRMA_GENEL]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
