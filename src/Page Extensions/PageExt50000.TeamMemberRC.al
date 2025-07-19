pageextension 50000 TeamMemberRoleCenter extends "Team Member Role Center"
{
    layout
    {
        addfirst(rolecenter)
        {
            part(PowerBIReportPart1; "Power BI Embedded Report Part")
            {
                ApplicationArea = All;
                Caption = 'Power BI Reports';
                SubPageView = where(Context = const('TeamMemberReportsPart1'));
            }
            part(PowerBIReportPart2; "Power BI Embedded Report Part")
            {
                ApplicationArea = All;
                Caption = 'Power BI Reports';
                SubPageView = where(Context = const('TeamMemberReportsPart2'));
            }
        }
    }
}