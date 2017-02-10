<link href='../css/mystyle.css' rel='stylesheet' type='text/css' />
<%
	session.setAttribute("pg", "services");
%>
<body>

<div class='main'>
	<table height=100% width=100% class='content'>

		<%@include file='header.jsp'%>

		<%@include file='menu.jsp'%>
		<tr height=80% valign="top">
			<td>
				<div class='desc' style='width: 90%;'>
					<div style='float: right; margin-left: 10px;'>

						<img src='../image/eb.jpg' width=200 />
					</div>

					<div>Service Based applications are composed of loosely
						coupled autonomous computer-based entities owned by third parties
						known as services. These services are combined to realize
						applications and create dynamic business processes. Due to rapid
						changes in market conditions and regulations, the dynamic creation
						of busi- ness alliances and partnerships, and the need to assist
						with changing user demands, it is necessary to provide ways of
						identifying services that can fulfill specific functional and
						quality characteristics of service-based applications. The
						identification of such services is known in the literature as
						service discovery and has been an important topic of research over
						the last few years.</div>

				</div>
				<div class='desc2'>
					This sample SBA provides various services which are demonstrated
					below.<br /> <br />
					<table width=100% style='padding-left: 100px;'>
						<tr>
							<td width=30%>
								<form action='cricket'>
									<input type=submit value='Cricket Scores'
										style='width: 200px; padding: 10px; background-color: orange;' />

								</form>
								<form action='jokes'>
									<input type=submit value='Jokes'
										style='width: 200px; padding: 10px; background-color: orange;' />
								</form>
							</td>

							<td valign="top" align="left" width=70%>
								<%
									String chk = (String) request.getAttribute("billstatus");
									if (chk != null) {
								%>
								<div
									style='border: dashed black 2px; padding: 20px; line-height: 1.5;'><%=chk%>
								</div>
								<%
									} else {
								%> Provide the following details to pay your electric bill <br /> <br />

								<div
									style='border: dashed black 2px; padding: 20px; line-height: 1.5;'>


									<form action='payBill' method=post>
										<table>
											<tr>
												<td>EH Number:</td>
												<td><input type=text name='eh' /></td>
											</tr>

											<tr>
												<td>Select your Bank:</td>
												<td><input type=text name='eh' /></td>
											</tr>

											<tr>
												<td>Enter your IPIN:</td>
												<td><input type=text name='ipin' /></td>
											</tr>

											<tr>
												<td>Enter your Password:</td>
												<td><input type=password name='password' /></td>
											</tr>

											<tr>
												<td></td>
												<td><input type=submit value='Pay Bill'
													style='background-color: lightblue; width: 155px; padding: 10px;' /></td>
											</tr>
										</table>
									</form>

								</div> <%
 	}
 %>
							</td>
						</tr>
					</table>

				</div>


			</td>
		</tr>

		<%@include file='footer.jsp'%>

	</table>
</div>
</body>