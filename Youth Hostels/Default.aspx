<%@ Page Title="Youth Hostels" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1><span style="font-size: 32px; color: #000000">Book our Youth Hostels</span><span style="color: #000000">&nbsp;
            <asp:Image ID="Image1" runat="server" Height="91px" ImageUrl="~/hostel.jpg" Width="148px" />
            </span>
        </h1>
        <p class="lead" style="font-size: small">Online Reservation Form</p>
        <table class="nav-justified" style="width: 80%; font-size: small">
            <tr>
                <td style="height: 36px; width: 78px"><strong>Name:</strong></td>
                <strong>
                <td style="width: 228px; height: 36px">
                    <asp:TextBox ID="txtName" runat="server" Width="282px"></asp:TextBox>
                </td>
                <td style="height: 36px">
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="* Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 78px; width: 78px"><strong>City Location:<br />
                    </strong>
                    <br />
                </td>
                <td style="width: 228px; height: 78px">
                    <asp:RadioButtonList ID="radCity" runat="server">
                        <asp:ListItem Value="radEdinburgh">Edinburgh ($17 a night)</asp:ListItem>
                        <asp:ListItem Value="radFlorence">Florence ($23 a night)</asp:ListItem>
                        <asp:ListItem Value="radBarcelona">Barcelona ($19 a night)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="height: 78px">
                    <asp:Label ID="lblCityError" runat="server" Text="* Select a City" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 78px"><strong>Night(s):</strong></td>
                <td style="width: 228px">
                    <asp:DropDownList ID="ddlNights" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 78px"><strong>Start Date:</strong></td>
                <td style="width: 228px">
                    <asp:Calendar ID="cldArrival" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;&nbsp;
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </strong>
                    <br />
                    <asp:Label ID="lblCalendarError" runat="server" Text="* Select a valid date" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblReservation" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
