<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/result">

        <html>
            <head>
                <title>XSLT example</title>
            </head>

            <body>
                <h1>
                    Exam Result
                </h1>

                
                Reference Number:
                <xsl:value-of select="@ref" />
                <br />

                EXAM NUMBER:
                <xsl:value-of select="examId" />
                <br />

                CONTESTENT NUMBER:
                <xsl:value-of select="contestantId" />
                <br />

                DIGITAL SIGNETURE:
                <xsl:value-of select="digitalSignature" />
                <br />
                
                SCORE:
                <xsl:value-of select="contestantId" />
                <br />
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
