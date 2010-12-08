<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template name="user.footer.content">
<xsl:text disable-output-escaping="yes">
<![CDATA[
<script type="text/javascript">
var titles = document.body.getElementsByTagName("h1");
var pageId;
if ( titles.length > 0 )
{
  pageId = "manual";
}
else
{
  titles = document.body.getElementsByTagName("h2");
  if ( titles.length > 0 )
  {
    pageId = titles[0].firstChild.getAttribute("id");
  }
}
// use pageId for disqus here, if it's defined

// GA
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-1192232-16']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>  
]]>
</xsl:text>
</xsl:template>

</xsl:stylesheet>

