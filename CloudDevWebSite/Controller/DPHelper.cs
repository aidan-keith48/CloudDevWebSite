using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CloudDevWebSite.Controller
{
    public class DPHelper
    {
        string connectionString = "Data Source=AIDANKIETHPC\\MSSQLSERVER01;Initial Catalog=TheRentYouRide;Integrated Security=True";

        public void AlterDriverTable()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string Query = "ALTER TABLE YourTableName ADD YourColumnName YourColumnType";
                // Replace YourTableName with the actual name of the table you want to alter
                // Replace YourColumnName and YourColumnType with the new column details

                SqlCommand command = new SqlCommand(Query, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}