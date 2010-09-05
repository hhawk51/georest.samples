<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>GeoREST Demo - Sheboygan Property Search Results</title>
  <link rel="stylesheet" type="text/css" href="/css/georest.css">
  <!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="/css/georest-ie6.css"><![endif]-->
  </head>
<body>
<div id="georest-container">
  <div id="georest-header">
      <h1 id="georest-title">GeoREST Demo - Sheboygan Property Search Results</h1>
      <a id="georest-logo" href="http://www.georest.org/"></a>
  </div>
  <div id="georest-content" class="georest-white">
    <p><a href="/">Home</a></p>
    <p>Your search returned multiple results.  Please choose from below or <a href="/property/index.html">search</a> again.
    <table class="border">
      <thead>
        <tr>
          <th>ID</th>
          <th>Address</th>
          <th>Property Report</th>
        </tr>
      </thead>
      <tbody>
    {{#PROPERTY}}
        <tr>
          <td>{{PROPERTY_Autogenerated_SDF_ID}}</td>
          <td>{{PROPERTY_RPROPAD}}</td>
          <td><a title="Property Report for {{PROPERTY_RPROPAD:html_escape}}" href="/rest/data/property/{{PROPERTY_Autogenerated_SDF_ID:url_query_escape}}.html">Property Report</a></td>
        </tr>
    {{/PROPERTY}}
        <tr>
          <td colspan="4" class="paging">
            {{#PREVIOUS_PAGE_SECTION}}<a href="{{PREVIOUS_PAGE}}">Previous</a>{{/PREVIOUS_PAGE_SECTION}}
            {{#NEXT_PAGE_SECTION}}<a class="page-right" href="{{NEXT_PAGE}}">Next</a>{{/NEXT_PAGE_SECTION}}
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
  </div>
  <div id="georest-footer"> 
    <div id="georest-footer-right"> 
      <a href="http://www.georest.org/">http://www.georest.org/</a> 
    </div> 
    <div id="georest-footer-left"> 
      Licensed under Creative Commons 3 CC-BY
    </div> 
  </div> 
</div>
</body>
</html>