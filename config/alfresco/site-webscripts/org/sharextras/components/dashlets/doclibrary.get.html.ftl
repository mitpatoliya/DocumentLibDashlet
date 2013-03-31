<#ftl attributes={"content_type":"text/html"} encoding="UTF-8"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/ajax/yahoo/connection/connection-min.js"> </script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/ajax/common.js"> </script>
<script type="text/javascript">//<![CDATA[new Alfresco.widget.DashletResizer("${args.htmlid}", "${instance.object.id}");
//]]></script>

<#assign site=page.url.templateArgs.site>
<div class="dashlet">
   <div class="title">${msg("header")}</div>
 <div class="body scrollableList">
 
<table  class="gridtable">
<tr>
    <th>${msg("label.filename")}</th>
    <th>${msg("label.folderpath")}</th>
    <th>${msg("label.created")}</th>
    <th>${msg("label.modified")}</th>
    <th>${msg("label.difference")}</th>
</tr>

<#list sitedocs as t>
<tr>
     <#assign doclink="/share/page/site/"+site+"/document-details?nodeRef="+"${t.noderef}">
    <td><a href=${doclink} class="document item-link theme-color-1">${t.filename}</a></td>
    <td>${t.folderpath}</td>
    <td>${t.created}</td>
    <td>${t.modified}</td>
   <td>${t.difference}</td>
</tr>
</#list>
</table>
</div>

</div>
