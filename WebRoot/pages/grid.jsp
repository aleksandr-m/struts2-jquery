<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div id="col1">
  <div id="col1_content" class="clearfix">
    <ul>
      <li><s:url id="urlgrid" action="grid"/><sj:a href="%{urlgrid}" targets="main">Grid</sj:a></li>
      <li><s:url id="urlgridedit" action="grid-edit"/><sj:a href="%{urlgridedit}" targets="main">Grid (Editable)</sj:a></li>
      <li><s:url id="urlgridloadonce" action="grid-loadonce"/><sj:a href="%{urlgridloadonce}" targets="main">Grid (Local Data)</sj:a></li>
    </ul>
  </div>
</div>
<div id="col3">
  <div id="col3_content" class="clearfix">
    <h2>Grid</h2>
    <p>
        A simple grid with pager.
    </p>
    <s:url id="remoteurl" action="jsontable"/> 
    <sj:grid 
    	id="gridtable" 
    	caption="Customer Examples" 
    	dataType="json" 
    	href="%{remoteurl}" 
    	pager="true" 
    	gridModel="gridModel"
    	rowList="10,15,20"
    	rowNum="15"
    	rownumbers="true"
    >
    	<sj:gridColumn name="id" index="id" title="ID" formatter="integer" sortable="false"/>
    	<sj:gridColumn name="name" index="name" title="Name" sortable="true"/>
    	<sj:gridColumn name="country" index="country" title="Country" sortable="false"/>
    	<sj:gridColumn name="city" index="city" title="City" sortable="false"/>
    	<sj:gridColumn name="creditLimit" index="creditLimit" title="Credit Limit" formatter="currency" sortable="false"/>
    </sj:grid>
  </div>
  
  <div class="code ui-widget-content ui-corner-all">
    <strong>Code in JSP:</strong>
    <pre>
    </pre>
    <strong>Code in Action:</strong>
    <pre>
    </pre>
  </div>
  <!-- IE Column Clearing -->
  <div id="ie_clearing"> &#160; </div>
</div>