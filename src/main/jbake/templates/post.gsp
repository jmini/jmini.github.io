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

    <p><em>${content.date.format("dd MMMM yyyy")}</em></p>

    <p>${content.body}</p>

    <hr />
    <a href="${urlsrc}">Post source on GitHub</a> 
    <hr />

<%include "footer.gsp"%>