<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="home-5 bluesky-section">
            <div class="container">
                <h2 class="main-title"><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h2>
                <div class="main-wrap">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-nav">
                        <div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt="" /></div>
                        <div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt="" /></div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='News'>
        <div class="swiper-slide">
            <div class="item">
                <figure>
                    <div class="image">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="name">
                        <h3><xsl:value-of select="Title"></xsl:value-of> <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h3>
                    </div>
                    <figcaption>
                        <p><xsl:value-of select="SubTitle" disable-output-escaping='yes'></xsl:value-of> </p>
                        <ul>
                            <li><em class="fas fa-home"></em><xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of></li>
                            <li><em class="fas fa-phone"></em><xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of></li>
                        </ul>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>