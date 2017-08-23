<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usmain.aspx.cs" Inherits="LifeEaseMP.public_html.usmain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Life Insurance Quotes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <meta name="description" content=" ">
    <meta name="keywords" content=" ">
    <meta name="GENERATOR" content="Mozilla/4.02 [en]C-DIAL  (Win95; U) [Netscape]">
    <meta name="Author" content=" ">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <%--action="../../cgi-bin/cqs32.exe"--%>
    <form name="startform" action="../public_html/cgi-bin/cqs32.exe" id="form1" method="post" enableviewstate="false">
        <!-- uncomment the UserLocation line if you want to use a different directory for 
your *.HTM files.  The *.HTM files will be in the COMPLIFE\USER\USER2 directory -->
        <input type="hidden" name="UserLocation" value="1" />


        <!-- Select a Template File For Your Results

        Use only one of the following template values for your results.  

        If you want to see an example of what the result templates look like, please visit: http://www.compulife.net/website/1

        IMPORTANT - Template names must be ALL CAPITAL LETTERS.

        Your Template Value Choices Are:

        TEMPLATE.HTM
        TEMPLATE_REQUEST_AP.HTM
        TEMPLATE_LOGO.HTM
        TEMPLATE_LOGO_0.HTM
        TEMPLATE_LOGO_1.HTM
        TEMPLATE_LOGO_2.HTM
        TEMPLATE_MORE_INFO.HTM
