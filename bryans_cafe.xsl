<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Define the template for the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Bryan's Café Menu</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    .menu-item {
                        margin-bottom: 20px;
                        border-bottom: 1px solid #ccc;
                        padding-bottom: 10px;
                    }
                    img {
                        width: 150px;
                        height: auto;
                        display: block;
                    }
                </style>
            </head>
            <body>
                <h1>Bryan's Café Menu</h1>
                <xsl:for-each select="menu/item">
                    <div class="menu-item">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Price:</strong> <xsl:value-of select="price"/></p>
                        <p><strong>Description:</strong> <xsl:value-of select="description"/></p>
                        <img>
							<xsl:attribute name="src">
							<xsl:value-of select="image"/>
							</xsl:attribute>
							<xsl:attribute name="alt">Menu Item Image</xsl:attribute>
						</img>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
