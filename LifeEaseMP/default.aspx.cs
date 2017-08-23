using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace LifeEaseMP
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //var proxy = new Xrae.XraeDirectApiClient();
            //var caseResult = proxy.GetCaseTermPricing("B035CBDD7E4F2F60");
            //var caseEx = proxy.GetCaseByKey("B035CBDD7E4F2F60");
            //var aa = 3;
            //aa++;
        }

        private Xrae.GetTermPricingResult GetQuickInfo()
        {


            //create api underwriting profile instance
            var profile = GetProfileNormal();
            ////create xrae api client proxy instance 
            var proxy = new Xrae.XraeDirectApiClient();

          //  var proxyCL =new Xrae.XraeDirectApiClient();
            ////call api operation – first parameter is account key     
          //  Xrae.GetUnderwritingResult resultUW = proxy.GetQuickUnderwriting("C53EBC72", profile);

            //---------------------------------
            //var param = new Xrae.AddCaseRequest
            //{
            //    AccountKey = "C53EBC72",  // iPipeline provided key,  
            //    ClientName = "John Smith",
            //    CaseComments = "",
            //    SubjectProfile = profile
            //};

            ////////create xrae api client proxy instance 
            //////var proxy = new Xrae.XraeDirectApiClient();

            //////////call api operation     
            //Xrae.AddCaseResult resultCase = proxy.AddCase(param);


            //var key = resultCase.CaseKey; //  AQUI REGRESA LA CLAVE DEL CASO CORRECTAMENTE EN ESTADO ACEPTED

            //Xrae.GetUnderwritingResult result2 = proxy.GetCaseUnderwriting(key);

            //-----------------------------------------------------------------
            int state = System.Convert.ToInt32(sltState.Value.ToString().Trim())-1;

            //var profile = new Xrae.UnderwritingProfile
            //{
            //    DateOfBirth = new Xrae.DateLongType { Month = 9, Day = 19, Year = 1969 },
            //    Gender = Xrae.Gender.Male,
            //    TobaccoUse = new Xrae.TobaccoProfile { EverUse = false },
            //    PolicyDetails = new Xrae.PolicyProfile { FaceAmount = 500000, ProductType = Xrae.ProductType.Term },

            //};
            var request = new Xrae.GetTermPricingRequest
            {
                AccountKey = "C53EBC72",
                //StateOfIssue = Xrae.StateAbbreviation.AL,
                SubjectProfile = profile,

            };

           var  result = proxy.GetQuickTermPricing(request);
            ////Xrae.GetTermPricingResult result = proxy.GetCaseTermPricing(key);
            //Xrae.GetTermPricingResult result = null;
            //if (Session["carrierList"]!= null)
            //{
            //    var carriers = Session["carrierList"] as string[];
            //    Xrae.GetPricingRequestCarriers fCarriers = new Xrae.GetPricingRequestCarriers
            //    {
            //        Carriers = carriers
            //    };
            //    result = proxy.GetQuickTermPricingForCarriers(request, fCarriers);

            //}
            //else
            //result = proxy.GetQuickTermPricing(request);

            //result = proxyCL.GetCaseTermPricing("B035CBDD7E4F2F60");
            //if (Session["UWresults"] != null)
            //{
            //    Xrae.GetUnderwritingResult UWResults = Session["UWresults"] as Xrae.GetUnderwritingResult;
            //    var paramPrice = new Xrae.GetULPricingRequest
            //    {
            //        PaymentMode = Xrae.UL_PaymentMode.Monthly,
            //        SortType = Xrae.UL_SortType.Alphabetical
            //    };
            //    Xrae.GetULPricingResult resultUL = proxy.GetULCasePricingEx(key, paramPrice, UWResults);
            //}
            //Xrae.GetTermPricingResult result2 = proxy.GetCaseTermPricing(key);
            ////create xrae api client proxy instance 
            ////var proxy = new Xrae.XraeDirectApiClient(); 

            ////call api operation – first parameter is account key    
            //Xrae.GetTermPricingResult result = proxy.GetQuickTermPricingForCarriers(request, fCarriers); 
            return result;
        }
        private Xrae.GetUnderwritingResult GetUWInfo()
        {
            //    Xrae.UnderwritingProfile profile = GetProfile();
            Xrae.UnderwritingProfile profile = null;
            ////create xrae api client proxy instance 
            var proxy = new Xrae.XraeDirectApiClient();

            ////call api operation – first parameter is account key     
            Xrae.GetUnderwritingResult resultUW = proxy.GetQuickUnderwriting("C53EBC72", profile);

            return resultUW;
        }
        private Xrae.UnderwritingProfile GetProfile()
        {
            int bDay = System.Convert.ToInt32(this.sltBDay.Value.ToString().Trim());
            //int bDay = System.Convert.ToInt32("15");
            int bMonth = System.Convert.ToInt32(this.sltBMonth.Value.ToString().Trim());
            int bYear = System.Convert.ToInt32(this.sltByear.Value.ToString().Trim());
            object sexMale = null;
            var smoker = false;
            if (this.rdSmokerN.Attributes["checked"] != null)
            {
                smoker = false;
            }
            if (this.rdSmokerY.Attributes["checked"] != null)
            {
                smoker = true;
            }
            if (this.rdSexMale.Attributes["checked"] != null)
            {
                sexMale = Xrae.Gender.Male;
            }
            if (this.rdSexFemale.Attributes["checked"] != null)
            {
                sexMale = Xrae.Gender.Female;
            }
            int faceAmount = System.Convert.ToInt32(txtFaceAmount.Text.Trim());
            //create api underwriting profile instance
            var profile = new Xrae.UnderwritingProfile
            {
                DateOfBirth = new Xrae.DateLongType { Month = bMonth, Day = bDay, Year = bYear },
                Gender = (Xrae.Gender)sexMale,
                TobaccoUse = new Xrae.TobaccoProfile { EverUse = smoker },
                PolicyDetails = new Xrae.PolicyProfile { FaceAmount = faceAmount, ProductType = Xrae.ProductType.Term, TermLengths = new int[1] {15 } },
                //PhysicalBuild = new Xrae.BuildProfile { HeightFeet = 5, HeightInches = 6, WeightPounds = 232 },

            };




            var proxyCL = new Xrae.XraeDirectApiClient();
            var profileCL = proxyCL.GetCaseByKey("B035CBDD7E4F2F60");
            var param = new Xrae.UpdateCaseRequest
            {
                CaseKey = "B035CBDD7E4F2F60",
                //use key returned by AddCase operation,  

                //only required if changed 
                SubjectProfile = profile
            };

            Xrae.UpdateCaseResult resultCL = proxyCL.UpdateCase(param);
            return profile;
        }


      
        private Xrae.UnderwritingProfile GetProfileNormal()
        {
            int bDay = System.Convert.ToInt32(this.sltBDay.Value.ToString().Trim());
            //int bDay = System.Convert.ToInt32("15");
            int bMonth = System.Convert.ToInt32(this.sltBMonth.Value.ToString().Trim());
            int bYear = System.Convert.ToInt32(this.sltByear.Value.ToString().Trim());
            object sexMale = null;
            var smoker = false;
            if (this.rdSmokerN.Attributes["checked"] != null)
            {
                smoker = false;
            }
            if (this.rdSmokerY.Attributes["checked"] != null)
            {
                smoker = true;
            }
            if (this.rdSexMale.Attributes["checked"] != null)
            {
                sexMale = Xrae.Gender.Male;
            }
            if (this.rdSexFemale.Attributes["checked"] != null)
            {
                sexMale = Xrae.Gender.Female;
            }
            int faceAmount = System.Convert.ToInt32(txtFaceAmount.Text.Trim());
            ////create api underwriting profile instance
            var profile = new Xrae.UnderwritingProfile
            {
                DateOfBirth = new Xrae.DateLongType { Month = bMonth, Day = bDay, Year = bYear },
                Gender = (Xrae.Gender)sexMale,
                TobaccoUse = new Xrae.TobaccoProfile { EverUse = smoker },
                PolicyDetails = new Xrae.PolicyProfile { FaceAmount = faceAmount, ProductType = Xrae.ProductType.Term, TermLengths = new int[1] { 15 } },
                //PhysicalBuild = new Xrae.BuildProfile { HeightFeet = 5, HeightInches = 6, WeightPounds = 232 },
                //Cholesterol = new Xrae.CholesterolProfile
                //{
                //    EverMedication = true,
                //    MedicationHistory = new Xrae.CholesterolMedication { CurrentlyUse = true }

                //},// taking cholesterol medication
                //BloodPressure = new Xrae.BloodPressureProfile
                //{
                //    EverMedication = true,
                //    MedicationHistory = new Xrae.BloodPressureMedication { CurrentlyUse = true }
                //}, // taking hypertesion medication
                //MedicalConditions = new Xrae.MedicalProfile
                //{
                //    //CancerLung = new Xrae.CancerLungProfile {  LastTreatmentDate}
                //    //DiabetesType1 = new Xrae.DiabetesType1Profile { CurrentlyTreated = true },
                //    //DiabetesType2 = new Xrae.DiabetesType2Profile { CurrentlyTreated = true },
                //    // ,Alzheimers = new Xrae.AlzheimersProfile {    } 

                //},
                //FamilyHistory = new Xrae.FamilyProfile
                //{
                //    FatherConditionHistory = new Xrae.FatherProfile
                //    {
                //        //Cancer = new Xrae.FatherCancerProfile { DeathAge = 54 }
                //        //Cardiovascular = new Xrae.FatherCardiovascularProfile {  DeathAge =54}
                //        //Stroke = new Xrae.FatherStrokeProfile { DeathAge = 54}
                        
                //          Diabetes = new Xrae.FatherDiabetesProfile { DeathAge =54}
                //    }
                //    //, MotherConditionHistory = new Xrae.MotherProfile
                //}
            };


           


            return profile;
        }

        protected void btnFindQuotes_Click(object sender, EventArgs e)
        {
            FindQuotes();
            //FixedProfileQuotes();
        }
        private void FindQuotes()
        {
            lblResult.Text = "";
            Xrae.GetTermPricingResult result = RequestQuotesFromApi();
            if (result.HasResults)
            {
                this.divOptions.Visible = false;
                this.divQuoteResults.Visible = true;
                var lista = result.PricingResults;
                for (int i = 0; i < lista.Length; i++)
                {
                    HtmlTableRow row = new HtmlTableRow();
                    HtmlTableCell tdImageCell = new HtmlTableCell();
                    Image imageProduct = new Image();
                    //   imageProduct.ID = "id";
                    string imgurl = "https://lite.xrae.com/Images/Carriers/" + lista[i].CarrierCode + ".png";
                    imageProduct.ImageUrl = imgurl;
                    tdImageCell.Controls.Add(imageProduct);
                    row.Cells.Add(tdImageCell);
                    HtmlTableCell blankCell = new HtmlTableCell();
                    blankCell.InnerText = "      ";


                    row.Cells.Add(blankCell);
                    HtmlTableCell cellName = new HtmlTableCell();
                    cellName.InnerText = "       " + lista[i].ProductName + "       ";
                    row.Cells.Add(cellName);

                    HtmlTableCell cellProd = new HtmlTableCell();
                    cellProd.InnerText = "     " + lista[i].ClassName + "         ";
                    row.Cells.Add(cellProd);
                    row.Cells.Add(blankCell);
                    HtmlTableCell cellPrice = new HtmlTableCell();
                    cellPrice.InnerText = "     $" + lista[i].ModalAnnual + " Annual        ";
                    row.Cells.Add(cellPrice);
                    row.Cells.Add(blankCell);
                   
                    //HtmlTableCell cellLink = new HtmlTableCell();

                    //HyperLink hl = new HyperLink()
                    //{
                    //    Text = "Advisor Underwriting Guide",
                    //    NavigateUrl = "https://guides.xrae.com/" + lista[i].CarrierCode + ".pdf",
                    //    CssClass = "thickbox",
                    //    ToolTip = ""
                    //};
                    //cellLink.Controls.Add(hl);
                    //row.Cells.Add(cellLink);
                    this.tblResultsQuotes.Rows.Add(row);


                }
            }
            else
            {

                lblResult.Text = "No quotes found";
            }
        }
        public Xrae.GetTermPricingResult RequestQuotesFromApi()
        {
            Xrae.GetTermPricingResult result;

            var proxy = new Xrae.XraeDirectApiClient();
            var quoteProfile = new Xrae.UnderwritingProfile
            {
                DateOfBirth = new Xrae.DateLongType
                {
                    Month = 1,
                    Day = 1,
                    Year = 1988
                },
                Gender = Xrae.Gender.Male,
                TobaccoUse = new Xrae.TobaccoProfile { EverUse = false },
                PolicyDetails = new Xrae.PolicyProfile
                {
                    FaceAmount = 500000,
                    ProductType = Xrae.ProductType.Term,
                    TermLengths = new int[1] { 15 } // filter just 
                },
                FamilyHistory = new Xrae.FamilyProfile
                {
                    FatherConditionHistory = new Xrae.FatherProfile
                    {
                        //Cancer = new Xrae.FatherCancerProfile { DeathAge = 54 }
                        //Cardiovascular = new Xrae.FatherCardiovascularProfile { DeathAge = 54 }
                        //Stroke = new Xrae.FatherStrokeProfile { DeathAge = 54 }
                        //Cardiovascular = new Xrae.FatherCardiovascularProfile { DeathAge = 54 }
                        Diabetes = new Xrae.FatherDiabetesProfile { DeathAge = 40 }
                    },
                     MotherConditionHistory = new Xrae.MotherProfile
                     {
                          Diabetes = new Xrae.MotherDiabetesProfile { DeathAge= 54}
                     }
                }
            };
            var request = new Xrae.GetTermPricingRequest
            {
                AccountKey = "C53EBC72",
                StateOfIssue = Xrae.StateAbbreviation.IL,
                SubjectProfile = quoteProfile,
            };


            //var param = new Xrae.AddCaseRequest
            //{
            //    AccountKey = "C53EBC72",
            //    ClientName = "John Doe",
            //    CaseComments = "LifeEAse quotes",
            //    SubjectProfile = quoteProfile,
            //    StateOfIssue = Xrae.StateAbbreviation.IL,
            //};
            //var caseProf = proxy.AddCase(param);
            //     var key = caseProf.CaseKey
     //       var carriers = new string[] { "pru", "amg", "ban", "sbl", "prc", "pro", "ing" };
            var carriers = new string[] { "met", "pru", "ing", "pro", "oma", "amg", "gen", "ava", "lfg", "ban", "prc", "sbl", "jhk" };
            var paramCarriers = new Xrae.GetPricingRequestCarriers { Carriers = carriers };
            return result = proxy.GetQuickTermPricingForCarriers(request, paramCarriers);
              //  (caseProf.CaseKey, new Xrae.GetPricingRequestCarriers { Carriers = carriers });
        }
        private void FixedProfileQuotes()
        {
            Xrae.GetTermPricingResult result = new Xrae.GetTermPricingResult();
            var profile = new Xrae.UnderwritingProfile
            {
                DateOfBirth = new Xrae.DateLongType { Month = 9, Day = 19, Year = 1969 },
                Gender = Xrae.Gender.Male,
                TobaccoUse = new Xrae.TobaccoProfile { EverUse = false },
                PolicyDetails = new Xrae.PolicyProfile { FaceAmount = 500000, ProductType = Xrae.ProductType.Term
                        
                },
                 MedicalConditions = new Xrae.MedicalProfile
                 {
                         DiabetesType1 = new Xrae.DiabetesType1Profile
                         {
                              
                         }
                 },
                 FamilyHistory = new Xrae.FamilyProfile
                 {
                      FatherConditionHistory = new Xrae.FatherProfile
                      {
                         
                      }
                 }
                 
            };
            var request = new Xrae.GetTermPricingRequest
            {
                AccountKey = "C53EBC72",
            //    StateOfIssue = Xrae.StateAbbreviation.AL,
                SubjectProfile = profile,
                
            };
            var proxy = new Xrae.XraeDirectApiClient();

            result = proxy.GetQuickTermPricing(request);
            //var result2 = proxy.GetQuickUnderwritingUI("C53EBC72", profile);
            var message = "Got quotes";

            if (result.HasResults)
                message = "have quotes";
        }

      

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            this.divOptions.Visible = true;
            this.divQuoteResults.Visible = false;
            lblResult.Text = "";
        }

        protected void btnFindUW_Click(object sender, EventArgs e)
        {

            List<string> carrierList = new List<string>();
            Xrae.GetUnderwritingResult result = this.GetUWInfo();
            if (result.HasResults)
            {

                Session["UWresults"] = result;
                this.divOptions.Visible = false;
                this.divQuoteResults.Visible = true;
                var lista = result.UnderwritingResults;
                for (int i = 0; i < lista.Length; i++)
                {
                    HtmlTableRow row = new HtmlTableRow();
                    HtmlTableCell tdImageCell = new HtmlTableCell();
                    Image imageProduct = new Image();
                    //   imageProduct.ID = "id";
                    string imgurl = "https://lite.xrae.com/Images/Carriers/" + lista[i].CarrierCode + ".png";
                    imageProduct.ImageUrl = imgurl;
                    tdImageCell.Controls.Add(imageProduct);
                    row.Cells.Add(tdImageCell);
                    HtmlTableCell cellName = new HtmlTableCell();
                    cellName.InnerText = lista[i].DisplayName;
                    row.Cells.Add(cellName);
                    //HtmlTableCell cellPrice = new HtmlTableCell();
                    //cellPrice.InnerText = result.PricingResults[i].TermYears;
                    //row.Cells.Add(cellPrice);

                    HtmlTableCell cellLink = new HtmlTableCell();

                    HyperLink hl = new HyperLink()
                    {
                        Text = "Advisor Underwriting Guide",
                        NavigateUrl = "https://guides.xrae.com/" + lista[i].CarrierCode + ".pdf",
                        CssClass = "thickbox",
                        ToolTip = ""
                    };
                    cellLink.Controls.Add(hl);
                    row.Cells.Add(cellLink);
                    this.tblResultsQuotes.Rows.Add(row);
                    carrierList.Add(lista[i].CarrierCode);

                }
                Session["carrierList"] = carrierList.ToArray();
            }
            else
                lblResult.Text = "No quotes found";
        }

        protected void btnFindQuotes2_Click(object sender, EventArgs e)
        {

        }
    }
}