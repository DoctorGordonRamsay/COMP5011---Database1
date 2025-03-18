<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" indent="yes" doctype-system="transactions.dtd">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>transactions</h2>
                <table border ="1">
                    <tr>
                        <th>Prefix</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Date</th>
                        <th>Price</th>
                        <th>Gift shop</th>
                    </tr>
                    <xsl:for-each select="transaction">
                        <xsl:sort select="giftShop"/>
                        <xsl:sort select="transaction_date"/>
                        <tr>
                            <td><xsl:value-of select="prefix"/></td>
                            <td><xsl:value-of select="givenName"/></td>
                            <td><xsl:value-of select="lastName"/></td>
                            <td><xsl:value-of select="transaction_date"/></td>
                            <td><xsl:value-of select="value"/></td>
                            <td><xsl:value-of select="giftShop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
    