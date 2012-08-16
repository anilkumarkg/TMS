using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;


/// <summary>
/// Summary description for mywebservice
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class mywebservice : System.Web.Services.WebService {

    public mywebservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DateTime HelloWorld() {
        
        string strNum;
        DateTime myDate = new DateTime(2000, 1, 30);
        strNum = "Sample web service activated";
        strNum=myDate.ToString();
        return myDate;
        
       
    }
    
}

