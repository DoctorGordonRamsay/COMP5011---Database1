<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
	<xsl:template match="transactions"> <!-- match transactions to root-->
		<transactions>
			<xsl:for-each select="transaction"> 
			
				<xsl:sort select="giftShop"/> <!-- sorts the list by gift shop-->
				<xsl:sort select="transaction_date"/> <!-- sorts the list by transactions date-->
				<giftShop><xsl:value-of select="giftShop"/></giftShop>	
					
					<transaction_date><xsl:value-of select="transaction_date"/></transaction_date>
						<transaction> <!-- Transaction information-->
							<transactionID><xsl:value-of select="transactionID"/></transactionID>
							<value currency="gbp"><xsl:value-of select="value"/></value>
						
							<xsl:variable name="custID" select="customerID"/>
							<xsl:variable name="customer" select="document('./retail_customers.xml')/customers/customer[customerID = $custID]"/>

							<customerID><xsl:value-of select="$custID"/></customerID><!-- Customer information-->
							<prefix><xsl:value-of select="$customer/prefix"/></prefix>
							<givenName><xsl:value-of select="$customer/givenName"/></givenName>
							<lastName><xsl:value-of select="$customer/lastName"/></lastName>
							<addressID><xsl:value-of select="$customer/addressID"/></addressID>
						</transaction>
					
				
			</xsl:for-each>
		</transactions>
		
    </xsl:template>

</xsl:stylesheet>