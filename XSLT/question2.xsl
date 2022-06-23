<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/result">

        <html>

            <head>
                <title>XSLT example</title>
                
                <style>
                    #resultTable {
                        border-style: solid;
                        border-color: black;
                        border-width: 1px;
                        border-collapse: seperate;
                        border-spacing: 5px; 
                    }

                    #resultTable td {
                        border-style: dashed;
                        border-color: gray;
                        border-width: 1px;
                        padding: 10px;
                    }

                    .column1 {
                        text-align: right;
                        color: gray;
                        font-size: 15px;
                    }

                    .column2 {
                        text-align: left;
                        color: maroon;
                        font-size: 25px;
                    }
                    


                </style>
            </head>

            <body>
                <h1>Exam Result</h1>
                <table id="resultTable"> 
                    <tr>
                        <td class="column1">
                            Reference Number
                        </td>

                        <td class="column2">
                            <xsl:value-of select="@ref" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Exam Number
                        </td>

                        <td class="column2">
                            <xsl:value-of select="examId" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Contestant Number
                        </td>

                        <td class="column2">
                            <xsl:value-of select="contestantId" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Digital Signature 
                        </td>

                        <td class="column2">
                            <xsl:value-of select="digitalSignature" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Score
                        </td>

                        <td class="column2">
                            <xsl:value-of select="score" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                           Band
                        </td>

                        <td class="column2">
                            <xsl:value-of select="band" />
                        </td>
                    </tr>
                </table>    
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
