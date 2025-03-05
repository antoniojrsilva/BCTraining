page 50101 "Project Cost Data API"
{
    PageType = API;
    APIVersion = 'v2.0';
    EntityName = 'ProjectCost';
    EntitySetName = 'ProjectCosts';
    SourceTable = "Job Planning Line";
    APIPublisher = 'Antonio';
    APIGroup = 'Projects';
    DelayedInsert = true;
    SourceTableView = sorting("Job No.") where(Type = const(Resource));

    layout
    {
        area(Content)
        {
            group(ProjectInfo)
            {
                field(JobNo; Rec."Job No.")
                {
                }
                field(Type; Rec.Type)
                {
                }
                field(PlannedDeliveryDate; Rec."Planned Delivery Date")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field(UnitCost; Rec."Unit Cost")
                {
                }
                field(TotalCost; Rec."Total Cost")
                {
                }
            }
        }
    }
}