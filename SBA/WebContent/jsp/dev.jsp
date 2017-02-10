<link href='../css/mystyle.css' rel='stylesheet' type='text/css' />
<%
	session.setAttribute("pg", "dev");
%>

<script>
	clearTimeout(to);
</script>
<div class='main'>
	<table height=100% width=100% class='content'>

		<%@include file='header.jsp'%>

		<%@include file='menu.jsp'%>
		<tr height=80% valign="top">
			<td>
				<div style='border-bottom: dashed black 1px;'>
					<div style='float: left; margin-left: 20px; margin-right: 20px;'>
						<img src='../image/dev1.jpg' width=150 />
					</div>
					<div style='margin: 20px;'>
						<table cellspacing=5 cellpadding=5>
							<tr>
								<td>Name</td>
								<td></td>
							</tr>
							<tr>
								<td>USN</td>
								<td></td>
							</tr>

							<tr>
								<td>Phone number</td>
								<td></td>
							</tr>


							<tr>
								<td>Email</td>
								<td></td>
							</tr>

						
						</table>
					</div>
				</div>


				<div style='border-bottom: dashed black 1px;'>
					<div style='float: right; margin-left: 20px; margin-right: 20px;'>
						<img src='../image/dev2.jpg' width=150 />
					</div>
					<div style='margin: 20px;'>
						<table cellspacing=5 cellpadding=5>
							<tr>
								<td>Name</td>
								<td></td>
							</tr>
							<tr>
								<td>USN</td>
								<td></td>
							</tr>

							<tr>
								<td>Phone number</td>
								<td></td>
							</tr>


							<tr>
								<td>Email</td>
								<td></td>
							</tr>

							
						</table>
					</div>
				</div>



				<div style='border-bottom: dashed black 1px;'>
					<div style='float: left; margin-left: 20px; margin-right: 20px;'>
						<img src='../image/dev1.jpg' width=150 />
					</div>
					<div style='margin: 20px;'>
						<table cellspacing=5 cellpadding=5>
							<tr>
								<td>Name</td>
								<td></td>
							</tr>
							<tr>
								<td>USN</td>
								<td></td>
							</tr>

							<tr>
								<td>Phone number</td>
								<td></td>
							</tr>


							<tr>
								<td>Email</td>
								<td></td>
							</tr>

							
						</table>
					</div>
				</div>



				<div>
					<div style='float: right; margin-left: 20px; margin-right: 20px;'>
						<img src='../image/dev2.jpg' width=150 />
					</div>
					<div style='margin: 20px;'>
						<table cellspacing=5 cellpadding=5>
							<tr>
								<td>Name</td>
								<td></td>
							</tr>
							<tr>
								<td>USN</td>
								<td></td>
							</tr>

							<tr>
								<td>Phone number</td>
								<td></td>
							</tr>


							<tr>
								<td>Email</td>
								<td></td>
							</tr>

						
						</table>
					</div>
				</div>
			</td>
		</tr>

		<%@include file='footer.jsp'%>

	</table>
</div>