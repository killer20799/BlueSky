<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="news-detail bluesky-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="heading">
                            <h2><xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
                                <xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
                            </h2>
                            <date class="mdi mdi-calendar-range"><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></date>
                        </div>
                        <div class="fullContent">
                            <xsl:value-of select="/NewsDetail/FullContent"></xsl:value-of>
                        </div>
                        <div class="SocialShare"></div>
                    </div>
                </div>
                <xsl:if test="count(/NewsDetail/NewsOther) > 0">
                    <div class="row">
                        <div class="col">
                            <div class="otherNews">
                                <div class="sub-title">
                                    <h3><xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of></h3>
                                </div>
                                <div class="newsList">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                                        </div>
                                    </div>
                                    <div class="swiper-nav">
                                        <div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt=""/></div>
                                        <div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt=""/></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='NewsOther'>
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <figure>
                    <div class="image">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <h4><xsl:value-of select="Title"></xsl:value-of></h4>
                        <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>