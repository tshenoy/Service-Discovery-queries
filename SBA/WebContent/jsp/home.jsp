<link href='../css/mystyle.css' rel='stylesheet' type='text/css' />
<%
	session.setAttribute("pg", "home");
%>

<script>
	clearTimeout(to);
</script>
<body>
	<div class='main'>
		<table height=100% width=100% class='content'>

			<%@include file='header.jsp'%>

			<%@include file='menu.jsp'%>
			<tr height=80% valign="top" align="left">
				<td>
					<div class='desc'>
						<h3>Project Abstract</h3>
						The identification of services during the execution of
						service-based applications to replace services in them that are no
						longer available and/or fail to satisfy certain requirements is an
						important issue. In this paper, we present a framework to support
						runtime service discovery. This framework can execute service
						discovery queries in pull and push mode. In pull mode, it executes
						queries when a need for finding a replacement service arises. In
						push mode, queries are subscribed to the framework to be executed
						proactively and, in parallel with the operation of the
						application, to identify adequate services that could be used if
						the need for replacing a service arises.

						
					</div>

				</td>
			</tr>

			<%@include file='footer.jsp'%>

		</table>
	</div>
</body>