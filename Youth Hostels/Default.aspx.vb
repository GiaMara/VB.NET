' Project:  Youth Hostels
' Author:   Gianina Maramag
' Date:     May 20, 2017
' Purpose:  The following Web application will request reservation information
'           for the Youth Hostels. This web site will compute the cost of
'           the number of nights and location selected.

Option Strict On

Partial Class _Default
    Inherits Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        ' The btnSubmit Click Event will calculate the cost of the reservation
        ' based on the selected city location and the number of nights reserved.

        ' Declare and initialize variables
        Dim decEdinburghCost As Decimal = 17D
        Dim decFlorenceCost As Decimal = 23D
        Dim decBarcelonaCost As Decimal = 19D
        Dim strName As String
        Dim decReservationCost As Decimal = 0D
        Dim intNumberOfNights As Integer
        Dim strMessage As String

        ' Trim additional spaces that are entered by the user
        strName = txtName.Text.Trim
        lblReservation.Text = ""
        If radCity.SelectedIndex <= -1 Then
            ' Check if user selected a city location
            lblCityError.Visible = True
            If cldArrival.SelectedDate <= cldArrival.TodaysDate Then
                ' Check if user selected a date later than the current date
                lblCalendarError.Visible = True
            Else
                lblCalendarError.Visible = False
            End If
        Else
            lblCityError.Visible = False
            If cldArrival.SelectedDate > cldArrival.TodaysDate Then
                lblCalendarError.Visible = False
                ' Calculate the cost of the city location selected by the user
                If radCity.SelectedIndex = 0 Then
                    decReservationCost += decEdinburghCost
                End If
                If radCity.SelectedIndex = 1 Then
                    decReservationCost += decFlorenceCost
                End If
                If radCity.SelectedIndex = 2 Then
                    decReservationCost += decBarcelonaCost
                End If
                intNumberOfNights = Convert.ToInt32(ddlNights.SelectedItem.Text)
                decReservationCost = intNumberOfNights * decReservationCost
                ' Display confirmation message and reservation details
                strMessage = " A reservation has been made for: " & strName & "<br>"
                strMessage &= "The City(s) cost is: " & decReservationCost.ToString("C") & "<br>"
                strMessage &= "Arrival Date: " & cldArrival.SelectedDate.ToShortDateString() _
                    & " for " & intNumberOfNights & " night(s)"
                lblReservation.Text = strMessage
            Else
                lblCalendarError.Visible = True
            End If
        End If
    End Sub
End Class