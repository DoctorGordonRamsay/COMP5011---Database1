<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" indent="yes" doctype-system="transactions.dtd">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="transactions">
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
                    <xsl:for-each select="transactions/transaction">
                        <xsl:sort select="transactions/transaction/giftShop"/>
                        <xsl:sort select="transactions/transaction/transaction_date"/>
                        <tr>
                            <td><xsl:value-of select="customers/customer/prefix"/></td>
                            <td><xsl:value-of select="customers/customer/givenName"/></td>
                            <td><xsl:value-of select="customers/customer/lastName"/></td>
                            <td><xsl:value-of select="transactions/transaction/transaction_date"/></td>
                            <td><xsl:value-of select="transactions/transaction/value"/></td>
                            <td><xsl:value-of select="transactions/transaction/giftShop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
    