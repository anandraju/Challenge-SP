<%@ Page language="C#"  Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
    <SharePointWebControls:FieldValue id="PageTitleInTitleArea" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
<PublishingWebControls:EditModePanel runat="server" id="EditModePanel">
    <SharePointWebControls:TextField ID="TextField1" InputFieldLabel="Page Title" FieldName="Title" runat="server"></SharePointWebControls:TextField>
</PublishingWebControls:EditModePanel>
<WebPartPages:SPProxyWebPartManager runat="server" id="spproxywebpartmanager"></WebPartPages:SPProxyWebPartManager>
<div class="container-fluid main-container">
    <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-12">
            <div class="row">
                <div class="col-8 col-sm-12 col-lg-8">
                    <WebPartPages:WebPartZone id="MainContentLeft" runat="server" title="Main Content Left Zone"></WebPartPages:WebPartZone>
                </div><!--/span-->
                <div class="col-4 col-sm-12 col-lg-4">
                    <WebPartPages:WebPartZone id="MainContentRight" runat="server" title="Main Content Right Zone"></WebPartPages:WebPartZone>
                </div><!--/span-->
            </div><!--/row-->
        </div><!--/span-->
    </div>
    <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-12">
            <WebPartPages:WebPartZone id="BottomZone" runat="server" title="Bottom Zone"></WebPartPages:WebPartZone>
        </div>
    </div>
</div>
<div>
	<PublishingWebControls:RichHtmlField id="PageContent" FieldName="PublishingPageContent" DisableInputFieldLabel="true" runat="server"/>
</div>
</asp:Content>
