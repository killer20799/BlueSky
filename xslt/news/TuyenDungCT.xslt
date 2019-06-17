<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
<xsl:output method='html' indent='yes'/>
    <xsl:template match='/'>
        <section class="tuyendung-ct bluesky-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="sub-title">
                            <h2><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h2>
                            <xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
                        </div>
                        <div class="fullContent">
                            <div class="list-item">
                                <xsl:apply-templates select='/NewsDetail/NewsAttributes'></xsl:apply-templates>
                            </div>
                            <div class="BriefContent">
                            <xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping='yes'></xsl:value-of>
                            </div>
                            <div class="FullContent">
                                <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping='yes'></xsl:value-of>
                            </div>
                            <div class="link"><a class="ungtuyen" href="javascript:void(0)"><xsl:value-of select="/NewsDetail/Apply"></xsl:value-of></a>
                                <p>hoặc</p>
                                <a class="mauxinviec" download=''>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="/NewsDetail/FileUrl"></xsl:value-of>
                                    </xsl:attribute>
                                <xsl:value-of select="/NewsDetail/DownloadApp"></xsl:value-of><br /><span>(<xsl:value-of select="/NewsDetail/SubmitDirect"></xsl:value-of>)</span></a>
                            </div>
                            <div class="form-apply">
                                <iframe>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
                                    </xsl:attribute>
                                </iframe>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="tuyendung-nav">
                            <div class="heading">
                                <h3><xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of></h3>
                            </div>
                            <div class="list">
                                <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='NewsAttributes'>
        <div class="item">
            <div class="ic">
                <xsl:value-of select="Content" disable-output-escaping='yes'></xsl:value-of>
            </div>
            <div class="text">
                <p><xsl:value-of select="Title"></xsl:value-of></p>
            </div>
        </div>
    </xsl:template>
    <xsl:template match='NewsOther'>
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>