<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="row">
            <div class="sub-title">
                <h2><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-10">
                <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="images">
            <a>
                <xsl:attribute name='data-fancybox'></xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <img alt="">
                    <xsl:attribute name='src'>
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>