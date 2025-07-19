page 50001 "My First Prompt Dialog"
{
    PageType = PromptDialog;
    PromptMode = Prompt;
    Caption = 'My First Prompt Dialog';
    Extensible = false;
    IsPreview = true;
    ApplicationArea = All;

    layout
    {
        area(Prompt)
        {
            field(InpuText; InpuText)
            {
                ShowCaption = false;
                MultiLine = true;
            }
        }
        area(PromptOptions)
        {
            field(Tone; Tone)
            {
                ApplicationArea = All;
            }
            field(Emphasis; Emphasis)
            {
                ApplicationArea = All;
            }
            field(TextFormat; TextFormat)
            {
                ApplicationArea = All;
            }
        }
        area(Content)
        {
            field(OutputText; OutputText)
            {
                ShowCaption = false;
                MultiLine = true;
            }
        }
    }
    actions
    {
        area(SystemActions)
        {
            systemaction(Attach)
            {
                Caption = 'Attach';
                ToolTip = 'Attach the project';
                trigger OnAction()
                begin
                    AttachWithAI();
                end;
            }
            systemaction(Generate)
            {
                Caption = 'Generate';
                ToolTip = 'Generate the project';
                trigger OnAction()
                begin
                    GenerateWithAI();
                end;
            }
            systemaction(Regenerate)
            {
                Caption = 'Regenerate';
                ToolTip = 'Regenerate the project';
                trigger OnAction()
                begin
                    RegenerateWithAI();
                end;
            }
        }
    }

    local procedure GenerateWithAI()
    begin

    end;

    local procedure AttachWithAI()
    begin

    end;

    local procedure RegenerateWithAI()
    begin

    end;

    var
        InpuText: Text;
        OutputText: Text;
        Tone: Enum "Entity Text Tone";
        Emphasis: Enum "Entity Text Emphasis";
        TextFormat: Enum "Entity Text Format";
}