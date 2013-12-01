using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace MAQNA.DAL.ViewClass
{
    public class AskList
    {
        public string AskSeq { get; set; }
        public string UsersSeq { get; set; }
        public string AskTitle { get; set; }
        public string AskCount { get; set; }
        public string UserNickName { get; set; }

        public static List<AskList> ConvertList(DataSet ds)
        {
            List<AskList> list = new List<AskList>();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                AskList data = new AskList();
                data.AskSeq = row["AskSeq"].ToString();
                data.UsersSeq = row["UsersSeq"].ToString();
                data.AskTitle = row["AskTitle"].ToString();
                data.AskCount = row["AskCount"].ToString();
                data.UserNickName = row["UserNickName"].ToString();
                list.Add(data);
            }

            return list;
        }
    }
}
