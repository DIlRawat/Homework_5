
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim TotalCaloriesInteger As Integer
    Dim TotalItemsInteger As Integer

    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click
        'handle when calculate button is clicked

        'running validators at server side
        Page.Validate()
        'if they are valid do this:
        If Page.IsValid Then
            'calculate the calories
            'create a reference to caloriescalculator class
            Dim DailyCalorieCounter As CalorieCalculator

            Try
                'parse the inputs and create new object
                DailyCalorieCounter = New CalorieCalculator(Integer.Parse(FatTextBox.Text),
                                                            Integer.Parse(CarbsTextBox.Text),
                                                            Integer.Parse(ProteinTextBox.Text))

                'add current caloreies to total calories
                TotalCaloriesInteger += DailyCalorieCounter.TotalCalories
                TotalItemsInteger += DailyCalorieCounter.TotalItem

                'save total calories and total items in hidden field

                TotalCaloriesHiddenField.Value = TotalCaloriesInteger.ToString
                TotalItemsHiddenField.Value = TotalItemsInteger.ToString


                'display the computed calories
                CurrentCaloreisLabel.Text = DailyCalorieCounter.CurrentItemCalories

                TotalItemsLabel.Text = TotalItemsInteger.ToString
                TotalCaloriesLabel.Text = TotalCaloriesInteger.ToString

            Catch ex As FormatException
                MessageLabel.Text = "Please enter value in  all required fields."

            End Try

        Else
            'validation failed
            MessageLabel.Text = "Please enter all required fields."
        End If
    End Sub
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        'clear form
        FatTextBox.Text = ""
        CarbsTextBox.Text = ""
        ProteinTextBox.Text = ""
        CurrentCaloreisLabel.Text = ""
        FatTextBox.Focus()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Page_load webform happens everytime the page is run
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None

        'check for the hidden value
        TotalCaloriesInteger = Integer.Parse(TotalCaloriesHiddenField.Value)
        TotalItemsInteger = Integer.Parse(TotalItemsHiddenField.Value)
    End Sub
End Class
