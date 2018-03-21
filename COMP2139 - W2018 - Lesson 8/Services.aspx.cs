using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2139___W2018___Lesson_8
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // store which row was clicked
            int selectedRow = e.RowIndex;

            // get the selected ServicesID using the Grid's DataKey collection
            int ServicesID = Convert.ToInt32(GridView1.DataKeys[selectedRow].Values["Id"]);

            // TODO Deletion
        }
    }
}