<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/ViewController.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewController.kt" />
    <instantiate from="src/app_package/Interactor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
    <instantiate from="src/app_package/Model.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Model.kt" />
    <instantiate from="src/app_package/Worker.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Worker.kt" />
    <instantiate from="src/app_package/Router.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Router.kt" /> 
    <instantiate from="src/app_package/Configurator.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Configurator.kt" />
</recipe>