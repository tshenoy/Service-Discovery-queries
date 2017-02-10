<link href='../css/mystyle.css' rel='stylesheet' type='text/css' />
<%
	session.setAttribute("pg", "admin");
%>

<script>
	clearTimeout(to);
</script>
<div class='main'>
	<table height=100% width=100% class='content'>

		<%@include file='header.jsp'%>

		<%@include file='menu.jsp'%>
		<tr height=80% valign="top">
			<td align="center"><br> <br>
				<form action='upload' method=post enctype="multipart/form-data">

					<table cellspacing=10 cellpadding=10 border=1>

						<tr>
							<th colspan=2>Upload the service discovery query language
								for various services here</th>
						</tr>
						<tr align="left">
							<th align="left">Select the service</th>

							<th align="left"><select name='service'>

									<option value='cricket'>Cricket</option>
									<option value='jokes'>Jokes</option>
							</select></th>
						</tr>
						<tr align="left">
							<th align="left">Browse the SerDiQueL file :</th>

							<th align="left"><input type=file name='serdiquel' /></th>
						</tr>

						<tr align="left">
							<th></th>

							<th align="left"><input type=submit value='UPLOAD' /></th>
						</tr>


						<%
							String chk = request.getParameter("res");
							if (chk != null && chk.equals("success")) {
						%>



						<tr align="left">
							<th></th>

							<th align="left"><span style='color: green;'> Request
									sent for the framework to upload the SerDIQueL </span></th>
						</tr>

						<%
							} else if (chk != null && chk.equals("failure")) {
						%>
						<tr align="left">
							<th></th>

							<th align="left"><span style='color: red;'> Error
									requesting framework </span></th>
						</tr>

						<%
							}
						%>
					</table>
				</form></td>
		</tr>

		<%@include file='footer.jsp'%>

	</table>
</div>