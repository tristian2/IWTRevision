<?xml version="1.0"?>
<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head />
            <body>
                <h1>recipes with chocolate</h1>

                    <xsl:for-each select="/recipies/recipie/ingredients/ingredient">
                        <xsl:if test="description='chocolate'">
                            <h2><xsl:value-of select="../../name"></xsl:value-of></h2>
                            <xsl:for-each select="../../ingredients/ingredient">
                                <table>
                                    <tr>
                                        <td><xsl:value-of select="quantity"></xsl:value-of></td>
                                        <td><xsl:value-of select="description"></xsl:value-of></td>
                                    </tr>
                                </table>

                            </xsl:for-each>
                            <p><xsl:value-of select="../../method" /></p>
                        </xsl:if>
                    </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
