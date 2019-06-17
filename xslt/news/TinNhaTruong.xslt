<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <xsl:if test="position() = 1">
            <div class="student-active bluesky-section">
                <div class="container">
                    <xsl:apply-templates select='/ZoneList/Zone' mode='TNT-1'></xsl:apply-templates>
                </div>
            </div>
            <div class="parents-active bluesky-section">
                <div class="container">
                    <xsl:apply-templates select='/ZoneList/Zone' mode='TNT-2'></xsl:apply-templates>
                </div>
            </div>
            <div class="other-news bluesky-section">
                <div class="container">
                    <xsl:apply-templates select='/ZoneList/Zone' mode='TNT-3'></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='Zone' mode='TNT-1'>
        <xsl:if test="position() = 1">
            <div class="heading-line">
                <h2>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    
                </h2>
            </div>
            <div class="news-slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="TNT1-News"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TNT1-News'>
        <div class="swiper-slide">
            <div class="news-item">
                <figure>
                    <div class="boximg">
                        <a>
                            <xsl:attribute name='href'>
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name='src'>
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                        <h2>
                            <a>
                                <xsl:attribute name='href'>
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                        </h2>
                        <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                        <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='TNT-2'>
        <xsl:if test="position() = 2">
            <div class="heading-line">
                <h2>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    
                </h2>
            </div>
            <div class="news-slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="TNT2-News"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TNT2-News'>
        <div class="swiper-slide">
            <div class="news-item">
                <figure>
                    <div class="boximg">
                        <a>
                            <xsl:attribute name='href'>
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name='src'>
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                        <h2>
                            <a>
                                <xsl:attribute name='href'>
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                        </h2>
                        <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                        <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='TNT-3'>
        <xsl:if test="position() = 3">
            <div class="heading-line">
                <h2>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    
                </h2>
            </div>
            <div class="news-slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="TNT3-News"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TNT3-News'>
        <div class="swiper-slide">
            <div class="news-item">
                <figure>
                    <div class="boximg">
                        <a>
                            <xsl:attribute name='href'>
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name='src'>
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                        <h2>
                            <a>
                                <xsl:attribute name='href'>
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                        </h2>
                        <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                        <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>