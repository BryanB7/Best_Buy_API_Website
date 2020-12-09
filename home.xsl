<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
    <html>
        <head>
            <title>Best Buy PC Part Picker</title>
            <style>
                body, html{
                  height: 100%;
                  margin: 0;
                  font-family: Arial;
                  background-color: #091b35;
                  color: white;
                }
                .tablink {
                  background-color: #15325C;
                  color: white;
                  float: left;
                  border: none;
                  outline: none;
                  cursor: pointer;
                  padding: 14px 16px;
                  font-size: 17px;
                  width: 12.5%;
                }

                .tablink:hover {
                  background-color: #777;
                }
                .tabcontent {
                  display: none;
                  padding: 50px 20px;
                  height: 100%;
                }
                .topbar {
                    background-color: #555;
                }
            </style>
        </head>
        <body>
            <script src="code.js">//</script> <!-- javascript code -->

            <!-- Header Images -->
            <div class="topbar">
                <center>
                    <a href="https://www.bestbuy.com/"><img src="best_buy_logo.png" alt="" width="182" height="125"/></a>
                    <img src="ezpcbuilder_logo.png" alt="" width="700" height="125" style="padding-left: 25px; padding-right: 25px"/>
                    <a href="https://www.fiu.edu/"><img src="fiu_logo.png" alt="" width="500" height="125"/></a>
                </center>
            </div>
            <!-- Header Images -->

            <!-- Tab Declaration -->
            <button class="tablink" onclick="openPage('Home', this)" id="defaultOpen" >Home</button>
            <button class="tablink" onclick="openPage('Motherboard', this)">Motherboard</button>
            <button class="tablink" onclick="openPage('CPU', this)">CPU</button>
            <button class="tablink" onclick="openPage('CPUCooler', this)">CPU Cooler</button>
            <button class="tablink" onclick="openPage('RAM', this)">RAM</button>
            <button class="tablink" onclick="openPage('Storage', this)">Storage</button>
            <button class="tablink" onclick="openPage('GPU', this)">Graphics Card</button>
            <button class="tablink" onclick="openPage('PSU', this)">Power Supply</button>

            <center>
                <div id="Home" class="tabcontent" style="display:block">
                    <h3>Home</h3>
                    <p>Assigment #1 - COP 4814 Summer 2019</p>
                    <p>Andres Da Silva, Alexander Valerio, Bryan Bolanos, German Fernandez</p>
                    <p>The website is powered by Best Buy's free API. We make 7 individual requests determined by the category of products we are requesting.</p>
                    <p>The requests are received in separate JSON files which are then appended together and converted into one XML file.</p>
                    <p>The website uses XSL, inline CSS for styling, and a javascript script for the navigation functionality</p>
                </div>

            <!--
            <div id="Motherboard" class="tabcontent">
            <p>Motherboard:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'abcat0507008'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->

            <div id="Motherboard" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'abcat0507008'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>

            <!--
            <div id="CPU" class="tabcontent">
            <p>CPU:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'abcat0507010'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->


            <div id="CPU" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'abcat0507010'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>
            <!--
            <div id="CPUCooler" class="tabcontent">
            <p>CPU Cooler:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'pcmcat339900050006'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->

            <div id="CPUCooler" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'pcmcat339900050006'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>

            <!--
            <div id="RAM" class="tabcontent">
            <p>RAM:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'abcat0506000'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->


            <div id="RAM" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'abcat0506000'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>

            <!--
            <div id="Storage" class="tabcontent">
            <p>Storage:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'pcmcat270900050001'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->


            <div id="Storage" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'pcmcat270900050001'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>

            <!--
            <div id="GPU" class="tabcontent">
            <p>GPU:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'abcat0507002'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->

             <div id="GPU" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'abcat0507002'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>

                <!--
            <div id="PSU" class="tabcontent">
            <p>PSU:
                <table border = "1"><tr><th>Name</th><th>Sale Price</th><th>Avg Review</th><th>Link</th></tr>
                    <xsl:for-each select="info/products">
                        <xsl:sort select="salePrice" order = "descending" data-type="number"/>
                            <xsl:choose>
                                <xsl:when test="categoryPath/id = 'abcat0507009'">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td>$<xsl:value-of select="salePrice"/></td>
                                        <td><xsl:value-of select="customerReviewAverage"/></td>
                                        <td><xsl:value-of select="url"/></td>
                                    </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </p>
            </div>
            -->
                <div id="PSU" class ="tabcontent">
                    <table border = "4" cellspacing="0">

                        <xsl:for-each select="info/products">
                            <xsl:sort select="salePrice"  order = "descending" data-type="number"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="categoryPath/id = 'abcat0507009'">
                                        <td><a href='{url}'><img width="250" height="250" src="{image}" style="border:4px;border-color:black"/></a></td>
                                            <td width="400">
                                                <center>
                                                <p><a href='{url}' style="color:#FFFFFF;">White Link<xsl:value-of select="name"/></a></p>
                                                <p>Average Review: <xsl:value-of select="customerReviewAverage"/></p>
                                                <p>Sale Price: $<xsl:value-of select="regularPrice"/> MSRP: $<xsl:value-of select="regularPrice"/></p>
                                                <p>Manufacturer: <xsl:value-of select="manufacturer"/></p>
                                                </center>
                                            </td>
                                            <td width="600">
                                                <center><p><xsl:value-of select="longDescription"/></p></center>
                                            </td>
                                    </xsl:when>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>

                    </table>
                </div>
            </center>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
