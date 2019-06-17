<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="recruitment bluesky-section">
            <div class="container">
                <h1 class="main-title"><xsl:value-of select="/ZoneList/ZoneTitle"></xsl:value-of></h1>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="staff-recruit">
                            <xsl:apply-templates select='/ZoneList/Zone' mode='TD1'></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="teacher-recruit">
                            <xsl:apply-templates select='/ZoneList/Zone' mode='TD2'></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="workplace bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='TD3'></xsl:apply-templates>
            </div>
        </div>
        <div class="chedodaingo bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='TD4'></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='TD1'>
        <xsl:if test="position() = 1">
            <h2><xsl:value-of select="Title"></xsl:value-of></h2>
            <xsl:apply-templates select='News' mode='TD1-News'></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match='Zone' mode='TD2'>
        <xsl:if test="position() = 2">
            <h2><xsl:value-of select="Title"></xsl:value-of></h2>
            <xsl:apply-templates select='News' mode='TD2-News'></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TD1-News'>
        <xsl:if test="position() &gt; 0 and position() &lt; 6">
            <div class="jobs-select">
                <figure>
                    <div class="boximg">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                        <a><xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                        <h3><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h3>
                        </a>
                        <div class="subtitle"><strong><xsl:value-of select="/ZoneList/Workplace"></xsl:value-of>: </strong><xsl:value-of select="SubTitle"></xsl:value-of></div>
                        <div class="startdate"><strong><xsl:value-of select="/ZoneList/StartDay"></xsl:value-of>: </strong><xsl:value-of select="CreatedDate"></xsl:value-of></div>
                        <div class="enddate"><strong><xsl:value-of select="/ZoneList/Deadline"> </xsl:value-of>: </strong><xsl:value-of select="EndDate"></xsl:value-of></div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TD2-News'>
        <xsl:if test="position() &gt; 0 and position() &lt; 6">
            <div class="jobs-select">
                <figure>
                    <div class="boximg">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                       <a><xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                        <h3><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h3>
                        </a>
                        <div class="subtitle"><strong><xsl:value-of select="/ZoneList/Workplace"></xsl:value-of>: </strong><xsl:value-of select="SubTitle"></xsl:value-of></div>
                        <div class="startdate"><strong><xsl:value-of select="/ZoneList/StartDay"></xsl:value-of>: </strong><xsl:value-of select="CreatedDate"></xsl:value-of></div>
                        <div class="enddate"><strong><xsl:value-of select="/ZoneList/Deadline"> </xsl:value-of>: </strong><xsl:value-of select="EndDate"></xsl:value-of></div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='Zone' mode='TD3'>
        <xsl:if test="position() = 3">
            <div class="sub-title">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
                <p><xsl:value-of select="Description"></xsl:value-of></p>
            </div>
            <div class="row">
                <div class="col-lg-10">
                    <div class="slide">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select='News' mode='TD3-News'></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-nav">
                            <div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt="" /></div>
                            <div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt="" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TD3-News'>
        <div class="swiper-slide">
            <img>
                <xsl:attribute name='src'>
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='TD4'>
        <xsl:if test="position() = 4">
            <div class="sub-title">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
            </div>
            <div class="list-item">
                <div class="row">
                    <xsl:apply-templates select='News' mode='TD4-News'></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TD4-News'>
        <div class="col-lg-4 col-sm-6 item">
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
</xsl:stylesheet>