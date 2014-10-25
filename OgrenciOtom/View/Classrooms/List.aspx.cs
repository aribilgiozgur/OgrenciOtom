using OgrenciOtom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciOtom.View.Classrooms
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OtomDBEntities db = new OtomDBEntities();
            rptClassrooms.DataSource = db.Classrooms.ToList();
            rptClassrooms.DataBind();

        }
    }
}