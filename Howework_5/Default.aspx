<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 286px;
        }
        .auto-style7 {
            width: 256px;
            height: 33px;
            text-align: center;
        }
        .auto-style8 {
            width: 286px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
        .auto-style14 {
            height: 31px;
        }
        .auto-style15 {
            width: 256px;
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style17 {
            width: 256px;
            text-align: center;
            height: 31px;
        }
        .auto-style18 {
            width: 286px;
            height: 31px;
        }
        .auto-style19 {
            text-align: left;
        }
        .auto-style20 {
            width: 286px;
            text-align: right;
        }
        .auto-style21 {
            width: 286px;
            text-align: right;
            height: 31px;
        }
        .auto-style22 {
            text-align: left;
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16" colspan="2" rowspan="2">Calorie Counter</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style7">Fat&nbsp; </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="FatTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FatTextBox" ErrorMessage="Must enter Fat value" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvFatTextbox" runat="server" ControlToValidate="FatTextBox" ErrorMessage="Must enter Fat between 1 to 1000" ForeColor="#CC3300" MaximumValue="1000" MinimumValue="0" Type="Integer">1-1000</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Carbs</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="CarbsTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvCarbsTextbox" runat="server" ControlToValidate="CarbsTextBox" ErrorMessage="Must enter Carbs value" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvCarbsTextbox" runat="server" ControlToValidate="CarbsTextBox" ErrorMessage="Must enter Carbs between 1 to 1000" ForeColor="#CC3300" MaximumValue="1000" MinimumValue="0" Type="Integer">1-1000</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Protein</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="ProteinTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvProteinTextbox" runat="server" ControlToValidate="ProteinTextBox" ErrorMessage="Must enter Protein value" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvProteinTextbox" runat="server" ControlToValidate="ProteinTextBox" ErrorMessage="Must enter Protein between 1 to 1000" ForeColor="#CC3300" MaximumValue="1000" MinimumValue="0" Type="Integer">1-1000</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="CalculateButton" runat="server" Text="Calculate" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="ClearButton" runat="server" Text="Clear" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style20">Calories for Current Item: </td>
                    <td class="auto-style19">
                        <asp:Label ID="CurrentCaloreisLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style20">Total # of Items:</td>
                    <td class="auto-style19">
                        <asp:Label ID="TotalItemsLabel" runat="server"></asp:Label>
                        <asp:HiddenField ID="TotalItemsHiddenField" runat="server" Value="0" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style20">Total # of Calories: </td>
                    <td class="auto-style19">
                        <asp:Label ID="TotalCaloriesLabel" runat="server"></asp:Label>
                        <asp:HiddenField ID="TotalCaloriesHiddenField" runat="server" Value="0" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
