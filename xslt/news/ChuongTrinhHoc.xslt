<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="chuongtrinhhoc-1 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='CTH1'></xsl:apply-templates>
            </div>
        </section>
        <section class="chuongtrinhhoc-2 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='CTH2'></xsl:apply-templates>
            </div>
        </section>
        <section class="chuongtrinhhoc-3 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='CTH3'></xsl:apply-templates>
            </div>
        </section>
        <section class="chuongtrinhhoc-4 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='CTH4'></xsl:apply-templates>
            </div>
        </section> 
    </xsl:template>
    <xsl:template match='Zone' mode='CTH1'>
        <xsl:if test="position() = 1">
            <h2 class="main-title"><xsl:value-of select="Title"></xsl:value-of></h2>
            <div class="row">
                <div class="col-lg-6">
                    <div class="main-nav">
                        <xsl:apply-templates select='Zone' mode='CTH1-Nav'></xsl:apply-templates>
                    </div>
                    <div class="main-content">
                        <xsl:apply-templates select='Zone' mode='CTH1-Content'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='Zone' mode='CTH1-Nav'>
        <div class='item'>
            <xsl:if test="position() = 1">
                <xsl:attribute name='class'>
                    <xsl:text disable-output-escaping="yes">item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name='data-tab'>
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='CTH1-Content'>
        <div class="content-item">
            <xsl:attribute name='data-content'>
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name='class'>
                    <xsl:text disable-output-escaping='yes'>content-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="desc">
                <p><xsl:value-of select="Description"></xsl:value-of></p>
            </div>
            <div class="toddler">
                <xsl:apply-templates select='News' mode='CTH1-News'></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News' mode='CTH1-News'>
        <div class="item">
            <figure>
                <div class="image">
                    <img>
                        <xsl:attribute name='src'>
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <h5><xsl:value-of select="Title"></xsl:value-of></h5>
                    <p><xsl:value-of select="SubTitle"></xsl:value-of></p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='CTH2'>
        <xsl:if test="position() = 2">
            <div class="row">
                <div class="col">
                    <div class="sub-title">
                        <h2><xsl:value-of select="Title"></xsl:value-of></h2>
                    </div>
                </div>
            </div>
            <xsl:apply-templates select='News' mode='CTH2-News'></xsl:apply-templates>
            
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='CTH2-News'>
        <div class="row">
            <div class="col-lg-8">
                <div class="desc">
                    <p><xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of></p>
                </div>
            </div>
        </div>
        <div class="list-item">
            <div class="row">
                <xsl:apply-templates select='NewsImages' mode='CTH2-Row1'></xsl:apply-templates>
            </div>
            <div class="row">
                <xsl:apply-templates select='NewsImages' mode='CTH2-Row2'></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='NewsImages' mode='CTH2-Row1'>
        <xsl:if test='position() &lt; 4 and position() &gt; 0'>
            <div class="col-lg-3 col-md-4 item">
                <figure>
                    <div class="icon">
                        <img>
                            <xsl:attribute name='src'>
                                <xsl:value-of select='ImageUrl'></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <h5>
                            <xsl:if test="position() &lt; 10">
                                <xsl:text disable-output-escaping='yes'>0</xsl:text>
                            </xsl:if>
                            <xsl:value-of select="position()"></xsl:value-of>
                        </h5>
                        <p><xsl:value-of select="Title"></xsl:value-of></p>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='NewsImages' mode='CTH2-Row2'>
        <xsl:if test='position() >= 4'>
            <div class="col-lg-3 col-md-4 item">
                <figure>
                    <div class="icon">
                        <img>
                            <xsl:attribute name='src'>
                                <xsl:value-of select='ImageUrl'></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <h5>
                            <xsl:if test="position() &lt; 10">
                                <xsl:text disable-output-escaping='yes'>0</xsl:text>
                            </xsl:if>
                            <xsl:value-of select="position()"></xsl:value-of>
                        </h5>
                        <p><xsl:value-of select="Title"></xsl:value-of></p>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='Zone' mode='CTH3'>
        <xsl:if test='position() = 3'>
            <div class="sub-title">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
            </div>
            <div class="tkb-table">
                <xsl:apply-templates select='News' mode='CTH3-News'></xsl:apply-templates>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='CTH3-News'>
        <a>
            <xsl:attribute name='href'>
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='data-fancybox'></xsl:attribute>
            <img>
                <xsl:attribute name='src'>
                    <xsl:value-of select="ImageUrl" disable-output-escaping='yes'></xsl:value-of>
                </xsl:attribute>
            </img>
        </a>
    </xsl:template>
    <xsl:template match='Zone' mode='CTH4'>
        <xsl:if test='position() = 4'>
            <div class="sub-title">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
            </div>
            <div class="desc">
                <p><xsl:value-of select="Description"></xsl:value-of></p>
            </div>
            <div class="row">
                <div class="col-lg-10">
                    <div class="slide">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select='News' mode='CTH4-News'></xsl:apply-templates>
                            </div>
                            <div class="swiper-nav">
                                <div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt=""></img></div>
                                <div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt=""></img></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='CTH4-News'>
        <div class="swiper-slide">
        <img>
            <xsl:attribute name='src'>
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
        </img>
    </div>
    </xsl:template>
</xsl:stylesheet>