<!-- HW-15.9 -->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-public="-//W3C//DTD HTML 5.0//EN" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Nutritional Facts - Grandma White's Cookies</title>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                        margin: 20px auto;
                        font-family: Arial, sans-serif;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #f4f4f4;
                    }
                </style>
            </head>
            <body>
                <h1 style="text-align: center;">Nutrition Facts for <xsl:value-of select="nutritionFacts/productName"/></h1>
                <table>
                    <tr>
                        <th>Category</th>
                        <th>Value</th>
                    </tr>
                    <tr>
                        <td>Serving Size</td>
                        <td><xsl:value-of select="nutritionFacts/servingSize"/></td>
                    </tr>
                    <tr>
                        <td>Total Calories</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/calories/total"/> kcal</td>
                    </tr>
                    <tr>
                        <td>Calories from Fat</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/calories/fatCalories"/> kcal</td>
                    </tr>
                    <tr>
                        <td>Total Fat</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/fat/totalFat"/></td>
                    </tr>
                    <tr>
                        <td>Saturated Fat</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/fat/saturatedFat"/></td>
                    </tr>
                    <tr>
                        <td>Cholesterol</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/cholesterol"/></td>
                    </tr>
                    <tr>
                        <td>Sodium</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/sodium"/></td>
                    </tr>
                    <tr>
                        <td>Total Carbohydrates</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/carbohydrates/totalCarbohydrates"/></td>
                    </tr>
                    <tr>
                        <td>Fiber</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/carbohydrates/fiber"/></td>
                    </tr>
                    <tr>
                        <td>Sugars</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/carbohydrates/sugars"/></td>
                    </tr>
                    <tr>
                        <td>Protein</td>
                        <td><xsl:value-of select="nutritionFacts/nutritionalValues/protein"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>