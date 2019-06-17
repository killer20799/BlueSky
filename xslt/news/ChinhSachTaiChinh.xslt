<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="chinhsachtaichinh bluesky-section">
            <div class="container">
                <h1 class="main-title"><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h1>
                <div class="row">
                    <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="col-sm-6 col-lg-4">
            <div class="FullContent">
                <h2>
                    <xsl:value-of select="Title"></xsl:value-of>
                    <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                </h2>
                <div class="more-info">
                    <a>
                        <xsl:attribute name='href'>
                            <xsl:value-of select="FileUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="/NewsList/ViewNow"></xsl:value-of>
                    </a>
                    <a>
                        <xsl:attribute name='href'>
                            <xsl:value-of select="FileUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="download"></xsl:attribute>
                        <xsl:value-of select="/NewsList/Download"></xsl:value-of>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>