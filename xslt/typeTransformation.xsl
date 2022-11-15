<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="l[.//rs[@type='enjambment']]">
        
        <l enjamb ="yes">
        <xsl:apply-templates/>
        </l>
        
    </xsl:template>
    
    <xsl:template match="l">
        <l enjamb="no"><xsl:apply-templates/></l>
    </xsl:template>
    
    <xsl:template match="rs[@type='enjambment']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="rs[@type='endstop']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="rs[@type='male']">
        <rs theme="male">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='woman']">
        <rs theme="female">
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
    
    <xsl:template match="rs[@type='alliteration']">
        <rs litDevice="alliteration">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='assonance']">
        <rs litDevice="assonance">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='consonance']">
        <rs litDevice="consonance">
            <xsl:apply-templates/>
        </rs>
    </xsl:template> 
    
    <xsl:template match="rs[@type='metaphor']">
        <rs litDevice="metaphor">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='simile']">
        <rs litDevice="simile">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='repetition']">
        <rs litDevice="repetition">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='cane']">
        <rs theme="cane">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='freedom']">
        <rs theme="freedom">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='religion']">
        <rs theme="religion">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='race']">
        <rs theme="race">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='color']">
        <rs theme="color">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='black']">
        <rs theme="black">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='white']">
        <rs theme="white">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='body']">
        <rs theme="body">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='minstrelsy']">
        <rs theme="minstrelsy">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='food']">
        <rs theme="food">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='love']">
        <rs theme="love">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='child']">
        <rs theme="child">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='cane']">
        <rs theme="cane">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='firstPerson']">
        <rs POV="firstPerson">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='secondPerson']">
        <rs POV="secondPerson">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
    
    <xsl:template match="rs[@type='thirdPerson']">
        <rs POV="thirdPerson">
            <xsl:apply-templates/>
        </rs>
    </xsl:template>
</xsl:stylesheet>

