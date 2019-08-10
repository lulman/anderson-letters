<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" 
   xmlns:tei="http://www.tei-c.org/ns/1.0"
   exclude-result-prefixes="xd"
   version="2.0">
   <xd:doc scope="stylesheet">
      <xd:desc>
         <xd:p><xd:b>Created on:</xd:b> Jul 24, 2012</xd:p>
         <xd:p><xd:b>Author:</xd:b>H. Lewis Ulman</xd:p>
         <xd:p></xd:p>
      </xd:desc>
   </xd:doc>
   
   <!-- Declare variables that will "localize" references to them in LCSmith-Common.xsl -->
   
   <xsl:variable name="View">Facsimile/Text View</xsl:variable>
   <xsl:variable name="aboutView"> This presentation of the Anderson letters derives from the
      project's main XML file, anderson_letters.xml, transformed with anderson_common.xsl and
      anderson_view_splitview.xsl. In the text of the letter, line and page breaks follow those in
      the manuscript. Spelling, punctuation, capitalization, and abbreviations are reported as they
      appear in the manuscript. Text canceled by Anderson is presented in a red, strikethrough font.
      Uncertain readings are enclosed in square brackets and followed by a question mark. Text added
      by Anderson in the margins is surrounded by "pipe" characters (|) at the point in the main
      text that it appears to follow. Uncertain readings are enclosed in square brackets and followed by a
      question mark, and text supplied by the editor for clarity is set in italics and surrounded
      by square brackets.  Links to external materials are colored and underlined.
      Clicking on the page image opens a larger view of the page in a separate window.
   </xsl:variable>
   <xsl:variable name="bodyRule">
      body {
      font-family: 'Fanwood Text',georgia, serif;
      font-size: 1em;
      <!-- Expand body width to 1050 -->
      width: 1050px;
      margin-left: 50px;
      margin-right: 50px;
      margin-top: 100px;
      }
      .masthead {
      vertical-align: top;
      text-align:center;
      width:1050px;
      top:0;
      position: fixed;
      background-color: rgba(255, 255, 255, 1);
      color: rgba(1, 1, 1, 0.8);
      z-index:1;
      }
      #titleBar {
      vertical-align: top;
      width:1050px;
      position: relative;
      background-color: rgba(255, 255, 255, 1);
      color: rgba(1, 1, 1, 0.8);
      }
      
      .pageview {
      <!--Define space reserved beneath page image-->
      margin-bottom:325px;
      float:left;
      }
      .pagebreak {
      clear: both;
      }
   </xsl:variable>
   <xsl:variable name="navBarRule">
      #navBar {
      position: fixed;
      width: 150px;
      top:120px;
      float : left;
      text-align : left;
      <!--margin-left: 10px;-->
      margin-top:0px;
      background-color: rgba(255, 255, 255, 1);
      }
      #viewMenu {
      position: fixed;
      top:120px;
      left: 1115px;
      width:150px;
      margin-top: 0px;
      }
      .close {
      position: absolute;
      top: 90px;
      right: 260px;
      color: #f1f1f1;
      font-size: 36px;
      font-weight: bold;
      transition: 0.3s;
      z-index: 2;
      }
      .description {
      position: absolute;
      top: 90px;
      right: 690px;
      color: #f1f1f1;
      font-size: 16px;
      font-weight: bold;
      transition: 0.3s;
      z-index: 2;
      }
      .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 2; /* Sit on top */
      padding-top: 100px; /* Location of the box */
      left: 50px;
      top: 122px;
      width: 1050px; /* Full width */
      height: 90%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(100,100,100); /* Fallback color */
      background-color: rgba(100,100,100,0.9); /* Black w/ opacity */
      }
   </xsl:variable>
   <xsl:variable name="maintextRule">
      #maintext {
      float:right;
      top:100px;
      width:860px;
      margin-top:35px;
      margin-left:20px;
      padding:5px;
      background-color: rgba(209,209,209, 0.5);
      -webkit-border-radius: 10px;
      -moz-border-radius: 10 px;
      border-radius: 10px;	
      }
      .contents-notes {
      float:right;
      width:860px;
      margin-top:35px;
      margin-left:20px;
      padding:5px;
      background-color: rgba(209,209,209, 0.5);
      -webkit-border-radius: 10px;
      -moz-border-radius: 10 px;
      border-radius: 10px;	
      }
      
   </xsl:variable>
   
   
   <!-- Include common style sheet for Lucius Clark Smith Diaries. -->
   
   <xsl:include href="anderson_common.xsl"/>
   
   
   <!-- Define templates required for the combined image/text view. -->
   
   <xsl:template match="tei:pb">
      <br/>
      <div class="pagebreak"> [Page&#xA0;-&#xA0;<xsl:number count="tei:pb" format="1"
         level="any" from="tei:div[@type='letter']"/>&#xA0; (<a><xsl:attribute
            name="href"><xsl:value-of select="@facs"/>.jpg</xsl:attribute><xsl:attribute name="target">top</xsl:attribute>click to open page image in a new window</a>)]<br/>
         <a>
            <xsl:attribute
               name="href"><xsl:value-of select="@facs"/>.jpg</xsl:attribute>
            <xsl:attribute name="target">top</xsl:attribute>
            <img class="pageview">
               <xsl:attribute name="src"><xsl:value-of select="@facs"/>_small.jpg</xsl:attribute>
               <xsl:attribute name="width">425</xsl:attribute>
            </img>
         </a>
      </div>
   </xsl:template>
   
   <xsl:template match="tei:lb">
      <br/>
      <a>
         <xsl:attribute name="name">
            <xsl:number count="tei:lb" format="0001" level="any" from="tei:div[@type='letter']"/>
         </xsl:attribute>
      </a>
      &#xA0;&#xA0;&#xA0;&#xA0;&#xA0;<xsl:number count="tei:lb" format="0001" level="any" from="tei:div[@type='letter']"/>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;
   </xsl:template>
   <xsl:template match="tei:fileDesc/tei:titleStmt/tei:title/tei:lb">
      <br/><xsl:apply-templates/>
   </xsl:template>   
   <xsl:template match="tei:seg[@type='softhyphen']">
      <xsl:apply-templates/>
   </xsl:template>    
   <xsl:template match="tei:add[@place='supralinear']"> &#x2191; <xsl:apply-templates/> &#x2193; </xsl:template>
   <xsl:template match="tei:add[@place='infralinear']"> &#x2193; <xsl:apply-templates/> &#x2191; </xsl:template>
   <xsl:template match="tei:add[@place='inline']">&#x7c;<xsl:apply-templates/>&#x7c;</xsl:template>
   <xsl:template match="tei:add[@place='margin']">|<xsl:apply-templates/>|</xsl:template>
   
   <!-- Deal with sic/corr tags -->
   <xsl:template match="tei:choice/tei:sic">
      <xsl:apply-templates/> [<xsl:element name="span"><xsl:attribute name="style">font-style: italic;</xsl:attribute>sic</xsl:element>]
   </xsl:template>
   <xsl:template match="tei:choice/tei:corr"/>
   
   <!-- Highlight recoverable cancelations -->
   <xsl:template match="tei:del"><span class="cancel"><xsl:apply-templates/></span></xsl:template>
   <xsl:template match="tei:p"><xsl:apply-templates/></xsl:template>
   <xsl:template match="tei:figure[@rend='embed']"/>
   
   
</xsl:stylesheet>