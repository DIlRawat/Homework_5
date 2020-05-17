Imports Microsoft.VisualBasic
'
Public Class CalorieCalculator

    Private FatInteger As Integer
    Private CarbsInteger As Integer
    Private ProteinInteger As Integer
    Private CurrentItemCaloriesInteger As Integer
    Private TotalCaloriesInteger As Integer
    Private TotalItemsInteger As Integer

    'constructor
    Sub New(ByVal FatIn As Integer, ByVal CarbsIn As Integer, ByVal ProteinIn As Integer)
        Fat = FatIn
        Carbs = CarbsIn
        Protein = ProteinIn

        'calculate calories
        CalculateItemCalories()
    End Sub

    Property Fat() As Integer
        Get
            Return FatInteger
        End Get
        Set(value As Integer)
            FatInteger = value
        End Set
    End Property

    Property Carbs As Integer
        Get
            Return CarbsInteger
        End Get
        Set(value As Integer)
            CarbsInteger = value
        End Set
    End Property

    Property Protein As Integer
        Get
            Return ProteinInteger
        End Get
        Set(value As Integer)
            ProteinInteger = value
        End Set
    End Property

    Property CurrentItemCalories As Integer
        Get
            Return CurrentItemCaloriesInteger
        End Get
        Set(value As Integer)
            CurrentItemCaloriesInteger = value
        End Set
    End Property

    ReadOnly Property TotalCalories As Integer
        Get
            Return TotalCaloriesInteger
        End Get

    End Property

    ReadOnly Property TotalItem As Integer
        Get
            Return TotalItemsInteger
        End Get

    End Property

    Protected Function CalculateItemCalories() As Integer
        CurrentItemCaloriesInteger = Fat * 9 + Carbs * 4 + Protein * 4

        TotalCaloriesInteger += CurrentItemCaloriesInteger
        TotalItemsInteger += 1

        Return CurrentItemCaloriesInteger
    End Function

End Class
