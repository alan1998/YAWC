<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY nl  "&#xd;&#xa;">
  <!--new line CR, LF -->
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>

  <!-- for each component -->
  <xsl:template match="libpart">

    <!--
    <xsl:value-of select="count(//comp/libsource/@part[@part])"/><xsl:text>,</xsl:text>
-->

    <xsl:value-of select="@part"/>
    <xsl:text>,</xsl:text>
    <xsl:value-of select="description"/>
    <xsl:text>,</xsl:text>
    <xsl:value-of select="@lib"/>

    <xsl:text>&nl;</xsl:text>
  </xsl:template>

  <xsl:template match="comp">
    <xsl:value-of select="@ref"/>
    <xsl:text>&#09;</xsl:text>
    <xsl:value-of select ="value"/>
    <xsl:text>&#09;</xsl:text>
    <xsl:value-of select ="footprint"/>
    <xsl:text>&#09;&#09;&#09;</xsl:text>
  </xsl:template>

  <xsl:template match="/export">
    <xsl:text>Source file: </xsl:text>
    <xsl:value-of select="design/source"/>
    <xsl:text>&nl;Date: </xsl:text>
    <xsl:value-of select="design/date"/>
    <!--    <xsl:text>&nl;qty,partname,description,lib&nl;</xsl:text> -->
    <xsl:text>&nl;Ref&#09;Value&#09;Footprint&#09;Suppler&#09;Part No&#09;On hand</xsl:text>
    <!-- <xsl:apply-templates select="libparts/libpart"/> -->
    <xsl:apply-templates select="components"/>
  </xsl:template>
</xsl:stylesheet>
