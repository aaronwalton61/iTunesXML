<xsl:apply-templates select='/plist/dict/dict/dict'/>
</body></html>
</xsl:template>

<xsl:variable name="Sequence"></xsl:variable> 
<xsl:variable name="SequenceVal" select="0"></xsl:variable> 

<xsl:variable name="Name"></xsl:variable> 
<xsl:variable name="NameVal" select="0"></xsl:variable> 

<xsl:variable name="Artist"></xsl:variable> 
<xsl:variable name="ArtistVal" select="0"></xsl:variable> 

<xsl:variable name="Rating"></xsl:variable> 
<xsl:variable name="RatingVal" select="0"></xsl:variable> 

<xsl:template match='dict'>
<xsl:for-each select='key'>

<xsl:apply-templates select="key[.='Name']"/>

Name:  <xsl:value-of select='../string[position() = 1]'/> 
<xsl:value-of select="following-sibling::*[1]"/> $#160 xxxx $#160
<xsl:comment>
<xsl:if test='. = "Name"'>

Name:  <xsl:value-of select='../string[position() = 1]'/>
</xsl:if>
<xsl:if test='. = "Artist"'>

Artist:  <xsl:value-of select='../string[position() = 2]'/>
</xsl:if>
<xsl:if test='. = "Rating"'>

Rating:  <xsl:value-of select='../integer[position() = 13]'/>
</xsl:if>
</xsl:comment> 

</xsl:for-each>


</xsl:template>
<xsl:template match='key'>
<xsl:call-template name='showNextSiblingVal'>
<xsl:with-param name='firstSiblingVal' select='.'/>
</xsl:call-template>
</xsl:template>

<xsl:template name='showNextSiblingVal'>
<xsl:param name='firstSiblingVal'/>
<xsl:if test='. = $firstSiblingVal'>

<xsl:value-of select='.'/>: <xsl:value-of select='following-sibling::*'/>
</xsl:if>
</xsl:template>

</xsl:stylesheet>
