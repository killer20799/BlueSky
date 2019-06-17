<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="NewsChild bluesky-section">
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select='NewsList/News'></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='News'>
        <div class="col-sm-6 col-lg-3 col-md-4">
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
                        </h2>
                        <p><xsl:value-of select="BriefContent"></xsl:value-of></p>
                        <date class="mdi mdi-calendar-range"><xsl:value-of select="CreatedDate"></xsl:value-of></date>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>