using OgrenciOtom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciOtom.View.Students
{
    public partial class Add : System.Web.UI.Page
    {
        OtomDBEntities db = new OtomDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkSend_Click(object sender, EventArgs e)
        {
            Student s = new Student();
            s.FirstName = txtFirstName.Text;
            s.LastName = txtLastName.Text;
            s.Gender = int.Parse(drpGender.SelectedValue.ToString());

            String gun = txtGun.Text;
            String ay = drpAy.SelectedValue;
            String yil = txtYil.Text;
            DateTime BirthDate = DateTime.Parse(gun+"-"+ay+"-"+yil);
            s.DateOfBirth = BirthDate;
            db.Students.Add(s);
            db.SaveChanges();

            Response.Redirect("/index.aspx");


        }
    }
}