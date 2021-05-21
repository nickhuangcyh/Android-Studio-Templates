<recipe>

<#if (isGenerateActivityLayout)>
    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>
    
<#if (isGenerateFragmentLayout)>
    <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>

<#if (isGenerateDialogFragmentLayout)>
    <instantiate from="src/app_package/layout/dialog_fragment_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${dialogFragmentLayoutName}.xml" />
</#if>

</recipe>
