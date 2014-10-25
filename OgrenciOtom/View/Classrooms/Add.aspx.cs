using OgrenciOtom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciOtom.View.Classrooms
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            OtomDBEntities db = new OtomDBEntities();
            
            String classRoomName = txtClassroomName.Text;
            Classroom c = new Classroom();
            c.ClassName = classRoomName;
            db.Classrooms.Add(c);
            db.SaveChanges();

            Response.Redirect("/index.aspx");

        }
    }
}