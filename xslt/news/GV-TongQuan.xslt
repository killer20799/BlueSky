<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
        <div class="row tongquan">
           <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match='News'>
         <div class="col-lg-5">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="boximg">
                                <img>
                                    <xsl:attribute name='src'>
                                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name='alt'>
                                        <xsl:value-of select='Title'></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="col-lg-7">
                <div class="Title">
                    <h2><xsl:value-of select='Title'></xsl:value-of></h2>
                </div>
                <div class="FullContent">
                    <xsl:value-of select='FullContent' disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
    </xsl:template>
</xsl:stylesheet>