using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using COMP2139___W2018___Lesson_8.Models;

namespace COMP2139___W2018___Lesson_8
{
    public partial class Contact : System.Web.UI.Page
    {
        // declare UserModel object
        private UserModel _userModel;


        protected void Page_Load(object sender, EventArgs e)
        {
            // instantiates new object of type UserModel
            this._userModel = new UserModel();

            //MessageArea.Visible = false;

            /*
            if(IsPostBack)
            {
                Debug.WriteLine("PostBack");
                if((!NameFieldValidator.IsValid) || (!ContactFieldValidator.IsValid) || (!EmailFieldValidator.IsValid))
                {
                    MessageArea.Visible = true;
                }
                else
                {
                    MessageArea.Visible = false;
                }
            }
            */

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            this._userModel.Name = Name.Value;
            this._userModel.ContactNumber = ContactNumber.Value;
            this._userModel.Email = Email.Value;
            this._userModel.Message = Message.Value;

            Name.Value = "";
            ContactNumber.Value = "";
            Email.Value = "";
            Message.Value = "";

            Name.Focus();
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Name.Value = "";
            ContactNumber.Value = "";
            Email.Value = "";
            Message.Value = "";

            Name.Focus();
        }
    }
}