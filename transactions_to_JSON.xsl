<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" indent="yes" encoding="UTF-8"/>
    
	<xsl:template match="transactions"> <!-- match transactions to root-->
		{	
			"transactions": [
				{
				<xsl:for-each select="transaction"> 
					<xsl:sort select="giftShop"/> <!-- sorts the list by gift shop-->
					<xsl:sort select="transaction_date"/> <!-- sorts the list by transactions date-->
					
					"giftShop": "<xsl:value-of select="giftShop"/>" [
						{
						"transaction_date": <xsl:value-of select="transaction_date"/> [
							{
							"transaction": [
								{
								<xsl:variable name="customer" select="document('./coursework_part_one/retail_customers.xml')/customers/customer"/>
								"transactionID": <xsl:value-of select="transactionID"/>,<!-- Transaction information-->
								"value": <xsl:value-of select="value"/>,
								"customerID": <xsl:value-of select="$customer/customerID"/>, <!-- Customer information-->
								"prefix": <xsl:value-of select="$customer/prefix"/>,
								"givenName": <xsl:value-of select="$customer/givenName"/>,
								"lastName": <xsl:value-of select="$customer/lastName"/>,
								"addressID": <xsl:value-of select="$customer/addressID"/>
								}
							]
							}
						]
						}
					]
				</xsl:for-each>
				}
			]
		}
		
    </xsl:template>

</xsl:stylesheet>