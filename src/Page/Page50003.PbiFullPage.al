page 50003 PbiFullPage_Simple
{
    PageType = UserControlHost;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Power BI Financial Overview';

    layout
    {
        area(Content)
        {
            usercontrol(WebPageViewer; WebPageViewer)
            {
                ApplicationArea = All;

                trigger ControlAddInReady(callBackUrl: Text)
                begin
                    CurrPage.WebPageViewer.Navigate(HiperlinkTxt);
                end;

                trigger Refresh(CallbackUrl: Text)
                begin
                    CurrPage.WebPageViewer.Navigate(HiperlinkTxt);
                end;
            }
        }
    }

    var
        HiperlinkTxt: Label 'https://app.powerbi.com/view?r=eyJrIjoiMmVhMDcyNTMtMTA5Zi00MjczLWI4ZTQtMzhmZjBhYzQ0NWM2IiwidCI6IjA5MTZlNjc3LTVjZmItNDdlYi1hYjYxLWM0ZTdiY2Y5ZTBiYyIsImMiOjF9', Locked = true;
}