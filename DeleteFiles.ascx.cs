using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Consultancy.Model;
using System.Data;
using DALConsultancy;

namespace Consultancy.UserControl
{
    public partial class DeleteFiles : System.Web.UI.UserControl
    {
        DALCompanyDetails _DALCompanyDetails = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                //DisplayFiles(ModelObjects.screenID,ModelObjects.screenID_SelectedValue);
            //}
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            DisplayFiles(ModelObjects.screenID, ModelObjects.screenID_SelectedValue);
        }

        protected void btDeleteFiles_Click(object sender, EventArgs e)
        {
            
        }
        private void DisplayFiles(int PageID,int PageSelectedvalue)
        {
            _DALCompanyDetails = new DALCompanyDetails();
            DataTable dt = _DALCompanyDetails.GetAttachedFileList(1, PageSelectedvalue);
            
            GridViewFileList.DataSource = dt;
            GridViewFileList.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DisplayFiles(ModelObjects.screenID, ModelObjects.screenID_SelectedValue);
        }
    }
}