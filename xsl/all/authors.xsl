<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:value-of select="proceedings/contents/article[1]"/>
        <xsl:value-of select="proceedings/contents/article[authorlike(s)]"/>
    </xsl:template>

</xsl:stylesheet>