<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/audit">

        <html>
            <head>
                <title>XSLT example</title>
            </head>

            <body>
                <h1>Enrolment statistics</h1>

                <b>Campus: </b>
                <xsl:value-of select="@campus"/>
                <br/>

                <b>Year: </b>
                <xsl:value-of select="@year" />
                <br/>

                <b>Session: </b>
                <xsl:value-of select="@session" />
                <br/><br/>

                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Subject</th>
                        <th>Enrol</th>
                        <th>Withdrawn</th>
                    </tr>

                    <xsl:for-each select="subject">
                        <tr>
                            <td>
                                <xsl:value-of select="@sid"/>
                            </td>
                            <td>
                                <xsl:value-of select="code"/>
                                <xsl:text>:</xsl:text>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="statistics/enrol" />
                            </td>
                            <td>
                                <xsl:value-of select="statistics/withdrawn"/>
                            </td>
                        </tr>
                    </xsl:for-each>
            </table>
        </body>


    </html>
</xsl:template>
</xsl:stylesheet>
