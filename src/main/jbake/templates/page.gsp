<%
def urlsrc = com.bsiag.htmltools.jbake.HtmlUtility.computeGitViewerUrl(content.file, 'jmini.github.io', "https://github.com/jmini/jmini.github.io/tree/develop")
%>
<%include "header.gsp"%>

    <%include "menu.gsp"%>

    <div class="page-header">
        <h1>${content.title}</h1>
    </div>

    <p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>

    <% print com.bsiag.htmltools.jbake.HtmlUtility.fixHtml(content.body, content.uri, content.uri) %>

    <hr />
    <a href="${urlsrc}">Page source on GitHub</a> 
    <hr />

<%include "footer.gsp"%>