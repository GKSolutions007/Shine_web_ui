using Newtonsoft.Json;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Xml.Linq;
using System.Configuration;

namespace ShineWeb.Controllers
{
    public class MapRoleController : Controller
    {
        clsBusinessLayer BL = new clsBusinessLayer();
        Dictionary<string, string> dictionary = new Dictionary<string, string>();
        MapRoleModel MUModel = new MapRoleModel();
        public ActionResult Index()
        {
            //Name = clsEncryptDecrypt.Decrypt(Name);
            //string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int RID = Convert.ToInt32(Session["RoleID"]);
                //MUModel.UserName = BL.GetFilteredItemsFromDictionary(GetComboBoxData(RID));
                //string sdfsf = GetTreeData("2", "2");
                return View(MUModel);
            }
        }
        public Dictionary<string, string> GetComboBoxData(int RoleID)
        {
            dictionary = new Dictionary<string, string>();
            DataTable dtComboBoxData = BL.BL_ExecuteParamSP("uspManageUsers", 7, RoleID); //objBL.BL_ExecuteSqlQuery("SELECT userid,username FROM tblManageUsers WHERE Active = 1 ORDER BY username");
            dictionary.Add("0", "-- Select Role --");
            if (dtComboBoxData.Rows.Count > 0)
            {
                foreach (DataRow iRow in dtComboBoxData.Rows)
                {
                    dictionary.Add(iRow[0].ToString(), iRow[1].ToString());
                }
            }
            return dictionary;
        }
        public string GetTreeData(string RoleID, string UID)
        {
            if (!string.IsNullOrEmpty(RoleID.Trim()))
            {
                //DataTable dtCheckNameExists = (DataTable)Session["tempUserName"];
                //DataRow[] dr = dtCheckNameExists.Select("UserName = '" + strRoleName.Trim() + "'");
                //if (dr.Count() > 0)
                //{
                DataTable dt = BL.BL_ExecuteParamSP("uspGetMapRoleMenus", RoleID.Trim(), UID);
                if (dt.Rows.Count > 0)
                {
                    MapRoleModel root = new MapRoleModel { id = "MapRole", children = { }, state = new clsState() { selected = false }, text = "Map Role" };
                    DataView view = new DataView(dt);
                    view.RowFilter = "MenuParentId=0";
                    view.Sort = "MenuId";
                    foreach (DataRowView kvp in view)
                    {
                        string parentId = kvp["MenuId"].ToString();
                        MapRoleModel node = new MapRoleModel { id = kvp["MenuId"].ToString(), state = new clsState() { selected = false }, text = kvp["MenuName"].ToString() };
                        root.children.Add(node);
                        AddChildItems(dt, node, parentId);
                    }
                    return (new JavaScriptSerializer().Serialize(root));
                }
                //}
            }
            return (new JavaScriptSerializer().Serialize(null));
        }

        private void AddChildItems(DataTable dt, MapRoleModel parentNode, string ParentId)
        {
            DataView viewItem = new DataView(dt);
            viewItem.RowFilter = "MenuParentId=" + ParentId;
            foreach (DataRowView childView in viewItem)
            {
                DataView viewItemChecking = new DataView(dt);
                viewItemChecking.RowFilter = "MenuParentId=" + childView["MenuId"].ToString();
                bool IsTrue = (viewItemChecking.Count > 0 ? false : Convert.ToBoolean(Convert.ToInt32(childView["Permission"])));

                MapRoleModel node = new MapRoleModel { id = childView["MenuId"].ToString(), state = new clsState() { selected = IsTrue }, text = childView["MenuName"].ToString() };
                parentNode.children.Add(node);
                string pId = childView["MenuId"].ToString();
                AddChildChildItems(dt, node, pId);
            }
        }

        private void AddChildChildItems(DataTable dt, MapRoleModel parentNode, string ParentId)
        {
            DataView viewItem = new DataView(dt);
            viewItem.RowFilter = "MenuParentId=" + ParentId;
            foreach (DataRowView childChildView in viewItem)
            {
                MapRoleModel node = new MapRoleModel { id = childChildView["MenuId"].ToString(), state = new clsState() { selected = Convert.ToBoolean(Convert.ToInt32(childChildView["Permission"])) }, text = childChildView["MenuName"].ToString() };
                parentNode.children.Add(node);
            }
        }
        [HttpPost]
        public JsonResult SaveMapUserDetails(List<checkedIDs> checked_ids, string RoleName, string UID)
        {
            string strMsg = "";
            try
            {
                int UserID = Convert.ToInt32(UID);
                if (!string.IsNullOrEmpty(RoleName))
                {
                    if (checked_ids != null)
                    {
                        int Index = 1;
                        if (checked_ids.Count > 0)
                        {
                            foreach (checkedIDs chkIDs in checked_ids)
                            {
                                //if (chkIDs.IDs > 0)
                                {
                                    BL.BL_ExecuteParamSP("uspUpdateMapRoleMenus", 1, RoleName, UserID, chkIDs.IDs, Index);
                                    Index++;
                                }
                            }
                            strMsg = "Saved Successfully";
                        }
                    }
                    else
                    {
                        BL.BL_ExecuteParamSP("uspUpdateMapRoleMenus", 2, RoleName, UserID, null, 1);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Json(strMsg, JsonRequestBehavior.AllowGet);
        }
    }
}