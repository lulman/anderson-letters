<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="1.0" encoding="iso-8859-1" indent="no" media-type="text/html"/>
      
<!-- This style sheet is divided into the following sections:
   
   HTML WRAPPER
   MAJOR STRUCTURES  of the text (front, div1, back)
   PAGE, COLUMN, AND LINE BREAKS
   METADATA SUMMARY ITEMS
   MSS ITEMS
   MISCELLANEOUS
   IMAGES
   NOTES
   LETTERS
   TITLES
   TYPOGRAPHY
   TABLES
   LISTS
            
-->
<!-- HTML WRAPPER: Note that this section (between the xsl:template tags) 
places the entire contents enclosed within the text tags of your document into 
the body tags of the Web page. -->
   <xsl:template match="/">
      <html>
         <head>
            <title>
               <xsl:value-of select="//text/front/div1/head/bibl/title"/>
            </title>
            <style>                
	      body { 
  	          margin:30px; 
	          background-color: #FFFFFF; 
	          width: 60em;
             font-family: Verdana, Arial, Helvetica, sans-serif; 
		  }

	      p { 
		  }

	      div.pagebreak {
               clear: both;
	          margin-top: 25px;
		  margin-bottom: 0px;
		  text-align: center;
		  }
         fl_right {
               float: right;
        }

	      hr { 
	          color: #888833;
             clear: right;
		  }

               div#letter {
               border: 3px groove #666666;
               padding: 5px;
               }
               
               h1 {
		  }

	      h2 {
		  }

	      sup {
		  } 

	      img {
	          margin-top: 5px;
	          margin-bottom: 5px;
		  }
          
        .nocancel {
               text-decoration: none;
               color: #000000;
        }
          
        .cancel {
               text-decoration: line-through;
               color: #FF0000;
               }
               div.fl_mov_right {
               float: right;
               text-align: center;
               width: 320;
               margin: 5px 5px 5px 5px;
               }
               div.fl_aud_right {
               float: right;
               width: 200;
               text-align: center;
               margin: 5px 5px 5px 5px;
               }
               div.fl_img_right {
               float: right;
               text-align: center;
               margin: 5px 5px 5px 5px;
               }
               
          .ProjectTitle {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 16pt;
	font-style: normal;
	font-weight: bolder;
	line-height: 18pt;
}

.hang {margin-left: 30px; text-indent: -15px;
} 

             
</style>
         </head>
         <body background="https://images.asc.ohio-state.edu/is/image/mediamanager/9/9e9b8053-ad96-4c23-a413-d4a1237fff0e.jpg?scale=0.5&amp;rgn=475,55,175,175&amp;fmt=png">
<p align="center"><span class="ProjectTitle">My Dear Wife</span><br/>
   Letters from William B. Anderson, Ohio riverboat captain, to his wife Louisa, 1862-1864.</p>
<hr/>
            <p align="center"><a href="http://people.cohums.ohio-state.edu/ulman1/WBAnderson_Letters/" target="self">
               Home</a> | <A>
                  <xsl:attribute name="HREF">http://suse1.cohums.ohio-state.edu/tomcat/cocoon/eng569/<xsl:value-of select="TEI.2/@id"/>.WBA_edintro</xsl:attribute>
                  <xsl:attribute name="target">self</xsl:attribute>
                  Editorial Introduction </A>  
               | Views of this letter:
    <A>
       <xsl:attribute name="HREF">http://suse1.cohums.ohio-state.edu/tomcat/cocoon/eng569/<xsl:value-of select="TEI.2/@id"/>.WBA_reading</xsl:attribute>
         <xsl:attribute name="target">self</xsl:attribute>
       Reading</A> |
               <strong>Diplomatic (</strong> <a href="#view">About the current view</a>)
               <!-- | 
               <A>
                  <xsl:attribute
                     name="HREF">http://suse1.cohums.ohio-state.edu/tomcat/cocoon/ulman1/<xsl:value-of
                        select="TEI.2/@id"/>.sideByside</xsl:attribute>
                  <xsl:attribute name="target">self</xsl:attribute>
                  Text / Page Image</A>
               -->
               <br/><br/><strong>This edition is still being developed. Please do not cite until this notice is
                  removed.</strong>
 </p>
