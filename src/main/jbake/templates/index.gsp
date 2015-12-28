<%include "header.gsp"%>

    <%include "menu.gsp"%>

    <div class="page-header">
        <h1>Last Blog posts</h1>
    </div>
    <ul>
    <%published_posts.each {post ->%>
        <li>${new java.text.SimpleDateFormat("dd MMM yyyy", Locale.ENGLISH).format(post.date)} &raquo; <a href="${post.uri}">${post.title}</a></li>
    <%}%>
    </ul>

    <hr />

    <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

    <hr />
    <h2>Sources</h2>
    <p>Sources and read-me for this blog are <a href="https://github.com/jmini/jmini.github.io">hosted on GitHub</a>.</p>

    <hr />
    <h2>License</h2>
    <p>Except where otherwise noted, the content of this blog is under the <a href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International license</a> (posts, original images&#8230;).

<%include "footer.gsp"%>