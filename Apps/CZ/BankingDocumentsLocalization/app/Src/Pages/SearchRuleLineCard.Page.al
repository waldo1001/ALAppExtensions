page 31243 "Search Rule Line Card CZB"
{
    AutoSplitKey = true;
    Caption = 'Search Rule Line Card';
    Editable = false;
    PageType = Card;
    SourceTable = "Search Rule Line CZB";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Search Rule Code"; Rec."Search Rule Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the search rule.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the line number of the rule.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the description line of the rule.';
                    MultiLine = true;
                }
                field("Banking Transaction Type"; Rec."Banking Transaction Type")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Defines restrictions on the type of bank transaction. Values can be + (credit), - (debit), or both (no resolution).';
                }
                field("Search Scope"; Rec."Search Scope")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies which logical part of a row is valid for finding an entry to match.';
                }
            }
            group(SearchPart)
            {
                Caption = 'Search Part';
                Visible = SearchPartVisible;
                field("Bank Account No."; Rec."Bank Account No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether to consider a bank account number for automatically applying a payment to an open record.';
                }
                field("Variable Symbol"; Rec."Variable Symbol")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether to consider a variable symbol to automatically apply a payment to an open record.';
                }
                field("Constant Symbol"; Rec."Constant Symbol")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether to consider a constant symbol to automatically apply a payment to an open record.';
                }
                field("Specific Symbol"; Rec."Specific Symbol")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether to consider a specific symbol to automatically apply a payment to an open record.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether to consider the amount (including payment tolerance) for automatically applying a payment to an open record.';
                }
                field("Multiple Result"; Rec."Multiple Result")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'In the case of multiple search results, determines which record to select for automatic payment applying.';
                }
            }
            group(FilterPart)
            {
                Caption = 'Filter Part';
                Visible = FilterPartVisible;
                field("Description Filter"; Rec."Description Filter")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the transaction description filter from the bank statement. If the system finds a match in the bank statement line based on the specified filters, then the account type and account number from the rule line are entered in the financial journal line.';
                }
                field("Variable Symbol Filter"; Rec."Variable Symbol Filter")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the transaction variable symbol filter from the bank statement. If the system finds a match in the bank statement line based on the specified filters, then the account type and account number from the rule line are entered in the financial journal line.';
                }
                field("Constant Symbol Filter"; Rec."Constant Symbol Filter")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the transaction constant symbol filter from the bank statement. If the system finds a match in the bank statement line based on the specified filters, then the account type and account number from the rule line are entered in the financial journal line.';
                }
                field("Specific Symbol Filter"; Rec."Specific Symbol Filter")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the transaction specific symbol filter from the bank statement. If the system finds a match in the bank statement line based on the specified filters, then the account type and account number from the rule line are entered in the financial journal line.';
                }
                field("Account Type"; Rec."Account Type")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the type of account to be entered in the financial journal line if the bank statement line matches the specified filters.';
                }
                field("Account No."; Rec."Account No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the account number to be entered in the financial journal line if the bank statement line matches the specified filters.';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.SetRecFilter();
        FilterPartVisible := Rec."Search Scope" = Rec."Search Scope"::"Account Mapping";
        SearchPartVisible := Rec."Search Scope" <> Rec."Search Scope"::"Account Mapping";
    end;

    var
        FilterPartVisible, SearchPartVisible : Boolean;
}
