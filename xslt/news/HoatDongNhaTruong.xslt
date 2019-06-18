<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="home-4 bluesky-section">
            <div class="container">
                <h2 class="main-title" data-aos="fade-up"><xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of></h2>
                <div class="main-wrap">
                    <div class="main-nav">
                        <xsl:apply-templates select='/ZoneList/Zone' mode='Nav'></xsl:apply-templates>
                    </div>
                    <div class="main-content">
                        <xsl:apply-templates select='/ZoneList/Zone' mode='Content'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='Nav'>
        <div class="item">
            <xsl:attribute name="data-tab">
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <!-- <xsl:attribute name="data-aos-delay">
                <xsl:value-of select="200 * position()"></xsl:value-of>
            </xsl:attribute> -->
            <xsl:if test="position() = 1">
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
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping='yes'>content-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="row">
                <xsl:apply-templates select='News'></xsl:apply-templates>
            </div>
            <div class="viewMore" data-aos="fade-up"><a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
            <xsl:value-of select="/ZoneList/ViewMoreText"></xsl:value-of></a></div>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="col-sm-6 col-lg-3 item" data-aos="fade-down">
            <xsl:attribute name="data-aos-delay">
                <xsl:value-of select="200 * position()"></xsl:value-of>
            </xsl:attribute>
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
                        <div class="text">
                            <h4><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h4>
                            <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                        </div>
                        <div class="time"> <em class="fas fa-calendar-alt"></em>
                            <time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
                        </div>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>