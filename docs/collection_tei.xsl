<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="Poems" as="document-node()+"
        select="collection('../type_transformed_tei/?select=*.xml')"/>
    <!-- 2022-12-04 ebb: I have revised the collection() to reach up and over to the official 
        type_transformed_tei directory where the quality-controlled TEI is now stored.  -->
        
    <xsl:template match="/">
        <html>
            <head>
                <title>Poems</title>
                <link rel="stylesheet" type="text/css" href="collection_tei.css"/> 
                <lin relx
                <!-- ebb: Consider where the CSS file will be locatd in relation to output HTML when it's being
                developed in the docs/ directory for the project website. Does this line need to change? -->
            </head>
            <body>

                <xsl:apply-templates select="$Poems//descendant::div"/>

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
    
    <xsl:template match="rs">
        <span class="color">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="rhyme[@type]">
        <span class="italics">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

</xsl:stylesheet>