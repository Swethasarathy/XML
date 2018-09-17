<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<xsl:apply-templates select="report/student"/>
</body>
</html>
</xsl:template>
<xsl:template match="report/student">
<p>
<xsl:apply-templates select="@RegNo"/>
<xsl:apply-templates select="Name"/>
<xsl:apply-templates select="Dept"/>
</p>
</xsl:template>
<xsl:template match="@RegNo">
 <span style ="font-size:16px;font-family:Cambria;font-style:bold">Reg No : <span style="color:#16A085;font-size:16px;font-family:Cambria;font-style:bold">
<xsl:value-of select="."/></span></span>
<br />
</xsl:template>
<xsl:template match="Name">
 <span style ="font-size:16px;font-family:Cambria;font-style:bold">Name : <span style="color:#EC7063;font-size:16px;font-family:Cambria;font-style:bold">
<xsl:value-of select="."/></span></span>
<br />
</xsl:template>
<xsl:template match="Dept">
 <span style ="font-size:16px;font-family:Cambria;font-style:bold">Dept : <span style="color:#3498DB;font-size:16px;font-family:Cambria;font-style:bold">
<xsl:value-of select="."/></span></span>
<br />
</xsl:template>
</xsl:stylesheet>