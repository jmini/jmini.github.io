<%
def urlsrc = content.file
def i = urlsrc.indexOf('jmini.github.io')
urlsrc = "https://github.com/jmini/jmini.github.io/tree/develop" + urlsrc.substring(i + 15).replaceAll('\\\\','/')
%>
<%include "header.gsp"%>

    <%include "menu.gsp"%>

    <div class="page-header">
        <h1>${content.title}</h1>
    </div>

    <p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>

    <p>${content.body}</p>

    <hr />
    <a href="${urlsrc}">Page source on GitHub</a> 
    <hr />

<%include "footer.gsp"%>