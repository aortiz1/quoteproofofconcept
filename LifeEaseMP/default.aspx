<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LifeEaseMP._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body{
            font-size:14px;
        }
        td{
            padding-left:15px!important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <div class="container text-center">
                    <h1>LifeEase</h1>
                    <p>Life insurance quotes </p>
                </div>

            </div>

            <div class="container-fluid bg-3 text-center">
                <h3>Instant Life Insurance Quote</h3>
                <br />
            </div>
            <div id="divOptions" class="container-fluid" runat="server">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>State</label>
                    </div>
                    <div class="col-md-12 col-xs-12">
                        <select name="State" id="sltState" size="1" class="form-control" runat="server">
                            <option value='1'>Alabama</option>
                            <option value='2'>Alaska</option>
                            <option value='4'>Arizona</option>
                            <option value='5'>Arkansas</option>
                            <option value='6' selected>California</option>
                            <option value='8'>Colorado</option>
                            <option value='9'>Connecticut</option>
                            <option value='10'>Delaware</option>
                            <option value='11'>District of Columbia</option>
                            <option value='12'>Florida</option>
                            <option value='13'>Georgia</option>
                            <option value='15'>Hawaii</option>
                            <option value='16'>Idaho</option>
                            <option value='17'>Illinois</option>
                            <option value='18'>Indiana</option>
                            <option value='19'>Iowa</option>
                            <option value='20'>Kansas</option>
                            <option value='21'>Kentucky</option>
                            <option value='22'>Louisiana</option>
                            <option value='23'>Maine</option>
                            <option value='24'>Maryland</option>
                            <option value='25'>Massachusetts</option>
                            <option value='26'>Michigan</option>
                            <option value='27'>Minnesota</option>
                            <option value='28'>Mississippi</option>
                            <option value='29'>Missouri</option>
                            <option value='30'>Montana</option>
                            <option value='31'>Nebraska</option>
                            <option value='32'>Nevada</option>
                            <option value='33'>New Hampshire</option>
                            <option value='34'>New Jersey</option>
                            <option value='35'>New Mexico</option>
                            <option value='36'>New York</option>
                            <option value='37'>North Carolina</option>
                            <option value='38'>North Dakota</option>
                            <option value='39'>Ohio</option>
                            <option value='40'>Oklahoma</option>
                            <option value='41'>Oregon</option>
                            <option value='42'>Pennsylvania</option>
                            <option value='44'>Rhode Island</option>
                            <option value='45'>South Carolina</option>
                            <option value='46'>South Dakota</option>
                            <option value='47'>Tennessee</option>
                            <option value='48'>Texas</option>
                            <option value='49'>Utah</option>
                            <option value='50'>Vermont</option>
                            <option value='51'>Virginia</option>
                            <option value='53'>Washington</option>
                            <option value='54'>West Virginia</option>
                            <option value='55'>Wisconsin</option>
                            <option value='56'>Wyoming</option>
                            <option value='60'>American Samoa</option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>



                        </select>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Birthdate:</label>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <select id="sltBMonth" name="BirthMonth" class="form-control" runat="server">
                            <option value="1">January&nbsp;</option>
                            <option value="2">February&nbsp;</option>
                            <option value="3">March&nbsp;</option>
                            <option value="4">April&nbsp;</option>
                            <option value="5">May&nbsp;</option>
                            <option value="6">June&nbsp;</option>
                            <option value="7">July&nbsp;</option>
                            <option value="8">August&nbsp;</option>
                            <option selected value="9">September&nbsp;</option>
                            <option value="10">October&nbsp;</option>
                            <option value="11">November&nbsp;</option>
                            <option value="12">December&nbsp;</option>
                        </select>

                    </div>
                    <div class="col-md-4 col-xs-12">
                        <select id="sltBDay" name="Birthday" class="form-control" runat="server">
                            <option>1&nbsp;</option>
                            <option>2&nbsp;</option>
                            <option>3&nbsp;</option>
                            <option>4&nbsp;</option>
                            <option>5&nbsp;</option>
                            <option>6&nbsp;</option>
                            <option>7&nbsp;</option>
                            <option>8&nbsp;</option>
                            <option>9&nbsp;</option>
                            <option>10&nbsp;</option>
                            <option>11&nbsp;</option>
                            <option>12&nbsp;</option>
                            <option>13&nbsp;</option>
                            <option>14&nbsp;</option>
                            <option>15&nbsp;</option>
                            <option>16&nbsp;</option>
                            <option>17&nbsp;</option>
                            <option>18&nbsp;</option>
                            <option selected>19&nbsp;</option>
                            <option>20&nbsp;</option>
                            <option>21&nbsp;</option>
                            <option>22&nbsp;</option>
                            <option>23&nbsp;</option>
                            <option>24&nbsp;</option>
                            <option>25&nbsp;</option>
                            <option>26&nbsp;</option>
                            <option>27&nbsp;</option>
                            <option>28&nbsp;</option>
                            <option>29&nbsp;</option>
                            <option>30&nbsp;</option>
                            <option>31&nbsp;</option>
                        </select>

                    </div>
                    <div class="col-md-4 col-xs-12">
                        <select id="sltByear" name="BirthYear" class="form-control" runat="server">
                            <option>1910&nbsp;</option>
                            <option>1911&nbsp;</option>
                            <option>1912&nbsp;</option>
                            <option>1913&nbsp;</option>
                            <option>1914&nbsp;</option>
                            <option>1915&nbsp;</option>
                            <option>1916&nbsp;</option>
                            <option>1917&nbsp;</option>
                            <option>1918&nbsp;</option>
                            <option>1919&nbsp;</option>
                            <option>1920&nbsp;</option>
                            <option>1921&nbsp;</option>
                            <option>1922&nbsp;</option>
                            <option>1923&nbsp;</option>
                            <option>1924&nbsp;</option>
                            <option>1925&nbsp;</option>
                            <option>1926&nbsp;</option>
                            <option>1927&nbsp;</option>
                            <option>1928&nbsp;</option>
                            <option>1929&nbsp;</option>
                            <option>1930&nbsp;</option>
                            <option>1931&nbsp;</option>
                            <option>1932&nbsp;</option>
                            <option>1933&nbsp;</option>
                            <option>1934&nbsp;</option>
                            <option>1935&nbsp;</option>
                            <option>1936&nbsp;</option>
                            <option>1937&nbsp;</option>
                            <option>1938&nbsp;</option>
                            <option>1939&nbsp;</option>
                            <option>1940&nbsp;</option>
                            <option>1941&nbsp;</option>
                            <option>1942&nbsp;</option>
                            <option>1943&nbsp;</option>
                            <option>1944&nbsp;</option>
                            <option>1945&nbsp;</option>
                            <option>1946&nbsp;</option>
                            <option>1947&nbsp;</option>
                            <option>1948&nbsp;</option>
                            <option>1949&nbsp;</option>
                            <option>1950&nbsp;</option>
                            <option>1951&nbsp;</option>
                            <option>1952&nbsp;</option>
                            <option>1953&nbsp;</option>
                            <option>1954&nbsp;</option>
                            <option>1955&nbsp;</option>
                            <option>1956&nbsp;</option>
                            <option>1957&nbsp;</option>
                            <option>1958&nbsp;</option>
                            <option>1959&nbsp;</option>
                            <option>1960&nbsp;</option>
                            <option>1961&nbsp;</option>
                            <option>1962&nbsp;</option>
                            <option>1963&nbsp;</option>
                            <option>1964&nbsp;</option>
                            <option>1965&nbsp;</option>
                            <option>1966&nbsp;</option>
                            <option>1967&nbsp;</option>
                            <option>1968&nbsp;</option>
                            <option selected>1969&nbsp;</option>
                            <option>1970&nbsp;</option>
                            <option>1971&nbsp;</option>
                            <option>1972&nbsp;</option>
                            <option>1973&nbsp;</option>
                            <option>1974&nbsp;</option>
                            <option>1975&nbsp;</option>
                            <option>1976&nbsp;</option>
                            <option>1977&nbsp;</option>
                            <option>1978&nbsp;</option>
                            <option>1979&nbsp;</option>
                            <option>1980&nbsp;</option>
                            <option>1981&nbsp;</option>
                            <option>1982&nbsp;</option>
                            <option>1983&nbsp;</option>
                            <option>1984&nbsp;</option>
                            <option>1985&nbsp;</option>
                            <option>1986&nbsp;</option>
                            <option>1987&nbsp;</option>
                            <option>1988&nbsp;</option>
                            <option>1989&nbsp;</option>
                            <option>1990&nbsp;</option>
                            <option>1991&nbsp;</option>
                            <option>1992&nbsp;</option>
                            <option>1993&nbsp;</option>
                            <option>1994&nbsp;</option>
                            <option>1995&nbsp;</option>
                            <option>1996&nbsp;</option>
                            <option>1997&nbsp;</option>
                            <option>1998&nbsp;</option>
                            <option>1999&nbsp;</option>
                            <option>2000&nbsp;</option>
                            <option>2001&nbsp;</option>
                            <option>2002&nbsp;</option>
                            <option>2003&nbsp;</option>
                            <option>2004&nbsp;</option>
                            <option>2005&nbsp;</option>
                            <option>2006&nbsp;</option>
                            <option>2007&nbsp;</option>
                            <option>2008&nbsp;</option>
                        </select>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Gender:</label>
                    </div>
                    <div class="col-md-4 col-xs-12">


                        <div class="radio">
                            <label>
                                <input id="rdSexMale" type="radio" checked name="Sex" value="M" runat="server" />Male</label>
                        </div>

                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="radio">
                            <label>
                                <input id="rdSexFemale" type="radio" name="Sex" value="F" runat="server" />Female</label>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Smoker/Tobacco:</label>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="radio">
                            <label>
                                <input id="rdSmokerY" type="radio" name="Smoker" value="Y" runat="server" />Yes</label>

                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="radio">
                            <label>
                                <input id="rdSmokerN" type="radio" checked name="Smoker" value="N" runat="server" />No</label>
                        </div>

                    </div>
                </div>
                <%-- <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Health Class:</label>
                    </div>
                    <div class="col-md-12 col-xs-12">
                        <select name="Health" size="1" class="form-control">
                            <option selected value="PP">Preferred Plus&nbsp;</option>
                            <option value="P">Preferred&nbsp;</option>
                            <option value="RP">Regular Plus&nbsp;</option>
                            <option value="R">Regular&nbsp;</option>
                        </select>
                    </div>
                </div>--%>
                <input type="hidden" name="NewCategory" value="5" />
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Face Amount:</label>
                    </div>
                    <div class="col-md-12 col-xs-12">
                        <asp:TextBox ID="txtFaceAmount" runat="server">500000</asp:TextBox>
                        <%--   <select name="FaceAmount" size="1" class="form-control">
                            <option value="50000">$50,000&nbsp;</option>
                            <option value="75000">$75,000&nbsp;</option>
                            <option value="100000">$100,000&nbsp;</option>
                            <option value="150000">$150,000&nbsp;</option>
                            <option value="200000">$200,000&nbsp;</option>
                            <option value="250000">$250,000&nbsp;</option>
                            <option value="300000">$300,000&nbsp;</option>
                            <option value="350000">$350,000&nbsp;</option>
                            <option value="400000">$400,000&nbsp;</option>
                            <option value="450000">$450,000&nbsp;</option>
                            <option selected value="500000">$500,000&nbsp;</option>
                            <option value="600000">$600,000&nbsp;</option>
                            <option value="700000">$700,000&nbsp;</option>
                            <option value="750000">$750,000&nbsp;</option>
                            <option value="800000">$800,000&nbsp;</option>
                            <option value="900000">$900,000&nbsp;</option>
                            <option value="1000000">$1,000,000&nbsp;</option>
                            <option value="1250000">$1,250,000&nbsp;</option>
                            <option value="1500000">$1,500,000&nbsp;</option>
                            <option value="1750000">$1,750,000&nbsp;</option>
                            <option value="2000000">$2,000,000&nbsp;</option>
                            <option value="2500000">$2,500,000&nbsp;</option>
                            <option value="3000000">$3,000,000&nbsp;</option>
                            <option value="5000000">$5,000,000&nbsp;</option>
                        </select>--%>
                    </div>
                </div>
                <div class="container-fluid bg-3 text-center">
                    <br />
                    <%--<input type="submit" class="btn btn-lg" name="CqsComparison" value=" Compare Now " />--%>
                    <asp:Button ID="btnFindUW" Visible="false" CssClass="btn" OnClick="btnFindUW_Click" runat="server" Text="Find Undewritting" />
                    <asp:Button ID="btnFindQuotes" CssClass="btn" OnClick="btnFindQuotes_Click" runat="server" Text="Find Quotes" />
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

                </div>
            </div>
            <div id="divQuoteResults" class="container-fluid" runat="server" visible="false">
                <div class="col-md-12">
                    <asp:Button ID="btnReturn" CssClass="btn" runat="server" OnClick="btnReturn_Click" Text="Return to options" />
                    <%--<asp:Button ID="btnFindQuotes2" CssClass="btn"  OnClick="btnFindQuotes2_Click" runat="server" Text="Find Quotes" />--%>
                </div>
                <div id="divResults" class="col-md-12">

                    <table class="table-striped" id="tblResultsQuotes" runat="server">
                    </table>
                </div>
            </div>
        </div>

    </form>
    <%--<script type="text/javascript">
            function CambiaVista(vista)
            {
                if(vista==1)
                {
                    document.getElementById("divOptions").style.display = "";
                    document.getElementById("divQuoteResults").style.display = "none";
                }
                else
                {
                    document.getElementById("divOptions").style.display = "none";
                    document.getElementById("divQuoteResults").style.display = "";
                }
            }
        </script>--%>
</body>
</html>
