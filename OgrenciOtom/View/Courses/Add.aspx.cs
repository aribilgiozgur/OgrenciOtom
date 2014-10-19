using OgrenciOtom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciOtom.View.Courses
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkAdd_Click(object sender, EventArgs e)
        {
            OtomDBEntities db = new OtomDBEntities();
            String courseName = txtCourseName.Text;
            Course c = new Course();
            c.CourseName = courseName;
            db.Courses.Add(c);
            db.SaveChanges();
            Response.Redirect("/Index.aspx");

        }
    }
}