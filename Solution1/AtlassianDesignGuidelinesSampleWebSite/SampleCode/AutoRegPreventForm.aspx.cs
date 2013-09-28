using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AutoRegPrevent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//맨처음 실행된다면..
        {
            save();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtPwdWord.Text == ViewState["Str"].ToString())
        {
            Label1.Text = "잘썼군요";
            save();
        }
        else
            Label1.Text = "잘못썼군요_-_;";
    }

    private void save()
    {
        //임의의 글자를 난수로 발생시켜 PrintStr에 집어넣기
        string[] RandomStr = new string[] { "자동", "가입", "프로", "그램", "쓰지", "말자" };
        Random r = new Random();
        string PrintStr = RandomStr[r.Next(6)];

        //랜덤으로 그리는 글씨를 ViewState에 저장한다.(나중에 검사할때 사용)
        ViewState["Str"] = PrintStr;

        //비트맵객체를 생성하고 이 객체를 Graphics객체에서 생성한다.
        Bitmap btm = new Bitmap(100, 80);
        Graphics grp = Graphics.FromImage(btm);
        //회색바탕의 사각형을 만들기
        SolidBrush backBrush = new SolidBrush(Color.DarkGray);
        Rectangle rect = new Rectangle(0, 0, 100, 80);//100,80의 사이즈
        grp.FillRectangle(backBrush, rect);//뒷 배경과 사각형 객체를 전달한다.
        //빨간색 글씨를 써서 집어넣는다.
        Font font = new Font("굴림", 20);
        SolidBrush strinBrush = new SolidBrush(Color.Red);
        grp.DrawString(PrintStr, font, strinBrush, 20, 20);
        //이제 만들어진 객체를 저장 시키자.
        string pathStr = MapPath(Request.ApplicationPath) + @"\img\Background.png";
        btm.Save(pathStr, ImageFormat.Png);
    }
}