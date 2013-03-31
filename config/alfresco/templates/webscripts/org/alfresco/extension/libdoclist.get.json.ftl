
<#macro dateFormat date>${date?string("dd MMM yyyy HH:mm:ss 'GMT'Z '('zzz')'")}</#macro>
{

<#assign abc=url.extension>

"sitedocs" : [
<#list companyhome.childByNamePath["Sites/"+abc+"/documentLibrary"].children as child>
 <#if child.isContainer>
<@printchild testnode=child/>
<#else>

<#assign  Adate =child.properties.created?long>
<#if child.properties.modified?exists>
<#assign  Bdate = child.properties.modified?long>
<#assign Cdate=(Bdate-Adate)!" ">
<#assign Diffrence=(Cdate/(1000 * 60 * 60 * 24))?string("0")>
<#assign Ddate=child.properties.modified?date>
<#else>
<#assign Diffrence=" ">
<#assign Ddate=" ">
</#if>
{
     "filename" : "${child.properties.name}",

    "folderpath":"<@encodepath node=child/>",

    "created" : "${child.properties.created?date}",

    "modified": " ${Ddate}",
    
    "difference":"${Diffrence}",

    "noderef":"${child.nodeRef.storeRef.protocol}://${child.nodeRef.storeRef.identifier}/${child.nodeRef.id}"
 
}
<#if child_has_next> , </#if>
</#if>
</#list>

]
}
<#macro encodepath node><#if node.parent.parent.parent.parent.parent?exists><@encodepath node=node.parent/>/${node.name?url}</#if></#macro>

<#macro printchild testnode>
<#list testnode.children as child>
 <#if child.isContainer>
<@printchild testnode=child/>
<#else>
<#assign  Adate =child.properties.created?long>
<#if child.properties.modified?exists>
<#assign  Bdate = child.properties.modified?long>
<#assign Cdate=(Bdate-Adate)!" ">
<#assign Diffrence=(Cdate/(1000 * 60 * 60 * 24))?string("0")>
<#assign Ddate=child.properties.modified?date>
<#else>
<#assign Diffrence=" ">
<#assign Ddate=" ">
</#if>
{
    "filename" : "${child.properties.name}",

    "folderpath":"<@encodepath node=child/>",

    "created" : "${child.properties.created?date}",

    "modified": " ${Ddate}",
    
    "difference":"${Diffrence}",

    "noderef":"${child.nodeRef.storeRef.protocol}://${child.nodeRef.storeRef.identifier}/${child.nodeRef.id}"
 
}
,
</#if>
</#list>
</#macro>