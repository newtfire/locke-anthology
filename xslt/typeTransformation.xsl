<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="3.0">
   
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:variable name="teiCollection" as="document-node()+" select="collection('../type_transformed_tei/?select=*.xml')"/>
        
    <xsl:template match="/">
        <xsl:for-each select="$teiCollection">
            <xsl:variable name="currentFile" as="document-node()" select="current()"/>

            <xsl:variable name="fileName" as="xs:string" select="$currentFile ! base-uri() ! tokenize(., '/')[last()]"/>
            <xsl:result-document method="xml" indent="yes" href="../type_subtype_transformed_tei/{$fileName}">
                
                <xsl:apply-templates/>
                
                
            </xsl:result-document>
 
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="l[.//rs[@type='enjambment']]">
        
        <l enjamb ="yes">
        <xsl:apply-templates/>
        </l>
        
    </xsl:template>
    
    <xsl:template match="l[not(@enjamb) and not descendant::rs[@type='enjambment'] or l[descendant::rs[@type='endstop']]">
        <l enjamb="no"><xsl:apply-templates/></l>
    </xsl:template>
    
    <xsl:template match="rs[@type='enjambment']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="rs[@type='endstop']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="rs[@type='male'] | rs[@theme='male']">
        <rs type="theme" subtype="male">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='woman'] | rs[@theme='female']">
        <rs type="theme" subtype="female">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeA']">
        <rhyme type="A">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeB']">
        <rhyme type="B">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeC']">
        <rhyme type="C">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeD']">
        <rhyme type="D">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeE']">
        <rhyme type="E">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeF']">
        <rhyme type="F">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeG']">
        <rhyme type="G">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeH']">
        <rhyme type="H">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeI']">
        <rhyme type="I">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='rhymeJ']">
        <rhyme type="J">
            <xsl:apply-templates/>
        </rhyme>
    </xsl:template>
    
    <xsl:template match="rs[@type='alliteration'] | rs[@litDevice='alliteration']">
        <rs type="litDevice" subtype="alliteration">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='assonance'] | rs[@litDevice='assonance']">
        <rs type="litDevice" subtype="assonance">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
        <xsl:template match="rs[@*='consonance']">
        <rs type="litDevice" subtype="consonance">
            <xsl:apply-templates/>
        </rs>
    </xsl:template> 
    
        <xsl:template match="rs[@*='metaphor']">
        <rs type="litDevice" subtype="metaphor">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
        <xsl:template match="rs[@*='simile']">
        <rs type="litDevice" subtype="simile">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
        <xsl:template match="rs[@*='repetition']">
        <rs type="litDevice" subtype="repetition">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='cane']">
        <rs type="theme" subtype="cane">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='freedom']">
        <rs type="theme" subtype="freedom">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='religion']">
        <rs type="theme" subtype="religion">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='race']">
        <rs type="theme" subtype="race">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='color']">
        <rs type="theme" subtype="color">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='black']">
        <rs type="theme" subtype="black">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='white']">
        <rs type="theme" subtype="white">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='body']">
        <rs type="theme" subtype="body">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='minstrelsy']">
        <rs type="theme" subtype="minstrelsy">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='food']">
        <rs type="theme" subtype="food">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='love']">
        <rs type="theme" subtype="love">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='child']">
        <rs type="theme" subtype="child">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='cane']">
        <rs type="theme" subtype="cane">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='firstPerson']">
        <rs type="POV" subtype="firstPerson">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='secondPerson']">
        <rs type="POV" subtype="secondPerson">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@*='thirdPerson']">
        <rs type="POV" subtype="thirdPerson">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
</xsl:stylesheet>

