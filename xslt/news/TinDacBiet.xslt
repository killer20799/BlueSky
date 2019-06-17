<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="row">
            <div class="col-lg-6">
                <div class="main-news">
                    <div class="news-item">
                        <xsl:apply-templates select='/NewsList/News' mode='News-1'></xsl:apply-templates>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="normal-news">
                    <div class="row">
                        <xsl:apply-templates select='/NewsList/News' mode='News-2'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News' mode='News-1'>
        <xsl:if test="position() = 1">
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
                    <h2>
                        <a href="javascript:void(0)">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                    </h2>
                    <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                    <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                </figcaption>
            </figure>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='News-2'>
        <xsl:if test='position() > 1'>
            <div class="col-lg-6 col-sm-6">
                <div class="news-item">
                    <figure>
                        <div class="boximg">
                            <a>
                                <xsl:attribute name='href'>
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
                            <h2><a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of></a> <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></h2>
                            <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>