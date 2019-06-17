<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="row">
            <div class="sub-title">
                <h2><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h2>
                <p><xsl:value-of select="/NewsList/ZoneDescription"></xsl:value-of></p>
            </div>
        </div>
        <div class="row">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="col-md-6 col-lg-4">
            <figure>
                <div class="boximg">
                        <img>
                            <xsl:attribute name='src'>
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                <figcaption><img class="quote-icon" src="/Data/Sites/1/media/icon-quote.png" alt=""></img>
                    <p><xsl:value-of select="BriefContent"></xsl:value-of></p><img class="bottom-line" src="/Data/Sites/1/media/bottom-line.png" alt=""></img>
                    <h3><xsl:value-of select="Title"></xsl:value-of></h3>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>