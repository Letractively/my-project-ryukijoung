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
        public string AskRegDate { get; set; }
        public string AnswerCount { get; set; }
        public string GoodAskCount { get; set; }
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
                data.AnswerCount = row["AnswerCount"].ToString();
                data.GoodAskCount = row["GoodAskCount"].ToString();
                data.AskRegDate = row["AskRegDate"].ToString();
                data.UserNickName = row["UserNickName"].ToString();
                list.Add(data);
            }

            return list;
        }
    }

    public class AskDetail
    {
        public string AskSeq { get; set; }
        public string AskTitle { get; set; }
        public string AskDoc { get; set; }
        public string AskCount { get; set; }
        public string UsersSeq { get; set; }
        public string UserNickName { get; set; }
        public List<AnswerList> Answers { get; set; }

        public static List<AskDetail> ConvertList(DataSet ds)
        {
            List<AskDetail> list = new List<AskDetail>();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                AskDetail data = new AskDetail();
                data.AskSeq = row["AskSeq"].ToString();
                data.UsersSeq = row["UsersSeq"].ToString();
                data.AskTitle = row["AskTitle"].ToString();
                data.AskDoc = row["AskDoc"].ToString();
                data.AskCount = row["AskCount"].ToString();
                data.UserNickName = row["UserNickName"].ToString();
                data.Answers = new List<AnswerList>();
                foreach (DataRow row1 in ds.Tables[1].Rows)
                {
                    AnswerList data1 = new AnswerList();
                    data1.AnswerSeq = row1["AnswerSeq"].ToString();
                    data1.Answer = row1["Answer"].ToString();
                    data1.UsersSeq = row1["UsersSeq"].ToString();
                    data1.UserNickName = row1["UserNickName"].ToString();
                    data1.GoodAnswerCount = row1["GoodAnswerCount"].ToString();
                    data.Answers.Add(data1);
                }

                list.Add(data);
            }

            return list;
        }

        public class AnswerList
        {
            public string AnswerSeq { get; set; }
            public string Answer { get; set; }
            public string UsersSeq { get; set; }
            public string UserNickName { get; set; }
            public string GoodAnswerCount { get; set; }
        }
    }

    public class RegAskDetail
    {
        public string AskSeq { get; set; }
        public string AskTitle { get; set; }
        public string AskDoc { get; set; }
        public string AskCount { get; set; }
        public string UsersSeq { get; set; }
        public string UserNickName { get; set; }

        public static List<RegAskDetail> ConvertList(DataSet ds)
        {
            List<RegAskDetail> list = new List<RegAskDetail>();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                RegAskDetail data = new RegAskDetail();
                data.AskSeq = row["AskSeq"].ToString();
                data.UsersSeq = row["UsersSeq"].ToString();
                data.AskTitle = row["AskTitle"].ToString();
                data.AskDoc = row["AskDoc"].ToString();
                data.AskCount = row["AskCount"].ToString();
                data.UserNickName = row["UserNickName"].ToString();
                list.Add(data);
            }

            return list;
        }
    }
}
