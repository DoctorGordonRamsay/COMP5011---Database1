<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
	<xsl:template match="transactions"> <!-- match transactions to root-->
	
		<transactions>
		
			<xsl:for-each select="transaction"> 
				<xsl:sort select="giftShop"/> <!-- sorts the list by gift shop-->
				<xsl:sort select="transaction_date"/> <!-- sorts the list by transactions date-->
				
				<transaction>
				
					<giftShop><xsl:value-of select="giftShop"/></giftShop>
					
						<customers> <!-- Customer information-->
					
							<prefix><xsl:value-of select="prefix"/></prefix>
							<givenName><xsl:value-of select="givenName"/></givenName>
							<lastName><xsl:value-of select="lastName"/></lastName>
							
						</customers>
						
					<transaction_date><xsl:value-of select="transaction_date"/></transaction_date>
					<value><xsl:value-of select="value"/></value>
					
				</transaction>
				
			</xsl:for-each>
			
		</transactions>
		
    </xsl:template>

</xsl:stylesheet>