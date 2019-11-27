<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
  xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
  exclude-result-prefixes="office text">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:variable name="sep">
    <xsl:text>	</xsl:text><!-- définition du séparateur de colonnes : tabulation (\t) -->
  </xsl:variable>
  <xsl:template match="/">
    <xsl:apply-templates select="office:document-content/office:body/office:text/text:p[@text:style-name='_5f_inventaire']"/>
  </xsl:template>
  <xsl:template match="text:p[@text:style-name='_5f_inventaire']">
    <xsl:value-of select="."/>
    <xsl:value-of select="$sep"/>
    <xsl:value-of select="preceding-sibling::text:h[@text:outline-level='2' or @text:outline-level='3'][1]"/>
    <xsl:value-of select="$sep"/>
    <xsl:value-of select="preceding-sibling::text:p[@text:style-name='_5f_description'][1]"/>
    <xsl:value-of select="$sep"/>
    <xsl:value-of select="preceding-sibling::text:p[@text:style-name='_5f_dimensions'][1]"/>
    <xsl:text>
</xsl:text>
  </xsl:template>
</xsl:stylesheet>