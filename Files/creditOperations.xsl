<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Total</title>
                <style>
                    *{
                        margin:20px
                    }</style>
            </head>
            <body>
                <table border="1">
                    <tbody>
                        <tr>
                            <th>type</th>
                            <th>date</th>
                            <th>montant</th>
                            <th>description</th>
                        </tr>
                        <h4>Date Debut: <xsl:value-of select="/releve/operations/@dateDebut"/></h4>
                        <h4>Date Fin: <xsl:value-of select="/releve/operations/@dateFin"/></h4>
                        <xsl:for-each select="/releve/operations/operation[@type='CREDIT']">
                            <tr>
                                <td>
                                    <xsl:value-of select="@type"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@date"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@montant"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@description"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
