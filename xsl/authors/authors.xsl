<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

        <xsl:template match="/">
            <html>
            <head>authors</head>
            <body>
                <h2>articles with more than three authors</h2>
                <p>/proceedings/contents/article[count(author)>3]</p>
            <xsl:for-each select="/proceedings/contents/article[count(author)>3]">
                <p>
                    <xsl:value-of select="count(author)"/>
                    <xsl:for-each select="author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </p>


            </xsl:for-each>
            </body>

            </html>
        </xsl:template>

</xsl:stylesheet>