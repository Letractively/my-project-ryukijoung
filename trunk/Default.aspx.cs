using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// 결제창으로... (다음)
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnNext_Click(object sender, EventArgs e)
    {
        //// 주문데이터를 세션에서 받아오기
        //OrderData od = Member.GetSession("OrderData") as OrderData;

        //// 주문내역 추가
        //Order(od);

        //// 상점주문번호
        //mb_serial_no.Value = od.OrderSeq.ToString();

        //// 세션에 주문데이터 다시 넣기
        //Member.SetSession("OrderData", od);

        // 결제 시작
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "fnStartPayment", "fnStartPayment();", true);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "fnStartPayment", "fnStartPayment();", true);
    }
}