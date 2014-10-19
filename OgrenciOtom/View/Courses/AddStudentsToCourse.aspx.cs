using OgrenciOtom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciOtom.View.Courses
{
    public partial class AddStudentsToCourse : System.Web.UI.Page
    {
        OtomDBEntities db = new OtomDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                drpCourses.DataSource = db.Courses.ToList();
                drpCourses.DataTextField = "CourseName";
                drpCourses.DataValueField = "Id";
                drpCourses.DataBind();


                chkStudents.DataSource = db.Students.ToList();
                chkStudents.DataTextField = "FirstName";
                chkStudents.DataValueField = "Id";
                chkStudents.DataBind();
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            int courseId = int.Parse(drpCourses.SelectedValue.ToString());
            Course c = db.Courses.Where(c1 => c1.Id == courseId).SingleOrDefault();
            List<string> selectedStudents = chkStudents.Items.Cast<ListItem>().Where(i => i.Selected).Select(i => i.Value).ToList();
            List<Student> students = new List<Student>();
            for (int i = 0; i < selectedStudents.Count; i++)
            {
                int studentId = int.Parse(selectedStudents[i]);
                Student s = db.Students.Where(s1 => s1.Id == studentId).SingleOrDefault();
                students.Add(s);
            }
            c.Students = students;

            db.SaveChanges();

        }
    }
}