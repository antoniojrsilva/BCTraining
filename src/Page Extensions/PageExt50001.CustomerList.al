// pageextension 50001 CustomerListExt extends "Customer List"
// {
//     layout
//     {
//         addfirst(factboxes)
//         {
//             part(PowerBIReportPart1; "Power BI Embedded Report Part")
//             {
//                 ApplicationArea = All;
//                 Caption = 'Power BI Reports';
//                 SubPageView = where(Context = const('CustomerReportsPart1'));
//             }
//             part(PowerBIReportPart2; "Power BI Embedded Report Part")
//             {
//                 ApplicationArea = All;
//                 Caption = 'Power BI Reports';
//                 SubPageView = where(Context = const('CustomerReportsPart2'));
//             }
//         }
//     }

//     trigger OnAfterGetCurrRecord()
//     begin
//         CurrPage.PowerBIReportPart1.Page.SetCurrentListSelection(Rec."No.");
//         CurrPage.PowerBIReportPart2.Page.SetCurrentListSelection(Rec."No.");
//     end;

// }