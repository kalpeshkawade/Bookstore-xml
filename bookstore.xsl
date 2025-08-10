<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>BookStore</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 20px;}
          h1 { color: violet; text-align:center;}
          table{ border: 2px solid violet; margin:auto;}
          td, th { border: 1px solid black; padding: 6px; }
          
        </style>
      </head>
      <body>
        <h1>Sanjivani BookStore</h1>
        <table>
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Genre</th>
          </tr>
          <xsl:for-each select="bookstore/detail">
            <tr>
              <td><xsl:value-of select="title" /></td>
              <td><xsl:value-of select="author" /></td>
              <td><xsl:value-of select="price" /></td>
              <td><xsl:value-of select="genre" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>