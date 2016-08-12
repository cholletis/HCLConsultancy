using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using DALConsultancy;
using Consultancy.Model;

namespace Consultancy.UserControl
{
    public partial class UploadFile : System.Web.UI.UserControl
    {
        DALCompanyDetails _DALCompanyDetails = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //populateFileTypes();
                lblErrorMessage.Text = string.Empty;
            }
        }

        
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            _DALCompanyDetails = new DALCompanyDetails();
            if (FileUpload1.HasFile)
            {
                lblErrorMessage.Text = string.Empty;
                //string filePath = FileUpload.PostedFile.;
                string filename = (txtFileName.Text != "") ? txtFileName.Text : FileUpload1.FileName;

                //FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
                //BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = FileUpload1.FileBytes;
                _DALCompanyDetails.boolAttachFile(filename, "application/pdf", bytes, ModelObjects.screenID, ModelObjects.screenID_SelectedValue);
                //br.Close();
                //fs.Close();
            }
            else
            {
                lblErrorMessage.Text = "Select File to Upload";                
            }
        }
        //private void populateFileTypes()
        //{
        //    ddlFileType.DataSource = GetRoles.GetFileTypes();
        //    ddlFileType.DataTextField = "FileType";
        //    ddlFileType.DataValueField = "FileTypeid";
        //    ddlFileType.DataBind();           
        //}
    }
    
}