<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
		<div class="row">
			<div class="sub-title">
				<h2>
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h2>
				<p>
					<xsl:value-of select="/NewsList/ZoneDescription"></xsl:value-of>
				</p>
			</div>
			<div class="col">
				<div class="slide">
					<div class="row">
						<div class="col-lg-10 col-xl-10 main-slide">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select='/NewsList/News' mode='NewsSlide'></xsl:apply-templates>
									
								</div>
							</div>
							<div class="swiper-nav">
								<div class="swiper-btn swiper-left"><img src="/Data/Sites/1/media/left.png" alt=""></img></div>
								<div class="swiper-btn swiper-right"><img src="/Data/Sites/1/media/right.png" alt=""></img></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="other-achievement bluesky-section">
			<div class="row">
				<xsl:apply-templates select='/NewsList/News' mode='OtherNews'></xsl:apply-templates>
			</div>
		</div>
    </xsl:template>
	<xsl:template match='News' mode='NewsSlide'>
		<xsl:if test='position() &gt; 0 and position() &lt; 6'>
			<div class="swiper-slide">
				<figure>
					<div class="boximg">
						<img>
							<xsl:attribute name='src'>
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						<p><xsl:value-of select="Description"></xsl:value-of></p>
						<p><xsl:value-of select="FullContent"></xsl:value-of></p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode='OtherNews'>
		<xsl:if test='position() >= 6'>
			<div class="col-lg-6">
				<figure>
					<div class="boximg">
						<img>
							<xsl:attribute name='src'>
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						<p><xsl:value-of select="Description"></xsl:value-of></p>
						<p><xsl:value-of select="FullContent"></xsl:value-of></p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>