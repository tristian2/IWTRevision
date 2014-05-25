<?xml version="1.0"?>
<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/proceedings">
        <html>
            <head />
            <body>
                <h1><xsl:value-of select="name"/></h1>
                <p>
                    <xsl:for-each select="contents/article/author">
                        <xsl:value-of select="."/><br />
                    </xsl:for-each>
                </p>
                <xsl:apply-templates select="contents/article"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="article">
        <p>
            <xsl:apply-templates select="*"/>
        </p>
    </xsl:template>

    <xsl:template match="author">
        <xsl:value-of select="."/>,
    </xsl:template>

    <xsl:template match="title">
        <br />"<em><xsl:value-of select="."/></em>,"
    </xsl:template>

    <xsl:template match="pages">
        pp. <xsl:value-of select="."/>.
    </xsl:template>

</xsl:stylesheet>
