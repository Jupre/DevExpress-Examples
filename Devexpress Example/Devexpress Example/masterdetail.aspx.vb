Imports DevExpress.Web.ASPxGridView

Public Class masterdetail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not IsPostBack) Then
            ASPxGridView1.DataBind()
            ASPxGridView1.DetailRows.ExpandRow(0)
        End If
    End Sub
    Protected Sub detailGrid_DataSelect(ByVal sender As Object, ByVal e As EventArgs)
        Session("FIRMA_ID") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub
    Protected Sub detailGrid_CustomUnboundColumnData(ByVal sender As Object, ByVal e As ASPxGridViewColumnDataEventArgs)
        'If e.Column.FieldName = "Total" Then
        '    Dim price As Decimal = CDec(e.GetListSourceFieldValue("UnitPrice"))
        '    Dim quantity As Integer = Convert.ToInt32(e.GetListSourceFieldValue("Quantity"))
        '    e.Value = price * quantity
        'End If
    End Sub
    'Protected Sub chkSingleExpanded_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
    '    ASPxGridView1.SettingsDetail.AllowOnlyOneMasterRowExpanded = chkSingleExpanded.Checked
    '    If ASPxGridView1.SettingsDetail.AllowOnlyOneMasterRowExpanded Then
    '        ASPxGridView1.DetailRows.CollapseAllRows()
    '    End If
    'End Sub

End Class