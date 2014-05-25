<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:variable name="xx">
        <html>
            <body>
                <xsl:call-template name="show_title">
                    <xsl:with-param name="title" />
                </xsl:call-template>
            </body>
        </html>
    </xsl:variable>

    <xsl:template name="show_title" match="/">
        <xsl:param name="title" />
        <xsl:for-each select="catalog/cd">
            <p>Title: <xsl:value-of select="$title"></xsl:value-of></p>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet> 