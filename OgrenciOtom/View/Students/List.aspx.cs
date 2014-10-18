using OgrenciOtom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciOtom.View.Students
{
    public partial class List : System.Web.UI.Page
    {
        OtomDBEntities db = new OtomDBEntities();
        public int studentCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            rptOgrenciler.DataSource = db.Students.ToList();
            rptOgrenciler.DataBind();

            studentCount = db.Students.Count();
            
        }
    }
}