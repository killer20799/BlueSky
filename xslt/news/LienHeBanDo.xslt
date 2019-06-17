<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <div class="lienhe bluesky-section">
            <div class="container">
                <h2 class="main-title"><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h2>
                <div class="row">
                    <div class="col-lg-5">
                        <div class="dealer">
                            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                            
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="map">
                            <iframe src="" width="100%" frameborder="0" style="border:0" allowfullscreen=''></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='News'>
        <div class="item">
            <xsl:attribute name="data-map">
                <xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
            </xsl:attribute>
            <div class="title">
                <div class="ic">
                <img alt="">
                    <xsl:if test="position() mod 4 = 1">
                        <xsl:attribute name="src">
                            <xsl:text disable-output-escaping='yes'>/Data/Sites/1/media/img/lienhe/location-1.png</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="(position() mod 4) = 2">
                        <xsl:attribute name="src">
                            <xsl:text disable-output-escaping='yes'>/Data/Sites/1/media/img/lienhe/location-2.png</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="(position() mod 4) = 3">
                        <xsl:attribute name="src">
                            <xsl:text disable-output-escaping='yes'>/Data/Sites/1/media/img/lienhe/location-3.png</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="(position() mod 4) = 0">
                        <xsl:attribute name="src">
                            <xsl:text disable-output-escaping='yes'>/Data/Sites/1/media/img/lienhe/location-4.png</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                </img>
                <em class="mdi mdi-home"></em></div>
                <div class="name">
                    <h5><xsl:value-of select="Title"></xsl:value-of></h5>
                </div>
            </div>
            <div class="content">
               <xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>