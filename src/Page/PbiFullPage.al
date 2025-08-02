page 50003 FullPagePowerBI
{
    PageType = UserControlHost;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(Content)
        {
            usercontrol(WebPageViewer; WebPageViewer)
            {
                ApplicationArea = All;

                trigger ControlAddInReady(CallbackUrl: Text)
                begin
                    CurrPage.WebPageViewer.Navigate(HiperLinkText);
                end;

                trigger Refresh(CallbackUrl: Text)
                begin
                    CurrPage.WebPageViewer.Navigate(HiperLinkText);
                end;
            }
        }
    }

    var
        HiperLinkText: Label 'https://app.powerbi.com/view?r=eyJrIjoiMzlkNzFiMTAtM2QyNS00MjA0LWFkNmUtYjQ0YTk1NWZlMzg2IiwidCI6IjA5MTZlNjc3LTVjZmItNDdlYi1hYjYxLWM0ZTdiY2Y5ZTBiYyIsImMiOjF9';
}