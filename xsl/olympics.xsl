<?xml version="1.0"?>
<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head />
            <body>
                <h1>British Gold Medals</h1>
                    <xsl:value-of select="count(/events/event/athletes/athlete [medal='gold'] [country='GB'])"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
