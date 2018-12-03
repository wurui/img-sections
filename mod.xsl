<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.img-sections">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-img-sections" ox-mod="img-sections">
            <ul>
	            <xsl:for-each select="data/ui-imglist/i">
	            	<li>
	            		<xsl:if test="title !='' ">
	            			<div class="text-box">
	            				<h2><xsl:value-of select="title" disable-output-escaping="yes" /></h2>
	            				
	            			</div>
	            		</xsl:if>
	            		<a href="{href}">
		            		<img src="{img}"/>
		            	</a>
	            	</li>
	            </xsl:for-each>
	        </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
