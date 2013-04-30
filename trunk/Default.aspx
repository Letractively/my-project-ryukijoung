<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="ko">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Cache-Control" content="no-cache"/> 
    <meta http-equiv="Expires" content="0"/> 
    <meta http-equiv="Pragma" content="no-cache"/>
    <script type="text/javascript" src="https://api.paygate.net/ajax/common/OpenPayAPI.js"></script>
    <script type="text/javascript" src="/script/script.js"></script>
    <script type="text/javascript">
        window.history.forward(0);




        window.onload = function () {
            fnFrameHeight();
            parent.fnStep('03');
        }

        function fnFrameHeight() {
            var obj = document.getElementById('frame_layout');
            parent.fnFrameHeight(obj.offsetHeight);
        }

        function fnPayGatePopupShow() {
            document.getElementById('divPayGateBG').style.display = 'block';
            document.getElementById('divPayGateSC').style.display = 'block';
        }

        function fnPayGatePopupHide() {
            document.getElementById('divPayGateBG').style.display = 'none';
            document.getElementById('divPayGateSC').style.display = 'none';
        }

        function fnCheckPayment() {
            var paymethod = document.getElementById('paymethod').value;
            if (paymethod == '') {
                alert('決済方法を選択してください。');
                return;
            }

            // 카드
            if (paymethod == '100') {
                //                var cardnumber = document.getElementById('cardnumber').value;
                //                if (cardnumber == '') 
                //                {
                //                    alert('カード番号を入力してください。');
                //                    return;
                //                }
            }
                // 입금
            else if (paymethod == '7') {
                var bankaccount = document.getElementById('bankaccount').value;
                if (bankaccount == '') {
                    alert('銀行を選択してください。');
                    return;
                }

                var bankexpyear = document.getElementById('bankexpyear').value;
                var bankexpmonth = document.getElementById('bankexpmonth').value;
                var bankexpday = document.getElementById('bankexpday').value;
                if (bankexpyear == '' || bankexpmonth == '' || bankexpday == '') {
                    alert('入金予定日を入力してください。');
                    return;
                }
            }

            <%=ClientScript.GetPostBackEventReference(btnNext, "")%>;
        }

        // 결제 시작
        function fnStartPayment() {
            //fnPayTest();
            //return;




            // 결제 설명
            document.getElementById('pay_msg_').style.display = 'none';
            var paymethod = document.getElementById('paymethod');
            var pay_msg = document.getElementById('pay_msg_' + paymethod.value);
            if (pay_msg != null) {
                pay_msg.style.display = 'block';
            }

            fnPayGatePopupShow();

            document.forms[0].name = 'PGIOForm';
            doTransaction(document.PGIOForm);
        }

        // 결제 완료
        function getPGIOresult() {
            document.forms[0].name = 'PGIOForm';
            verifyReceived(getPGIOElement('tid'), 'callbackSuccess', 'callbackFail');
        }

        // 결제 성공
        function callbackSuccess() {
            var replycode = getPGIOElement('replycode');
            var replyMsg = getPGIOElement('replyMsg');
            //var hashresult = getPGIOElement('hashresult')  // 거래결과hash 된 값
            if (replycode == '0000') {
                // 거래성공 경우 for transaction success
                document.PGIOForm.action = 'order_step04.aspx';
                document.PGIOForm.submit();
            }
            else {
                // 거래실패 경우 for transaction failuer
                alert('決済失敗 : ' + replyMsg + ' (' + replycode + ')');
                fnPayGatePopupHide();
            }
        }

        // 결제 실패
        function callbackFail() {
            // paygate system error
            alert("決済失敗 : paygate system error");
            fnPayGatePopupHide();
        }

        function fnPayMethodChecked(payMethod) {
            var paymethod = document.getElementById('paymethod');

            // 기존 결제 설명 숨기기
            var pay_msg = document.getElementById('pay_msg_' + paymethod.value);;
            if (pay_msg != null) {
                pay_msg.style.display = 'none';
            }

            // 변경된 결제방법 저장
            paymethod.value = payMethod;

            // 변경된 결제 설명 보이기
            var pay_msg = document.getElementById('pay_msg_' + paymethod.value);;
            if (pay_msg != null) {
                pay_msg.style.display = 'block';
            }

            // 창 사이즈 조절 스크립트 실행
            fnFrameHeight();
        }

        function fnPayTest() {
            document.getElementById('replycode').value = '0000';
            document.forms[0].name = 'PGIOForm';
            document.PGIOForm.action = 'order_step04.aspx';
            document.PGIOForm.submit();
        }
    </script>
    <link href="/style/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        html { height:100%; }
        body { background-color:#ffffff; height:100%; }
        
        .total_price { background-color:#ededed; border-top:solid 1px #e8e8e8; border-bottom:solid 1px #e8e8e8; font-size:14px; font-weight:bold; padding:13px 15px 10px 0px; text-align:right; }
        .total_price subject { color:#d94242; }
        
        .paymethod { cursor:pointer; }
        .paymethod input { padding-right:5px; padding-top:3px; }
        .paymethod label { color:#000000; }
        
        .modalPayGate { position:absolute; top:150px; left:330px; background-color:#ffffff; padding:15px; display:none; }
    </style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
    
    <div id="divPayGateBG" class="modalBackgroundWhite7" style="display:none; width:980px; height:1000px; position:absolute; top:0px; left:0px;"></div>
    <div id="divPayGateSC" class="modalPayGate"><div id="PGIOscreen"></div></div>
    <form id="PGIOForm" runat="server">
    <div id="frame_layout" style="">
                <div style="padding-bottom:15px;"><img src="/images/order/txt_class_list.png" /></div>

                <div style="padding:30px 0px 15px 0px;"><img src="/images/order/txt_class_price.png" /></div>
                <div class="total_price">
                    <subject>価　格 :</subject> <asp:Literal ID="litTotalPrice" runat="server" />円（税込）
                </div>

                <div style="padding:20px 0px 15px 0px;"><img src="/images/order/txt_pay_method.png" /></div>
                <table border="0" cellpadding="0" cellspacing="0" class="board_table">
                    <colgroup>
                        <col style="width:187px;" />
                        <col style="width:792px;" />
                    </colgroup>
                    <tr>
                        <th>決済方法選択</th>
                        <td>
                            <asp:RadioButton ID="radCard"  runat="server" onclick="fnPayMethodChecked('100');" GroupName="PayMethod1" CssClass="paymethod" Text="クレジットカード"></asp:RadioButton>&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="radVBank" runat="server" onclick="fnPayMethodChecked('7');"   GroupName="PayMethod1" CssClass="paymethod" Text="振込み"></asp:RadioButton>&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <th>決済情報</th>
                        <td>
                            <asp:Panel ID="pay_msg_" runat="server" style="color:#626262; display:block;">
                                決済方法を選択してください.
                            </asp:Panel>
                            <asp:Panel ID="pay_msg_100" runat="server" style="color:#626262; display:none;">
                                <div style="color:#ca6161; padding-bottom:15px;">カード番号及び有效期間は決済進行段階で入力すれば良いです.</div>

                                <span style="font-weight:bold;">決済可能カード</span><br />
                                VISA, Master, JCB, Amex 及び左のカード会社の提携カード
                            </asp:Panel>
                            <asp:Panel ID="pay_msg_7" runat="server" style="color:#626262; display:none;">
                                <table border="0" cellpadding="0" cellspacing="0" class="board_table">
                                    <tr>
                                        <th>銀行選択</th>
                                        <td>
                                            <asp:DropDownList ID="bankaccount" runat="server">
                                                <asp:ListItem Value="" Text="銀行選択 ---------------" />
                                                <asp:ListItem Value="JPPOST861" Text="JAPAN POST BANK ゆうちょ銀行 10220 92618861" />
                                                <asp:ListItem Value="UFJ096"    Text="Bank of Tokyo-Mitsubishi UFJ 三菱東京UFJ銀行 橫浜西口支店 6796096" />
                                                <asp:ListItem Value="MIZUHO587" Text="MIZUHO BANK みずほ銀行 橫浜驛前支店 2216587" />
                                                <asp:ListItem Value="SMBC742"   Text="Sumitomo Mitsui Bank 三井住友銀行 橫浜驛前支店 8656742" />
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>入金予定日</th>
                                        <td>
                                            <asp:TextBox ID="bankexpyear"  runat="server" Width="50" MaxLength="4" CssClass="input" style="ime-mode:disabled;" onkeypress="fnInputNumCheck(event);" /> 年
                                            <asp:TextBox ID="bankexpmonth" runat="server" Width="30" MaxLength="2" CssClass="input" style="ime-mode:disabled;" onkeypress="fnInputNumCheck(event);" /> 月
                                            <asp:TextBox ID="bankexpday"   runat="server" Width="30" MaxLength="2" CssClass="input" style="ime-mode:disabled;" onkeypress="fnInputNumCheck(event);" /> 日
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>送金者</th>
                                        <td>
                                            <asp:TextBox ID="banksendername"  runat="server" Width="120" MaxLength="25" CssClass="input" />
                                        </td>
                                    </tr>
                                </table>
                                <div style="padding-top:15px;">
                                    クレジットカード決済の場合は決済後すぐに講座利用が可能ですが振込みの場合は入金内容が確認された後に講座利用が可能です。<br />
                                    <span style="color:#ca6161;">(３日以内に入金が確認されなければ決済内容が取消しになります。)</span><br />
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>

                <div style="padding-top:40px; text-align:center; font-size:0px;">
                    <img src="/images/common/btn_next.png" onclick="fnCheckPayment();" style="cursor:pointer;" />
                    <img src="/images/common/btn_cancel.png" style="cursor:pointer; padding-left:20px;" onclick="parent.fnGoMenu('/');" />

                    <div style="display:none;">

                        <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="결제정보설정"/>
                    </div>
                </div>

                <!-- 상품관련 -->
                <input type="hidden" id="goodname"       name="goodname"       runat="server" value="" />
                <input type="hidden" id="unitprice"      name="unitprice"      runat="server" value="" />
                <input type="hidden" id="receipttoname"  name="receipttoname"  runat="server" value="" />
                <input type="hidden" id="receipttoemail" name="receipttoemail" runat="server" value="">
                <input type="hidden" id="receipttotel"   name="receipttotel"   runat="server" value="">
                <input type="hidden" id="mb_serial_no"   name="mb_serial_no"   runat="server" value=""> <!-- 상점주문번호 -->

                <!-- 상점공통 -->
                <input type="hidden" id="mid"          name="mid" runat="server" value="">
                <input type="hidden" id="langcode"     name="langcode" value="JP">
                <input type="hidden" id="goodcurrency" name="goodcurrency" value="JPY">
                <input type="hidden" id="paymethod"    name="paymethod" runat="server" value="">
                <input type="hidden" id="charset"      name="charset" value="UTF-8">

                <!-- 신용카드 paymethod : 100 -->
                <input type="hidden" id="cardquota"        name="cardquota" value="00" />
                <input type="hidden" id="cardsecretnumber" name="cardsecretnumber" />
                <input type="hidden" id="cardownernumber"  name="cardownernumber" />
                <input type="hidden" id="cardauthcode"     name="cardauthcode" /> <!-- 카드승인번호 -->

                <!-- 계좌이체 paymethod : 7 -->
                <input type="hidden" id="bankcode"     name="bankcode" value="PG">

                <!-- 결제결과 -->
                <input type="hidden" id="tid"        name="tid" value="">
                <input type="hidden" id="replycode"  name="replycode" value="" />
                <input type="hidden" id="replyMsg"   name="replyMsg" value="" />
                <input type="hidden" id="hashresult" name="hashresult" value="" />

    </div>
    </form>
</body>
</html>
