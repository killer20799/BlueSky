<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="row">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="col-sm-6 col-lg-4">
            <div class="gallery-video">
                <a data-fancybox=''>
                    <xsl:attribute name="href">
                        <xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="boximg">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                            <div class="play-btn"><img src="/Data/Sites/1/media/play-btn.png" alt=""/></div>
                        </div>
                        <figcaption>
                            <h2><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h2>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>