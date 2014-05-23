Imports DevExpress.Web.ASPxGridView

Public Class customcolumn
    Inherits System.Web.UI.Page

    Protected Sub grid_CustomUnboundColumnData(ByVal sender As Object, ByVal e As ASPxGridViewColumnDataEventArgs)
        If e.Column.FieldName = "GENEL_TOPLAM" Then
            Dim tutar As Decimal = CDec(e.GetListSourceFieldValue("TOPLAM_TUTAR"))
            Dim masraf As Integer = Convert.ToInt32(e.GetListSourceFieldValue("GENEL_ISKONTO"))
            e.Value = tutar + masraf
        End If
    End Sub
End Class