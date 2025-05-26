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
        string query = " SELECT DISTINCT B.BNAME FROM USERS U INNER JOIN STUDENT S ON S.S_ID = U.U_ID INNER JOIN BATCH B ON B.B_ID = S.SBATCH WHERE U.EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc)";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        DataTable dttc = new DataTable();
        da.Fill(ds);
        dttc = ds.Tables[0];

        Menu1.Items.Clear(); // Clear existing items before adding new ones

        foreach (DataRow row in dttc.Rows)
        {
            Menu1.Items.Add(new MenuItem(row["BNAME"].ToString()));
        }

        conn.Close();
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

        string selectedCourse = e.Item.Text;

        GridView gridView = new GridView();
        gridView.ID = "dynamicGridView"; // Set a unique ID for the grid

        // Set the properties of the grid as desired
        gridView.AutoGenerateColumns = true;
        gridView.DataSource = GetGridData(selectedCourse); // Replace this with your actual data source
        gridView.DataBind();

        // Add the grid to the content div
        cont3.Controls.Add(gridView);
        gridView.CssClass = "grid2";
    }

    private DataTable GetGridData(string sName)
    {
        DataTable dataTable = new DataTable();



        string connectionString = "Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {


            string query2 = "SELECT C.CCODE, C.CNAME, SEC.SECNAME, C.CREDITS, G.GRADE, G.GPOINTS, C.CTYPE " +
                            "FROM USERS U INNER JOIN STUDENT S ON S.S_ID = U.U_ID INNER JOIN STUDENT_COURSES " +
                            "SC ON SC.STUDENT_ID = S.S_ID INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID INNER JOIN" +
                            " GRADES G ON G.G_ID = SC.GRADE_ID INNER JOIN SECTION SEC ON SEC.COURSE_ID = C.C_ID INNER JOIN" +
                            " SEMESTER SEM on SEM.SEM_ID = C.SEMESTER_ID WHERE U.EMAIL = (select top 1 email from loggedInSucessfully" +
                            " order by loggedTime desc) AND SEM.SNAME = '" + sName + "'";

            using (SqlCommand command = new SqlCommand(query2, connection))
            {
                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {

                    dataTable.Columns.Add("CCODE");
                    dataTable.Columns.Add("CNAME");
                    dataTable.Columns.Add("SECNAME");
                    dataTable.Columns.Add("CREDITS");
                    dataTable.Columns.Add("GRADE");
                    dataTable.Columns.Add("GPOINTS");
                    dataTable.Columns.Add("CTYPE");




                    while (reader.Read())
                    {
                        DataRow row = dataTable.NewRow();
                        row["CCODE"] = reader["CCODE"];
                        row["CNAME"] = reader["CNAME"];
                        row["SECNAME"] = reader["SECNAME"];
                        row["CREDITS"] = reader["CREDITS"];
                        row["GRADE"] = reader["GRADE"];
                        row["GPOINTS"] = reader["GPOINTS"];
                        row["CTYPE"] = reader["CTYPE"];



                        dataTable.Rows.Add(row);
                    }
                }
            }
        }

        return dataTable;
    }


}
