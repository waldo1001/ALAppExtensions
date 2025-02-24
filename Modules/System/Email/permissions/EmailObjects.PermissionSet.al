// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

permissionset 8906 "Email - Objects"
{
    Access = Internal;
    Assignable = false;

    IncludedPermissionSets = "Base64 Convert - Objects",
                             "Client Type Mgt. - Objects",
                             "Confirm Management - Objects";

    Permissions = Codeunit "Email Account Impl." = X,
                  Codeunit "Email Account" = X,
                  Codeunit "Email Activities" = X,
                  Codeunit "Email Attachment Upgrade" = X,
                  Codeunit "Email Dispatcher" = X,
                  Codeunit "Email Editor" = X,
                  Codeunit "Email Error Handler" = X,
                  Codeunit "Email Impl" = X,
                  Codeunit "Email Installer" = X,
                  Codeunit "Email Logs Delete" = X,
                  Codeunit "Email Message Impl." = X,
                  Codeunit "Email Message" = X,
                  Codeunit "Email Scenario Impl." = X,
                  Codeunit "Email Scenario" = X,
                  Codeunit "Email Test Mail" = X,
                  Codeunit "Email Upgrade" = X,
                  Codeunit "Email Viewer" = X,
                  Codeunit "Email" = X,
                  Codeunit "Send Email" = X,
                  Page "Email Account Wizard" = X,
                  Page "Email Accounts" = X,
                  Page "Email Activities" = X,
                  Page "Email Attachments" = X,
                  Page "Email Editor" = X,
                  Page "Email Outbox" = X,
                  Page "Email Related Attachments" = X,
                  Page "Email Relation Picker" = X,
                  Page "Email Scenario Setup" = X,
                  Page "Email Scenarios FactBox" = X,
                  Page "Email Scenarios for Account" = X,
                  Page "Email User-Specified Address" = X,
                  Page "Email Viewer" = X,
                  Page "Sent Emails" = X,
                  Table "Email Account Scenario" = X,
                  Table "Email Account" = X,
                  Table "Email Connector Logo" = X,
                  Table "Email Connector" = X,
                  Table "Email Error" = X,
                  Table "Email Message Attachment" = X,
                  Table "Email Message" = X,
                  Table "Email Outbox" = X,
                  Table "Email Recipient" = X,
                  Table "Email Related Attachment" = X,
                  Table "Email Related Record" = X,
                  Table "Email Scenario" = X,
                  Table "Sent Email" = X;
}
