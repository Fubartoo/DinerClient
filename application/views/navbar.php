<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls=""navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">{pagetitle}</a>
		</div>

		<div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
				<li><a href="/">Home</a></li>
				<li><a href="/hiring">Hiring</a></li>
				<li><a href="/shopping">Shopping</a></li>
				<li><a href="/crud">Menu Maintenance</a></li>
				<li><a href="/toggle">Toggle Role</a></li>
            </ul>
			<p class="navbar-text navbar-right">Role: {userrole}</p>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>