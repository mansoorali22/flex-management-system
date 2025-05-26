using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class FACULTY_VIEW_MarksDistribution : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //protected void SaveButton_Click(object sender, EventArgs e)
    //{
    //    int assignments, quizzes, sessional1, sessional2, finals;




    //    if (int.TryParse(Request.Form["assignmentW"], out assignments) &&
    //        int.TryParse(Request.Form["QuizWeightage"], out quizzes) &&
    //        int.TryParse(Request.Form["SesIWeightage"], out sessional1) &&
    //        int.TryParse(Request.Form["SesIIWeightage"], out sessional2) &&
    //        int.TryParse(Request.Form["finalWeightage"], out finals))
    //    {


    //        SaveMarksDistributionToDatabase(assignments, quizzes, sessional1, sessional2, finals);

    //        //int total = assignments + quizzes + sessional1 + sessional2 + finals;

    //        //if (total == 100)
    //        //{
    //        //    Response.Write("<p>Error: Total Marks Exceed 100</p>");
    //        //}
    //        //else
    //        //{
    //        //    // Save the marks distribution to the database
    //        //    SaveMarksDistributionToDatabase(assignments,quizzes,sessional1,sessional2,finals);
    //        //    Response.Write("<p>Marks distribution saved successfully.</p>");


    //        //}


    //    }
    //}

    protected void SaveButton_Click(object sender, EventArgs e)
    {
        int assignments, quizzes, sessional1, sessional2, finals;

        if (int.TryParse(Request.Form["assignmentW"], out assignments) &&
            int.TryParse(Request.Form["QuizWeightage"], out quizzes) &&
            int.TryParse(Request.Form["SesIWeightage"], out sessional1) &&
            int.TryParse(Request.Form["SesIIWeightage"], out sessional2) &&
            int.TryParse(Request.Form["finalWeightage"], out finals))
        {
            SaveMarksDistributionToDatabase(assignments, quizzes, sessional1, sessional2, finals);
        }
    }


    private void SaveMarksDistributionToDatabase(int assignmentW, int quizzeW,int sessional1W,int sessional2W,int finalsW )
    {


            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");

            conn.Open();

            SqlCommand cm, cm2 , cm3 , cm4;

            int C_ID, S_ID, count;

            string selectedCourse = DropDownList1.SelectedValue;
            string selectedSection = DropDownList2.SelectedValue;

            string query1 = "SELECT SEC_ID FROM SECTION WHERE SECNAME = '" + selectedSection + "'";


            using (cm = new SqlCommand(query1, conn))
            {
                S_ID = Convert.ToInt32(cm.ExecuteScalar());
            }

            conn.Close();



            conn.Open();

            string query2 = "SELECT C_ID FROM COURSES WHERE CCODE = '" + selectedCourse + "'";

            using (cm2 = new SqlCommand(query2, conn))
            {
                C_ID = Convert.ToInt32(cm2.ExecuteScalar());
            }

            conn.Close();


            conn.Open();

            string query3 = "SELECT COUNT(MARK_ID) FROM MARKS_DISTRIBUTION";


            using (cm3 = new SqlCommand(query3, conn))
            {
                count = Convert.ToInt32(cm3.ExecuteScalar());
            }

            count++;

            conn.Close();


            conn.Open();

            string query4 = " INSERT INTO MARKS_DISTRIBUTION(MARK_ID, COURSE_ID, ASSIGNMENT, QUIZZES, SESSIONAL_1, SESSIONAL_2, FINAL_EXAM, SECTION_ID) VALUES (2,1,20,20,20,20,20,1)";


            using (cm4 = new SqlCommand(query4, conn))
            { 
                cm4.ExecuteNonQuery();
            }

            conn.Close();


            //string query3 = " INSERT INTO MARKS_DISTRIBUTION(MARK_ID, COURSE_ID, ASSIGNMENT, QUIZZES, SESSIONAL_1, SESSIONAL_2, FINAL_EXAM, SECTION_ID) VALUES " +
            //                    " ('" + count + "','" + C_ID + "','" + assignmentW + "','" + quizzeW + "' ,'" + sessional1W + "','" + sessional2W + "','" + finalsW + "', '" + S_ID + "')";

            
    }



}