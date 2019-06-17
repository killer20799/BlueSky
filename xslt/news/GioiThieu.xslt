<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="gioithieu-1 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='GT1'></xsl:apply-templates>
            </div>
        </section>
        <section class="gioithieu-2 bluesky-section" bg-img='/Data/Sites/1/media/img/gioithieu/bg-1.png'>
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='GT2'></xsl:apply-templates>
            </div>
        </section>
        <section class="gioithieu-3 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='GT3'></xsl:apply-templates>
            </div>
        </section>
        <section class="gioithieu-4 bluesky-section">
            <div class="container">
               <xsl:apply-templates select='/ZoneList/Zone' mode='GT4'></xsl:apply-templates>
            </div>
        </section>
        <section class="gioithieu-5 bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='GT5'></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='Zone' mode='GT1'>
        <xsl:if test="position() = 1">
            <h2 class="main-title"><xsl:value-of select="Title"></xsl:value-of></h2>
            <div class="main-wrapper">
                <div class="row wrapper">
                    <xsl:apply-templates select='News' mode='GT1-News1'></xsl:apply-templates>
                </div>
                <div class="row wrapper">
                    <xsl:apply-templates select='News' mode='GT1-News2'></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='GT1-News1'>
        <xsl:if test="position() = 1">
            <div class="col-lg-5 content">
                <div class="sub-title"> 
                    <h3><xsl:value-of select="Title"></xsl:value-of> <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h3>
                </div>
                <div class="desc">
                    <p><xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of></p>
                </div>
                <div class="city"><img src="/Data/Sites/1/media/img/gioithieu/bgcity.jpg" alt=""/></div>
            </div>
            <div class="col-lg-7 slide">
                <div class="swiper-container swiper-1">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select='NewsImages' mode='GT1-Image1'></xsl:apply-templates>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='NewsImages' mode='GT1-Image1'>
        <div class="swiper-slide">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match='News' mode='GT1-News2'>
        <xsl:if test="position() = 2">
            <div class="col-lg-6 slide">
                <div class="swiper-container swiper-2">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select='NewsImages' mode='GT1-Image2'></xsl:apply-templates>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="col-lg-6 content">
                <div class="sub-title"> 
                    <h3><xsl:value-of select="Title"></xsl:value-of> <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h3>
                </div>
                <div class="desc">
                    <xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='NewsImages' mode='GT1-Image2'>
        <div class="swiper-slide">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='GT2'>
        <xsl:if test="position() = 2">
            <div class="row">
                <xsl:apply-templates select='News' mode='GT2-News'></xsl:apply-templates>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='GT2-News'>
        <div class="col-md-4 item">
            <figure>
                <div class="icon">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <h5><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h5>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of></p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='GT3'>
        <xsl:if test="position() = 3">
            <div class="sub-title">
                <h3><xsl:value-of select="Title"></xsl:value-of></h3>
            </div>
            <div class="main-wrap">
                <div class="row">
                    <xsl:apply-templates select='News' mode='GT3-News'></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='GT3-News'>
        <div class="col-md-4 item">
            <figure>
                <xsl:attribute name="bg-img">
                    <xsl:text disable-output-escaping='yes'>/Data/Sites/1/media/img/gioithieu/block-</xsl:text>
                    <xsl:value-of select="position()"></xsl:value-of>
                    <xsl:text disable-output-escaping='yes'>.png</xsl:text>
                </xsl:attribute>
                <div class="image">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of></p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='GT4'>
        <xsl:if test="position() = 4">
            <div class="sub-title">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
            </div>
            <div class="main-nav">
                <xsl:apply-templates select='Zone' mode='GT4-Nav'></xsl:apply-templates>
            </div>
            <div class="row">
                <div class="col-lg-10">
                    <div class="main-content">
                        <xsl:apply-templates select="Zone" mode="GT4-Content"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='Zone' mode='GT4-Nav'>
        <div class="item">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping='yes'>item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="data-tab">
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='GT4-Content'>
        <div class="content-item active" data-content="1">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select='News' mode='GT4-News'></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News' mode='GT4-News'>
        <div class="swiper-slide">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='GT5'>
        <xsl:if test="position() = 5">
            <div class="sub-title">
                <h3><xsl:value-of select="Title"></xsl:value-of></h3>
            </div>
            <div class="main-wrap">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select='News' mode='GT5-News'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='GT5-News'>
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