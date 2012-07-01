<aside>
	<% if Menu(2) %>
		<nav class="secondary">
			<h3>
				<% control Level(1) %>
				$Title
				<% end_control %>
			</h3>
			<% if Menu(2) %>
			<ul>
				<% control Menu(2) %>
				<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.ATT page"><span class="arrow">&rarr;</span><span class="text">$MenuTitle</span></a>
				<% if LinkOrSection = section %><% if liveChildren %>
					<ul>
						<% control liveChildren %>
						<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.ATT page"><span class="arrow">-</span><span class="text">$MenuTitle</span></a>
						<% if LinkOrSection = section %><% if liveChildren %>
							<ul>
								<% control liveChildren %>
								<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.ATT page"><span class="arrow">.</span><span class="text">$MenuTitle</span></a>
								<% if LinkOrSection = section %><% if liveChildren %>
									<ul>
										<% control liveChildren %>
										<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.ATT page"><span class="arrow"></span><span class="text">$MenuTitle</span></a></li>
										<% end_control %>
									</ul>
								<% end_if %><% end_if %>
								</li>
								<% end_control %>
							</ul>
						<% end_if %><% end_if %>
						</li>
						<% end_control %>
					</ul>
				<% end_if %><% end_if %>
				</li>
				<% end_control %>
			</ul>
			<% end_if %>
		</nav>
	<% end_if %>
</aside>
