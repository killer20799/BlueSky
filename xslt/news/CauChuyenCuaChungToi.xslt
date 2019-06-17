<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="home-6 bluesky-section">
            <div class="container">
                <h2 class="main-title"><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h2>
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='News'>
        <div class="swiper-slide">
            <div class="item">
                <div class="image">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="quote"><img src="/Data/Sites/1/media/img/home/icon-quote.png" alt="" /></div>
                <div class="desc">
                    <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                </div>
                <div class="name">
                    <h5><xsl:value-of select="Title"></xsl:value-of></h5>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>