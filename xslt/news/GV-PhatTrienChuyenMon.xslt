<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="sub-title">
            <h2><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h2>
            <p><xsl:value-of select="/NewsList/ZoneDescription"></xsl:value-of></p>
        </div>
        <div class="slide">
            <div class="row">
                <div class="col-lg-10 main-slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-nav">
                        <div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt=""></img></div>
                        <div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt=""></img></div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="swiper-slide">
            <img alt="">
                <xsl:attribute name='src'>
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
</xsl:stylesheet>