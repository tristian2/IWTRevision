<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/diary">
        <html><body><table>
            <xsl:apply-templates select="event[repeat/@frequency='yearly']"/>
        </table></body></html>
    </xsl:template>

    <xsl:template match="event">
        <tr><td><xsl:value-of select="date"/></td>
            <td><xsl:value-of select="description"/></td></tr>
    </xsl:template>

</xsl:stylesheet>

