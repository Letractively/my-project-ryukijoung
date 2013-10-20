using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace MAQNA.DAL
{
    /// <summary>
    /// Json 반환 형식을 정의하는 클래스 입니다.
    /// </summary>
    public class JsonResponse
    {
        /// <summary>
        /// 성공유무
        /// </summary>
        private bool _IsSucess = false;
        public bool IsSucess
        {
            get { return _IsSucess; }
            set { _IsSucess = value; }
        }

        /// <summary>
        /// 에러 메세지
        /// </summary>
        private string _Message = string.Empty;
        public string Message
        {
            get { return _Message; }
            set { _Message = value; }
        }

        /// <summary>
        /// 반환 데이터
        /// </summary>
        private Object _ResponseData = null;
        public Object ResponseData
        {
            get { return _ResponseData; }
            set { _ResponseData = value; }
        }
    }
}