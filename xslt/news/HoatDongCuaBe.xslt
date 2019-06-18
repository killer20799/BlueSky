<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="home-7 bluesky-section">
            <div class="container">
                <h2 class="main-title"  data-aos="fade-up"><xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of></h2>
                <div class="main-nav">
                    <xsl:apply-templates select='/ZoneList/Zone' mode='Nav'></xsl:apply-templates>
                </div>
                <div class="main-content">
                    <xsl:apply-templates select='/ZoneList/Zone' mode='Content'></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='Zone' mode='Nav'>
        <div class="item" data-aos="fade-down" data-aos-duration="3000">
            <xsl:attribute name="data-aos-delay">
                <xsl:value-of select="300 * position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="data-tab">
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test='position() = 1'>
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping='yes'>item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="Title"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='Content'>
        <div class="content-item">
            <xsl:attribute name="data-content">
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() =1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping='yes'>content-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:if test="position() = 1">
                        <xsl:apply-templates select='News' mode='Image'></xsl:apply-templates>
                    </xsl:if>
                    <xsl:if test="position() = 2">
                        <xsl:apply-templates select='News' mode='Video'></xsl:apply-templates>
                    </xsl:if>
                </div>
            </div>
            <div class="swiper-nav">
                <div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt="" /></div>
                <div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt="" /></div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News' mode='Video'>
        <div class="swiper-slide" data-aos="fade-up">
             <xsl:attribute name="data-aos-delay">
                <xsl:value-of select="150 * position()"></xsl:value-of>
            </xsl:attribute>
            <div class="item">
                <a data-fancybox=''>
                    <xsl:attribute name="href">
                        <xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="video"><img><xsl:attribute name="src"><xsl:value-of select="ImageUrl"></xsl:value-of></xsl:attribute></img></div>
                        <figcaption>
                            <h5><xsl:value-of select="Title"></xsl:value-of></h5>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News' mode='Image'>
        <div class="swiper-slide" data-aos="fade-up">
             <xsl:attribute name="data-aos-delay">
                <xsl:value-of select="150 * position()"></xsl:value-of>
            </xsl:attribute>
            <div class="item">
                <a data-fancybox=''>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl" disable-output-escaping='yes'></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="image"><img><xsl:attribute name="src"><xsl:value-of select="ImageUrl"></xsl:value-of></xsl:attribute></img></div>
                        <figcaption>
                            <h5><xsl:value-of select="Title"></xsl:value-of></h5>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>