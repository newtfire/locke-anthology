<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>

<xsl:template match="/">
    <html>
        <head>
            <title>Dream Variation</title>
            <link rel="stylesheet" type="text/css" href="dream_variation.css"/>        
        </head>
        <body>
            <xsl:apply-templates select="descendant::div"/>
        </body>
    </html>
</xsl:template>

<xsl:template match="head">
    <h2>
        <xsl:apply-templates/>
    </h2>
</xsl:template>

<xsl:template match="child::lg">
    <p>
        <xsl:apply-templates/>
    </p>
</xsl:template>

<xsl:template match="byline">
    <span class="cursive">
        <xsl:apply-templates/>
        
    </span>
</xsl:template>

</xsl:stylesheet>