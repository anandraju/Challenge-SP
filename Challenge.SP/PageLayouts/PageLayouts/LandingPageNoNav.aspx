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
<style type="text/css">
/**** Hide Side Nav ****/
#DeltaPlaceHolderLeftNavBar.ms-core-navigation { DISPLAY: none }
#contentBox { margin-left: 15px }
    div.container-fluid.main-container {
        margin-top: 20px;
    }
</style>
<div class="container-fluid main-container">
      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-12">
          <div class="row">
            <div class="col-10 col-sm-10 col-lg-10">
                <WebPartPages:WebPartZone id="TopBarMain" runat="server" title="Top Bar Main Zone"></WebPartPages:WebPartZone>
            </div><!--/span-->
            <div class="col-2 col-sm-2 col-lg-2">
                <WebPartPages:WebPartZone id="TopBarSide" runat="server" title="Top Bar Side Zone"></WebPartPages:WebPartZone>
            </div><!--/span-->
          </div>
          <div class="row">
            <div class="col-5 col-sm-6 col-lg-5">
                <WebPartPages:WebPartZone id="MainContentLeft" runat="server" title="Main Content Left Zone"></WebPartPages:WebPartZone>
            </div><!--/span-->
            <div class="col-5 col-sm-6 col-lg-5">
                <WebPartPages:WebPartZone id="MainContentRight" runat="server" title="Main Content Right Zone"></WebPartPages:WebPartZone>
            </div><!--/span-->
            <div class="col-2 col-sm-6 col-lg-2">
                <WebPartPages:WebPartZone id="MainContentSidebar" runat="server" title="Main Content Sidebar Zone"></WebPartPages:WebPartZone>
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
<div>
</div>
<table class="rtio-layout-table">
<tr>
    <td class="3col-left" style="width:300px;">
        <WebPartPages:WebPartZone id="g_B6B8FAC77A784DF4988E9207E5822E9E" runat="server" title="Left Zone"></WebPartPages:WebPartZone>
    </td>
    <td class="3col-middle" style="width:auto;">
		<WebPartPages:WebPartZone id="g_59DB419D41CF493F9D04E0D1D346FBE3" runat="server" title="Middle Zone"></WebPartPages:WebPartZone>
    </td>
    <td class="3col-right" style="width:300px;">
        <WebPartPages:WebPartZone id="g_A02253442985475E81760453E64C78D5" runat="server" title="Right Zone"></WebPartPages:WebPartZone>
    </td>
</tr>
<tr>
	<td colspan="3" class="layout-table-bottom">
		<WebPartPages:WebPartZone id="g_B02753842D85475E81760553564C78D5" runat="server" title="Bottom Zone"></WebPartPages:WebPartZone>
	</td>
</tr>
</table>
</asp:Content>
