using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MenuItemBinding();
        }
    }

    private void MenuItemBinding()
    {
        conn.Open();
        string query = "Select CCODE from Courses inner join STUDENT_COURSES on STUDENT_COURSES.COURSE_ID = Courses.C_ID where STUDENT_COURSES.STUDENT_ID = (select U_ID from USERS where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc))";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        DataTable dttc = new DataTable();
        da.Fill(ds);
        dttc = ds.Tables[0];

        Menu1.Items.Clear(); // Clear existing items before adding new ones

        foreach (DataRow row in dttc.Rows)
        {
            Menu1.Items.Add(new MenuItem(row["CCODE"].ToString()));
        }

        conn.Close();
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        // Perform the necessary logic based on the selected menu item
        string selectedCourse = e.Item.Text;
        // ... Perform additional actions here
    }
}
