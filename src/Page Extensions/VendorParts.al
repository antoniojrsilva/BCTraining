pageextension 50002 VendorListExt extends "Vendor List"
{
    layout
    {
        addfirst(factboxes)
        {
            part(VendorName; "Power BI Embedded Report Part")
            {

                ApplicationArea = All;
                Caption = 'Location and ';
                SubPageView = where(Context = const('VendorName'));
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.VendorName.Page.SetCurrentListSelection(Rec."No.");
    end;
}