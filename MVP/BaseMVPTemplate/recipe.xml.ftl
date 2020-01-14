<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

<#if (isGenerateActivity)>
    <instantiate from="src/app_package/classes/Activity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
</#if>
      
<#if (isGenerateFragment)>
    <instantiate from="src/app_package/classes/Fragment.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
</#if>    
    
    <instantiate from="src/app_package/classes/Presenter.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />

<#if (isGenerateInteractor)>
    <instantiate from="src/app_package/classes/Interactor.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${interactorName}.kt" />
</#if>

    <instantiate from="src/app_package/classes/Contract.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${contractName}.kt" />

    <open file="${srcOut}/${contractName}.kt"/>
</recipe>
