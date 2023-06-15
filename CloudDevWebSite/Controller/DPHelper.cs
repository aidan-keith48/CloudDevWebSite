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

        //Altering Driver table
        public void AlterDriverTableNOCHECK()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string Query = "ALTER TABLE Rental NOCHECK CONSTRAINT FK_driverIdentity;";
                // Replace YourTableName with the actual name of the table you want to alter
                // Replace YourColumnName and YourColumnType with the new column details

                SqlCommand command = new SqlCommand(Query, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        //Altering driver table
        public void AterDriverTableCHECK()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string Query = "ALTER TABLE Rental CHECK CONSTRAINT FK_driverIdentity;";
                // Replace YourTableName with the actual name of the table you want to alter
                // Replace YourColumnName and YourColumnType with the new column details

                SqlCommand command = new SqlCommand(Query, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        //Altering Car Details table
        public void AlterCarDetailsNOCHECK()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "ALTER TABLE Rental NOCHECK CONSTRAINT FK_carNo;";

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        //Altering Car Detials table
        public void AlterCarDetailsCHECK()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "ALTER TABLE Rental CHECK CONSTRAINT FK_carNo;";

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        //Altering inspector
        public void AlterInspectorDetailsNOCHECK()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string queryReturn = "ALTER TABLE rental_Return NOCHECK CONSTRAINT FK_inspectorForReturn;";
                string queryRental = "ALTER TABLE Rental NOCHECK CONSTRAINT FK_inspectorForRental;";

                SqlCommand command = new SqlCommand(queryReturn, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();

                SqlCommand sqlCommand = new SqlCommand(queryRental, connection);
                connection.Open();
                sqlCommand.ExecuteNonQuery();
                connection.Close();

            }

        }

        public void AlterInspectorDetailsCHECK()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string queryReturn = "ALTER TABLE rental_Return CHECK CONSTRAINT FK_inspectorForReturn;";
                string queryRental = "ALTER TABLE Rental CHECK CONSTRAINT FK_inspectorForRental;";

                SqlCommand command = new SqlCommand(queryReturn, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();

                SqlCommand sqlCommand = new SqlCommand(queryRental, connection);
                connection.Open();
                sqlCommand.ExecuteNonQuery();
                connection.Close();

            }

        }



        //Deleting driver from table
        public void driverDelete(string driverID)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string Query = "DELETE FROM Driver WHERE driverID = @DriverID;";
                // Replace YourTableName with the actual name of the table you want to alter
                // Replace YourColumnName and YourColumnType with the new column details

                SqlCommand command = new SqlCommand(Query, connection);
                command.Parameters.AddWithValue("@DriverID", driverID);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        //Deleting car from car details 
        public void carDelete(string carNo)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string Query = "DELETE FROM Car_Detail WHERE carNo = @CarNo";
                SqlCommand command = new SqlCommand(Query, connection);

                command.Parameters.AddWithValue("@CarNo", carNo);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        public void inspectorDelete(string inspectorNo)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string Query = "DELETE FROM Inspector WHERE inspector_No = @Inspector_No";
                SqlCommand command = new SqlCommand(Query, connection);

                command.Parameters.AddWithValue("@Inspector_No", inspectorNo);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}