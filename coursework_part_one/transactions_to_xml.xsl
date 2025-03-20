<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" indent="yes" doctype-system="transactions.dtd">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
		<transactions>
			<xsl:for-each select="transactions/transaction">
				<xsl:sort select="transactions/transaction/giftShop"/>
				<xsl:sort select="transactions/transaction/transaction_date"/>
				<transaction>
					<giftShop><xsl:value-of select="giftShop"/></giftShop>
					<customers>
							<prefix><xsl:value-of select="customer/prefix"/></prefix>
							<givenName><xsl:value-of select="customer/givenName"/></givenName>
							<lastName><xsl:value-of select="customer/lastName"/></lastName>
						</customers>
						<transaction_date><xsl:value-of select="transactions/transaction/transaction_date"/></transaction_date>
						<value><xsl:value-of select="transactions/transaction/value"/></value>
				</transaction>
			</xsl:for-each>
		</transactions>
    </xsl:template>

</xsl:stylesheet>
    