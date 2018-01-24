<?xml version="1.0"?>
<recipe>
<#if needActivity>
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</#if>

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if needFragment && generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>


<#if needActivity>
    <instantiate from="root/src/app_package/MVPActivity.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(activityPackageName)}/${pageName}Activity.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(activityPackageName)}/${pageName}Activity.java" />
</#if>

<#if needFragment>
    <instantiate from="root/src/app_package/MVPFragment.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
</#if>

<#if needContract>
    <instantiate from="root/src/app_package/MVPContract.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}Contract.java" />
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/MVPPresenter.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.java" />
</#if>

<#if needDagger>
    <instantiate from="root/src/app_package/MVPModule.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modulePackageName)}/${pageName}Module.java" />

</#if>

</recipe>