-->

        <input type="hidden" name="TEMPLATEFILE" value="TEMPLATE.HTM" />

        <!-- Select a Health Template File For Your Results

        Hint: It will match your Template File name with an "H" in front of the value -->

        <input type="hidden" name="HTEMPLATEFILE" value="HTEMPLATE.HTM" />


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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>State</label>
                    </div>
                    <div class="col-md-12 col-xs-12">
                        <select name="State" id="slState" size="1" class="form-control">
                            &nbsp;
                    <option value="1">Alabama&nbsp;</option>
                            &nbsp;
                    <option value="2">Alaska&nbsp;</option>
                            &nbsp;
                    <option value="3">Arizona&nbsp;</option>
                            &nbsp;
                    <option value="4">Arkansas&nbsp;</option>
                            &nbsp;
                    <option selected value="5">California&nbsp;</option>
                            &nbsp;
                    <option value="6">Colorado&nbsp;</option>
                            &nbsp;
                    <option value="7">Connecticut&nbsp;</option>
                            &nbsp;
                    <option value="8">Delaware&nbsp;</option>
                            &nbsp;
                    <option value="9">Dist.Columbia&nbsp;</option>
                            &nbsp;
                    <option value="10">Florida&nbsp;</option>
                            &nbsp;
                    <option value="11">Georgia&nbsp;</option>
                            &nbsp;
                    <option value="12">Hawaii&nbsp;</option>
                            &nbsp;
                    <option value="13">Idaho&nbsp;</option>
                            &nbsp;
                    <option value="14">Illinois&nbsp;</option>
                            &nbsp;
                    <option value="15">Indiana&nbsp;</option>
                            &nbsp;
                    <option value="16">Iowa&nbsp;</option>
                            &nbsp;
                    <option value="17">Kansas&nbsp;</option>
                            &nbsp;
                    <option value="18">Kentucky&nbsp;</option>
                            &nbsp;
                    <option value="19">Louisiana&nbsp;</option>
                            &nbsp;
                    <option value="20">Maine&nbsp;</option>
                            &nbsp;
                    <option value="21">Maryland&nbsp;</option>
                            &nbsp;
                    <option value="22">Massachusetts&nbsp;</option>
                            &nbsp;
                    <option value="23">Michigan&nbsp;</option>
                            &nbsp;
                    <option value="24">Minnesota&nbsp;</option>
                            &nbsp;
                    <option value="25">Mississippi&nbsp;</option>
                            &nbsp;
                    <option value="26">Missouri&nbsp;</option>
                            &nbsp;
                    <option value="27">Montana&nbsp;</option>
                            &nbsp;
                    <option value="28">Nebraska&nbsp;</option>
                            &nbsp;
                    <option value="29">Nevada&nbsp;</option>
                            &nbsp;
                    <option value="30">New Hampshire&nbsp;</option>
                            &nbsp;
                    <option value="31">New Jersey&nbsp;</option>
                            &nbsp;
                    <option value="32">New Mexico&nbsp;</option>
                            &nbsp;
                    <option value="52">NY Non-Bus&nbsp;</option>
                            &nbsp;
                    <option value="33">NY Business&nbsp;</option>
                            &nbsp;
                    <option value="34">North Carolina&nbsp;</option>
                            &nbsp;
                    <option value="35">North Dakota&nbsp;</option>
                            &nbsp;
                    <option value="36">Ohio&nbsp;</option>
                            &nbsp;
                    <option value="37">Oklahoma&nbsp;</option>
                            &nbsp;
                    <option value="38">Oregon&nbsp;</option>
                            &nbsp;
                    <option value="39">Pennsylvania&nbsp;</option>
                            &nbsp;
                    <option value="40">Rhode Island&nbsp;</option>
                            &nbsp;
                    <option value="41">South Carolina&nbsp;</option>
                            &nbsp;
                    <option value="42">South Dakota&nbsp;</option>
                            &nbsp;
                    <option value="43">Tennessee&nbsp;</option>
                            &nbsp;
                    <option value="44">Texas&nbsp;</option>
                            &nbsp;
                    <option value="45">Utah&nbsp;</option>
                            &nbsp;
                    <option value="46">Vermont&nbsp;</option>
                            &nbsp;
                    <option value="47">Virginia&nbsp;</option>
                            &nbsp;
                    <option value="48">Washington&nbsp;</option>
                            &nbsp;
                    <option value="49">West Virginia&nbsp;</option>
                            &nbsp;
                    <option value="50">Wisconsin&nbsp;</option>
                            &nbsp;
                    <option value="51">Wyoming&nbsp;</option>
                            &nbsp;
                    <option value="53">Guam&nbsp;</option>
                            &nbsp;
                    <option value="54">Puerto Rico&nbsp;</option>
                            &nbsp;
                    <option value="55">Virgin Islands&nbsp;</option>
                            &nbsp;
                    <option value="56">Amer. Samoa&nbsp;</option>
                            &nbsp;
                        </select>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Birthdate:</label>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <select name="BirthMonth" class="form-control">
                            <option value="1">January&nbsp;</option>
                            <option value="2">February&nbsp;</option>
                            <option value="3">March&nbsp;</option>
                            <option value="4">April&nbsp;</option>
                            <option value="5">May&nbsp;</option>
                            <option selected value="6">June&nbsp;</option>
                            <option value="7">July&nbsp;</option>
                            <option value="8">August&nbsp;</option>
                            <option value="9">September&nbsp;</option>
                            <option value="10">October&nbsp;</option>
                            <option value="11">November&nbsp;</option>
                            <option value="12">December&nbsp;</option>
                        </select>

                    </div>
                    <div class="col-md-4 col-xs-12">
                        <select name="Birthday" class="form-control">
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
                            <option selected>15&nbsp;</option>
                            <option>16&nbsp;</option>
                            <option>17&nbsp;</option>
                            <option>18&nbsp;</option>
                            <option>19&nbsp;</option>
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
                        <select name="BirthYear" class="form-control">
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
                            <option>1969&nbsp;</option>
                            <option selected>1970&nbsp;</option>
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
                                <input type="radio" checked name="Sex" value="M" />Male</label>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="radio">
                            <label>
                                <input type="radio" name="Sex" value="F" />Female</label>
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
                                <input type="radio" checked name="Smoker" value="Y" />Yes</label>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="radio">
                            <label>
                                <input type="radio" name="Smoker" value="N" />No</label>
                        </div>

                    </div>
                </div>
                <div class="row">
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
                </div>
                <input type="hidden" name="NewCategory" value="5" />
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <label>Face Amount:</label>
                    </div>
                    <div class="col-md-12 col-xs-12">
                        <select name="FaceAmount" size="1" class="form-control">
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
                        </select>
                    </div>
                </div>
                <div class="container-fluid bg-3 text-center">
                    <br />
                        <input type="submit" class="btn btn-lg" name="CqsComparison" value=" Compare Now "/>
                    
                </div>

            </div>
        </div>
    </form>
</body>
</html>
