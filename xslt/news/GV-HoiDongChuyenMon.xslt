<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="row">
            <div class="sub-title">
                <h2><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h2>
            </div>
        </div>
        <div class="row hoidong">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="col-lg-6">
            <figure>
                <div class="boximg">
                    <img>
                        <xsl:attribute name='src'>
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <h3><xsl:value-of select="Title"></xsl:value-of></h3>
                    <h4><xsl:value-of select="SubTitle"></xsl:value-of></h4>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>