<hr/>
            <xsl:apply-templates select="//text"/>
            
<hr/><p><strong>About this View of the Letters</strong></p>
            <p><a name="view"/>In the text of the letter, line, paragraph, and page breaks follow those in the 
               manuscript. Spelling, punctuation, capitalization, and abbreviations are reported as they appear 
               in the manuscript. Text highlighted by Anderson with an underscore is underscored in the transcription. 
               Text canceled by Anderson is presented in a red, strikethrough font. Text added by Anderson between 
               lines is preceded by an arrow indicating whether the addition is above or below the line and followed 
               by an arrow indicating the return to the line (&#x2191; &#x2193;); text added in the margins is preceded and followed by 
               a vertical bar (&#x007C;). All material added by the editor is surrounded by square brackets: uncertain readings 
               are enclosed in square brackets and followed by a question mark; gaps in the transcription are explained 
               within the brackets; and text supplied by the editor for clarity are set in italics and surrounded by 
               square brackets. Links to external materials are colored and underlined. Finally, the 
            background consists of a tiled detail image from one of the Anderson letters.</p>
<hr/>
            <p align="left"><a href="http://people.cohums.ohio-state.edu/ulman1/WBAnderson_Letters/" target="self">Home</a> | 
   Previous Letter: <xsl:element name="a">
      <xsl:attribute name="href">http://suse1.cohums.ohio-state.edu/tomcat/cocoon/eng569/<xsl:value-of select="//front/div1/p[2]/xref[@type='prev']/@url"/>.WBA_diplomatic</xsl:attribute>
      <xsl:value-of select="//front/div1/p[2]/xref[@type='prev']"/>
   </xsl:element> | 
   Next Letter: <xsl:element name="a">
      <xsl:attribute name="href">http://suse1.cohums.ohio-state.edu/tomcat/cocoon/eng569/<xsl:value-of select="//front/div1/p[2]/xref[@type='next']/@url"/>.WBA_diplomatic</xsl:attribute>
      <xsl:value-of select="//front/div1/p[2]/xref[@type='next']"/>
   </xsl:element>
   
   <br/><br/>
<em>Created</em>: <xsl:apply-templates select="//profileDesc/creation/date"/><br/>
<em>Last Updated</em>: <xsl:apply-templates select="//revisionDesc/change[1]/date"/>
</p>   
            <p align="center">
               <xsl:value-of select="//availability/p[@id='CreativeCommons']" disable-output-escaping="yes" />
            </p>
         </body>
      </html>
   </xsl:template>
   
   <!-- MAJOR STRUCTURES: These elements include the front, back, and div1 
      elements of you XML documents in the result tree of your output.-->
   
   <xsl:template match="div1">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="back">
         <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="body">
      <xsl:element name="div"><xsl:attribute name="id">letter</xsl:attribute>
         <xsl:apply-templates/>
      </xsl:element>
   </xsl:template> 
   <xsl:template match="front">
      <xsl:apply-templates/>
   </xsl:template>
   
   <!-- PAGE, COLUMN, AND LINE BREAKS: These template rules determine how page breaks and
      line breaks will appear, or whether they will appear, in your Web page. -->
   
   <xsl:template match="pb">
      <div class="pagebreak">
        [Page&#xA0;-&#xA0;<xsl:value-of select="@n"/>&#xA0;
        (<a><xsl:attribute name="HREF">http://people.cohums.ohio-state.edu/ulman1/WBAnderson_Letters/AndersonZoom.cfm?file=<xsl:value-of select="@mmid"/>.jpg</xsl:attribute><xsl:attribute name="target">top</xsl:attribute>click to open page image in a new window</a>)]<br/>
      </div>
      <!-- Removed by -->
      <!-- <HR width="90%"/> -->
   </xsl:template>
   <xsl:template match="lb">
      <br/>
      <a><xsl:attribute name="name"><xsl:value-of select="@n"/></xsl:attribute></a>
      <xsl:value-of select="@n"/>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;
   </xsl:template>
   <xsl:template match="del/lb">
      <span class="nocancel"><br/>
      <a><xsl:attribute name="name"><xsl:value-of select="@n"/></xsl:attribute></a>
      <xsl:value-of select="@n"/>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</span>
   </xsl:template>
   <xsl:template match="closer/lb">
      <br/>
      <a><xsl:attribute name="name"><xsl:value-of select="@n"/></xsl:attribute></a>
       <xsl:value-of select="@n"/>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; 
   </xsl:template>
   <xsl:template match="seg[@type='softhyphen']">
      <xsl:apply-templates/>
   </xsl:template>
   
   <!-- METADATA SUMMARY ITEMS: This section includes the title and extent 
      from the front section of your text in your output. -->
   
   <xsl:template match="front/div1/head/bibl/title">
      <xsl:apply-templates/>
</xsl:template>
   <xsl:template match="front/div1/head/bibl/date">
      (<xsl:apply-templates/>).  
   </xsl:template>
   <xsl:template match="front/div1/head/bibl/abbr">
     <xsl:apply-templates/>.
   </xsl:template>
   <xsl:template match="front/div1/head/bibl/extent">
       <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="front/div1/p[1]">
      <p>
         <strong>Summary: </strong><xsl:apply-templates/>
      </p>
      <p>Edited by <xsl:value-of select="//fileDesc/titleStmt/editor"/></p><hr/>
   </xsl:template>
   <xsl:template match="//front/div1/p[2]"></xsl:template>
   <xsl:template match="idno[@rend='suppress']"></xsl:template>
   
   <!-- MSS ITEMS: These rules process various tags particularly relevant to 
      transcriptions of primary handwritten materials. -->
   
   <xsl:template match="hand">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- Hanshifts -->
   <xsl:template match="handshift">
      [
<xsl:value-of select="@new"/>
      ]
</xsl:template>
   <!-- Gaps in your transcript of the source text (unrecoverable 
   cancellations, tears in the page, and so on). -->
<xsl:template match="gap"> <xsl:apply-templates/>[ .&#xA0;.&#xA0;. ]</xsl:template>
  
    <!-- Additions by the author or another hand. -->
   <xsl:template match="add">
      &#x2191;
         <xsl:apply-templates/>
      &#x2193;
   </xsl:template>
 <xsl:template match="add[@place='infralinear']">
    &#x2193;<xsl:apply-templates/>&#x2191;
		</xsl:template>
   <xsl:template match="add[@place='top-margin']">
      | <xsl:apply-templates/> |
   </xsl:template>
   <!-- Recoverable deletions by the author or another hand -->
   <xsl:template match="del">
      <span class="cancel">
            <xsl:apply-templates/>
      </span>
   </xsl:template>
   <!-- 
		<xsl:template match="del">
		</xsl:template> -->
   <!-- Unclear passages. -->
   <xsl:template match="unclear"> 
         [<xsl:apply-templates/>?]
       </xsl:template>
   <!-- 
	<xsl:template match="orig">
         <xsl:apply-templates/> 
	</xsl:template> -->
   <xsl:template match="orig">
      <xsl:value-of select="@reg"/>
   </xsl:template>
   <xsl:template match="orig[@rend='linebreak']">
      <xsl:value-of select="@reg"/>
      <br/>
   </xsl:template>
   <!-- Nonstandard or erroneous text for which you have encoded a correct 
   alternative. -->
   <xsl:template match="sic">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- 	<xsl:template match="sic">
		<xsl:value-of select="@corr"/>
		</xsl:template> -->
   <xsl:template match="corr">
      <xsl:value-of select="@sic"/> [sic] </xsl:template>
   <xsl:template match="supplied"><em>[<xsl:apply-templates/>]</em></xsl:template>
   <!-- 	<xsl:template match="corr">
        	 <xsl:apply-templates/> 
		</xsl:template> -->
		 <!--
   <xsl:template match="fw">
       <p>
         <xsl:apply-templates/>
       </p>
   </xsl:template>
		 -->
   
   <!--MISCELLANEOUS-->
   
   <!-- Quotes -->
   <xsl:template match="q">&quot;<xsl:apply-templates/>&quot;</xsl:template>
   <!-- Abbreviations -->
   <xsl:template match="abbr">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- Passages in languages other than your document's base language. -->
   <xsl:template match="foreign">
      <xsl:apply-templates/>
   </xsl:template>
   
   <!-- DIV HEADS -->
   
   <xsl:template match="div1[@type='note']/head">
         <xsl:apply-templates/>
   </xsl:template>
   
   <!-- IMAGES (creates a link to a Media Manager image or an image on another 
      Web site [use caution with the latter]). -->
   
   <xsl:template match="figure[@rend='link']">
             [<a><xsl:attribute name="HREF">
               <xsl:value-of select="figDesc/xref/@url"/></xsl:attribute>
            <xsl:attribute name="alt"><xsl:value-of select="head"/></xsl:attribute>
                <xsl:value-of select="figDesc/xref"/></a>].
   </xsl:template>
   
   <xsl:template match="figure[@rend='embedImg']">
      <div class="fl_img_right">
      <img><xsl:attribute name="src">
         <xsl:value-of select="figDesc/xref/@url"/></xsl:attribute>
         <xsl:attribute name="alt"><xsl:value-of select="head"/></xsl:attribute>
      </img><br/><xsl:value-of select="head"/>
      </div>
   </xsl:template>
   
   <xsl:template match="figure[@rend='embedMov']">
         <div class="fl_mov_right">
            <object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" width="320" height="256">
               <xsl:element name="param">
                  <xsl:attribute name="name">src</xsl:attribute>
                  <xsl:attribute name="value"><xsl:value-of select="figDesc/xref/@url"/></xsl:attribute>
               </xsl:element>
               <param name="autoplay" value="false"/>
               <param name="controller" value="true"/>
               <param name="scale" value="aspect"/>
               <!--<xsl:element name="param">
                  <xsl:attribute name="name">starttime</xsl:attribute>
                  <xsl:attribute name="value"><xsl:value-of select="lb/@starttime"/></xsl:attribute>
               </xsl:element>
               <xsl:element name="param">
                  <xsl:attribute name="name">endtime</xsl:attribute>
                  <xsl:attribute name="value"><xsl:value-of select="lb/@endtime"/></xsl:attribute>
               </xsl:element>-->
               <xsl:element name="embed">
                  <xsl:attribute name="height">256</xsl:attribute>
                  <xsl:attribute name="width">320</xsl:attribute>
                  <xsl:attribute name="src"><xsl:value-of select="figDesc/xref/@url"/></xsl:attribute>
                  <xsl:attribute name="pluginspace">http://www.apple.com/quicktime/download/</xsl:attribute>
                  <xsl:attribute name="autoplay">false</xsl:attribute>
                  <xsl:attribute name="type">video/quicktime</xsl:attribute>
                  <xsl:attribute name="controller">true</xsl:attribute>
                  <xsl:attribute name="scale">aspect</xsl:attribute>
                  <!--<xsl:attribute name="starttime"><xsl:value-of select="lb/@starttime"/></xsl:attribute>
                  <xsl:attribute name="endtime"><xsl:value-of select="lb/@endtime"/></xsl:attribute>-->
               </xsl:element>
            </object><br/>
            <xsl:value-of select="head"/><br/>
         </div>
     </xsl:template>
   <xsl:template match="figure[@rend='embedAud']">
      <div class="fl_aud_right">
         <object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" width="200" height="24">
            <xsl:element name="param">
               <xsl:attribute name="name">src</xsl:attribute>
               <xsl:attribute name="value"><xsl:value-of select="figDesc/xref/@url"/></xsl:attribute>
            </xsl:element>
            <param name="autoplay" value="false"/>
            <param name="controller" value="true"/>
            <param name="scale" value="aspect"/>
            <!--<xsl:element name="param">
               <xsl:attribute name="name">starttime</xsl:attribute>
               <xsl:attribute name="value"><xsl:value-of select="lb/@starttime"/></xsl:attribute>
               </xsl:element>
               <xsl:element name="param">
               <xsl:attribute name="name">endtime</xsl:attribute>
               <xsl:attribute name="value"><xsl:value-of select="lb/@endtime"/></xsl:attribute>
               </xsl:element>-->
            <xsl:element name="embed">
               <xsl:attribute name="height">24</xsl:attribute>
               <xsl:attribute name="width">200</xsl:attribute>
               <xsl:attribute name="src"><xsl:value-of select="figDesc/xref/@url"/></xsl:attribute>
               <xsl:attribute name="pluginspace">http://www.apple.com/quicktime/download/</xsl:attribute>
               <xsl:attribute name="autoplay">false</xsl:attribute>
               <xsl:attribute name="type">video/quicktime</xsl:attribute>
               <xsl:attribute name="controller">true</xsl:attribute>
               <xsl:attribute name="scale">aspect</xsl:attribute>
               <!--<xsl:attribute name="starttime"><xsl:value-of select="lb/@starttime"/></xsl:attribute>
                  <xsl:attribute name="endtime"><xsl:value-of select="lb/@endtime"/></xsl:attribute>-->
            </xsl:element>
         </object><br/>
         <xsl:value-of select="head"/><br/>
      </div>
   </xsl:template>   
   <!-- 	<xsl:template match="figure">
	<A><xsl:attribute name="HREF"><xsl:value-of select="@entity"/>.jpg
	</xsl:attribute><center>
	<img><xsl:attribute name="src"><xsl:value-of select="@entity"/>.gif
	</xsl:attribute></img></center></A><br/>
	</xsl:template>     -->
   <!-- <xsl:template match="figDesc"></xsl:template>-->
   
   <!-- NOTES -->
   
   <xsl:template match="back/div1">
       <hr/>
       <xsl:apply-templates/>
       <br/>
   </xsl:template>
   <xsl:template match="back/div1/head">
      <strong><xsl:apply-templates></xsl:apply-templates></strong>
   </xsl:template>
   <xsl:template match="back/div1/listBibl/head">
      <strong><xsl:apply-templates></xsl:apply-templates></strong>
   </xsl:template>
   <xsl:template match="note[@target]">
      <a><xsl:attribute name="href">#<xsl:value-of select="@target"/></xsl:attribute><sup><xsl:apply-templates/></sup></a>
   </xsl:template>
   <xsl:template match="note[@id]">
      <p class="hang"><a><xsl:attribute name="name"><xsl:value-of select="@id"/></xsl:attribute></a>
      <xsl:apply-templates/></p>
   </xsl:template>
   <xsl:template match="xref">
      <xsl:choose>
         <xsl:when test="parent=figDesc"></xsl:when>
         <xsl:otherwise>
            <a>
               <xsl:attribute name="href"><xsl:value-of select="@url"/>
               </xsl:attribute><xsl:apply-templates/>
            </a>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- 
   <xsl:template match="xref">
      <a>
        <xsl:attribute name="href"><xsl:value-of select="@url"/></xsl:attribute>
	<xsl:choose>
	  <xsl:when test="string-length(normalize-space(@imgref))">
	    <img>
	      <xsl:attribute name="src"><xsl:value-of select="@imgref"/></xsl:attribute>
	      <xsl:attribute name="alt"><xsl:apply-templates/></xsl:attribute>
	      <xsl:attribute name="border">0</xsl:attribute>
	      <xsl:attribute name="align">top</xsl:attribute>
	    </img>
          </xsl:when>
	  <xsl:when test="string-length(normalize-space(.)) > 0">
	      <xsl:apply-templates/>
	  </xsl:when>
          <xsl:otherwise>
	    <xsl:value-of select="@url"/>
          </xsl:otherwise>
	</xsl:choose>
      </a>
   </xsl:template>
   -->

<!-- LETTERS: Handles elements specific to letters. -->
   
<xsl:template match="opener">
     <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="salute"><xsl:apply-templates/></xsl:template>
   <xsl:template match="closer">
       <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="dateline">
         <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="dateline/date">
     <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="dateline/name">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="signed">
      <xsl:apply-templates/>
   </xsl:template>
   
<!-- TITLES -->
   
   <xsl:template match="//listBibl/bibl">
      <p class="hang">
         <xsl:apply-templates>
            <xsl:sort select="author"/>
            <xsl:sort select="title"/>
         </xsl:apply-templates>
      </p>
   </xsl:template>
   <xsl:template match="//listBibl/bibl/author">
      <xsl:apply-templates/>.
   </xsl:template>
   <xsl:template match="//listBibl/bibl/editor">
      <xsl:apply-templates/>.
   </xsl:template>
   <xsl:template match="//title"><cite><xsl:apply-templates/></cite></xsl:template>
   <xsl:template match="head/bibl/title"><xsl:apply-templates/></xsl:template>
   <xsl:template match="//listBibl/bibl/title[@level='a']">
      "<xsl:apply-templates/>."
   </xsl:template>
   <xsl:template match="//listBibl/bibl/title[@level='m']">
      <cite><xsl:apply-templates/></cite>.
   </xsl:template>
   <xsl:template match="//listBibl/bibl/pubPlace">
      <xsl:apply-templates/>: 
   </xsl:template>
   <xsl:template match="//listBibl/bibl/publisher">
      <xsl:apply-templates/>, 
   </xsl:template>
   <xsl:template match="//listBibl/bibl/date">
      <xsl:apply-templates/>.
   </xsl:template>
   <xsl:template match="//listBibl/bibl/titlePage">
      <center>
         <xsl:apply-templates/>
      </center>
   </xsl:template>
   <xsl:template match="//listBibl/bibl/biblScope[@type='URL']">
      &lt;<a><xsl:attribute name="href"><xsl:value-of select="."/></xsl:attribute><xsl:apply-templates/></a>&gt;.   
   </xsl:template>
   <xsl:template match="//listBibl/bibl/biblScope[@type='DateOfVisit']">
       Date of visit: <xsl:apply-templates/>.
   </xsl:template>
   <xsl:template match="titlePart[@type='main']">
      <h3>
         <xsl:apply-templates/>
      </h3>
   </xsl:template>
   <xsl:template match="titlePart[@type='sub']">
      <h4>
         <xsl:apply-templates/>
      </h4>
   </xsl:template>
   
   <!-- TYPOGRAPHY -->
   
   <xsl:template match="hi">
      <i>
         <xsl:apply-templates/>
      </i>
   </xsl:template>
   <xsl:template match="hi[@rend='bold']">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="hi[@rend='italics']">
      <I>
         <xsl:apply-templates/>
      </I>
   </xsl:template>
   <xsl:template match="hi[@rend='italic']">
      <I>
         <xsl:apply-templates/>
      </I>
   </xsl:template>
   <xsl:template match="hi[@rend='underline']">
      <U>
         <xsl:apply-templates/>
      </U>
   </xsl:template>
   <xsl:template match="hi[@rend='superscript']">
      <sup>
         <xsl:apply-templates/>
      </sup>
   </xsl:template>
   <xsl:template match="emph">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="emph[@rend='bold']">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="emph[@rend='italics']">
      <I>
         <xsl:apply-templates/>
      </I>
   </xsl:template>
   <xsl:template match="emph[@rend='italic']">
      <I>
         <xsl:apply-templates/>
      </I>
   </xsl:template>
   <xsl:template match="emph[@rend='underline']">
      <U>
         <xsl:apply-templates/>
      </U>
   </xsl:template>
   <xsl:template match="emph[@rend='sup']">
      <sup>
         <xsl:apply-templates/>
      </sup>
   </xsl:template>
   
   <!-- TABLES -->
   
   <xsl:template match="table">
      <table border="1">
         <xsl:apply-templates/>
      </table>
   </xsl:template>
   <xsl:template match="row">
      <tr>
         <xsl:apply-templates/>
      </tr>
   </xsl:template>
   <xsl:template match="cell">
      <td>
         <xsl:apply-templates/>
      </td>
   </xsl:template>
   <!-- LISTS -->
   <xsl:template match="list">
      <ul>
         <xsl:apply-templates/>
      </ul>
   </xsl:template>
   <xsl:template match="item">
      <li>
         <xsl:apply-templates/>
      </li>
      <br/>
      <br/>
   </xsl:template>
</xsl:stylesheet>
