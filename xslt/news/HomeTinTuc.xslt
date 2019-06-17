<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="home-1">
            <div class="container">
                <div class="wrapper">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='News'>
        <div class="swiper-slide">
            <div class="item">
                <div class="time">
                    <h5><xsl:value-of select="CreatedDD"></xsl:value-of></h5>
                    <p><xsl:value-of select="CreatedMM"></xsl:value-of> - <xsl:value-of select="CreatedYYYY"></xsl:value-of></p>
                </div>
                <div class="info">
                    <div class="image">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="text">
                        <p><xsl:value-of select="Title"></xsl:value-of> <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of></p>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>