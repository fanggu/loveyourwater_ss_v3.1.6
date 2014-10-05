<aside class="sidebar unit size1of3">
    <% if $Menu(2) %>
		<nav class="secondary">
			<% with $Level(1) %>
				<h3>
					$MenuTitle
				</h3>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
        <% end_if %>
        <article>
            <h3>Clean-ups are a great way to learn about the issue while being part of the solution. Use this page to find what’s happening near you. If there’s nothing on, create your own event.  </h3>
        </article>
</aside>
