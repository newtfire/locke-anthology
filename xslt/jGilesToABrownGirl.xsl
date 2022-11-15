<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    


<xsl:template match="/">
    <html>
        <head>
            <title><xsl:apply-templates select=".//title"/></title>
            <link rel="stylesheet" type="text/css" href="style.css"/>
            
        </head>
        <body>
            <h1><xsl:apply-templates select=".//title"/></h1>
            <xsl:apply-templates select=".//body"/>
        </body>
    </html>
    
</xsl:template>
    
    <xsl:template match="l">
        
        <p><xsl:apply-templates/></p>
        
    </xsl:template>
    
    <xsl:template match="head"/>
    
    <xsl:template match="rs">
        <span class="rs" title="{@type}"><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
</xsl:stylesheet>