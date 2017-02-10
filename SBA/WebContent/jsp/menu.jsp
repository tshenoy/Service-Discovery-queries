
<tr height=5%>
	<td>
		<table height=100% width=100%>
			<%
				if (((String) session.getAttribute("pg")).equals("home")) {
			%>
			<tr>
				<td align="center" width=20%
					style='padding: 10px; background-color: white;'><a
					href='home.jsp' style='text-decoration: none; color: red;'>About
						this project</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='services.jsp' style='text-decoration: none; color: white;'>Services</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='admin.jsp' style='text-decoration: none; color: white;'>Admins
						Only</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='dev.jsp' style='text-decoration: none; color: white;'>Developers</a></td>

			</tr>
			<%
				} else if (((String) session.getAttribute("pg")).equals("services")) {
			%>
			<tr>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='home.jsp' style='text-decoration: none; color: white;'>About
						this project</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: white;'><a
					href='services.jsp' style='text-decoration: none; color: red;'>Services</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='admin.jsp' style='text-decoration: none; color: white;'>Admins
						Only</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='dev.jsp' style='text-decoration: none; color: white;'>Developers</a></td>

			</tr>
			<%
				} else if (((String) session.getAttribute("pg")).equals("dev")) {
			%>
			<tr>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='home.jsp' style='text-decoration: none; color: white;'>About
						this project</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='services.jsp' style='text-decoration: none; color: white;'>Services</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='admin.jsp' style='text-decoration: none; color: white;'>Admins
						Only</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: white;'><a
					href='dev.jsp' style='text-decoration: none; color: red;'>Developers</a></td>

			</tr>
			<%
				} else if (((String) session.getAttribute("pg")).equals("admin")) {
			%>
			<tr>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='home.jsp' style='text-decoration: none; color: white;'>About
						this project</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='services.jsp' style='text-decoration: none; color: white;'>Services</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: white;'><a
					href='admin.jsp' style='text-decoration: none; color: red;'>Admins
						Only</a></td>
				<td align="center" width=20%
					style='padding: 10px; background-color: red;'><a
					href='dev.jsp' style='text-decoration: none; color: white;'>Developers</a></td>

			</tr>
			<%
				}
			%>

		</table>
	</td>
</tr>
