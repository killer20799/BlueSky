<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="tuyensinh bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='TS1'></xsl:apply-templates>
            </div>
        </div>
        <div class="process bluesky-section">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode='TS2'></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='TS1'>
        <xsl:if test="position() = 1">
            <h1 class="main-title"><xsl:value-of select="Title"></xsl:value-of></h1>
            <xsl:apply-templates select='News' mode='TS1-News'></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TS1-News'>
        <div class="row">
            <div class="col-lg-5">
                <div class="boximg">
                    <img>
                        <xsl:attribute name='src'>
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="Title">
                    <h2><xsl:value-of select="Title"></xsl:value-of></h2>
                </div>
                <div class="FullContent">
                    <xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='Zone' mode='TS2'>
        <xsl:if test="position() = 2">
            <div class="sub-title">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
                <p><xsl:value-of select="Description"></xsl:value-of></p>
            </div>
            <div class="row">
                <xsl:apply-templates select='News' mode='TS2-News'></xsl:apply-templates>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode='TS2-News'>
        <div class="col-lg-4">
            <figure>
                <div class="boxicon">
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
                    <p>
                        <strong>
                        <xsl:value-of select="Title"></xsl:value-of>: 
                        </strong><xsl:value-of select="SubTitle"></xsl:value-of></p>
                        <a class="fa-long-arrow-alt-right">
                            <xsl:attribute name='href'>
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="/ZoneList/ViewDetail"></xsl:value-of>
                        </a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>