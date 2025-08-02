pageextension 50001 VendorListExt extends "Vendor List"
{
    layout
    {
        addfirst(factboxes)
        {

            part(Location; "Power BI Embedded Report Part")
            {
                ApplicationArea = All;
                SubPageView = where(Context = const('Location'));
            }
            part(VendorName; "Power BI Embedded Report Part")
            {
                ApplicationArea = All;
                SubPageView = where(Context = const('VendorName'));
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.VendorName.Page.SetCurrentListSelection(Rec."No.");
        CurrPage.Location.Page.SetCurrentListSelection(Rec."No.");
    end;
}