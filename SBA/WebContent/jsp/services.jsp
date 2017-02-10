<link href='../css/mystyle.css' rel='stylesheet' type='text/css' />
<%
	session.setAttribute("pg", "services");
%>

<head>
<script type='text/javascript' src='../js/jquery.js'>
	
</script>
</head>


<body>

	<div class='main'>
		<table height=100% width=100% class='content'>

			<%@include file='header.jsp'%>

			<%@include file='menu.jsp'%>
			<tr height=80% valign="top">
				<td>
					<div class='desc'>Service Based applications are composed of
						loosely coupled autonomous computer-based entities owned by third
						parties known as services. These services are combined to realize
						applications and create dynamic business processes. Due to rapid
						changes in market conditions and regulations, the dynamic creation
						of busi- ness alliances and partnerships, and the need to assist
						with changing user demands, it is necessary to provide ways of
						identifying services that can fulfill specific functional and
						quality characteristics of service-based applications. The
						identification of such services is known in the literature as
						service discovery and has been an important topic of research over
						the last few years.</div>


					<div class='desc2'>
						This sample SBA provides various services which are demonstrated
						below.<br /> <br />
						<table width=100% style='padding-left: 100px;'>
							<tr valign="top">
								<td valign="top" width=20%><input type=submit
									value='Cricket Scores'
									style='width: 200px; padding: 10px; background-color: orange;'
									id='cricButton' /> <br> <br> <input type=submit
									value='Jokes'
									style='width: 200px; padding: 10px; background-color: orange;'
									id=jokesButton '/> </td>
								<br>
								<td id='result' align="left"><img
									src='../image/cricket.jpg' width=150 height=120 />
									&nbsp;&nbsp;&nbsp;&nbsp;<img src='../image/jokes.jpg' width=150
									height=120 /> &nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>

					</div>


				</td>
			</tr>

			<%@include file='footer.jsp'%>

		</table>
	</div>

</body>




<script type="text/javascript">
	$(document).ready(function() {
		$('#cricButton').click(fetchCricketUpdates);
		$('#jokesButton').click(fetchJokesUpdates);
		//	$('#billButton').click(billUpdates);

	});

	var to;

	function fetchCricketUpdates() {
		clearTimeout(to);
		to = setInterval(cricUpdates, 500);
	}

	function fetchJokesUpdates() {
		clearTimeout(to);
		to = setInterval(jokesUpdates, 500);

	}
	function cricUpdates() {

		var req = $.ajax({
			url : 'cricket',
			type : 'GET',
			beforeSend : function() {
				$('#cricButton').css({
					'background-color' : 'white'
				});
				$('#jokesButton').css({
					'background-color' : 'orange'
				});
				$('#billButton').css({
					'background-color' : 'orange'
				});
			},

			dataType : 'json'
		});
		req
				.done(function(resp) {
					var data = "<h4 style='margin:10px;'> Cricket Updates are as follows </h4> <div style='border: dashed black 1px; padding:5px; margin:10px;'>";
					try {
						for ( var i = 0; i < resp.length; i++) {
							data += "<h4>" + resp[i].topic + "</h4>"
									+ resp[i].desc;
						}
						data = data + "</div>";
						$('#result').html(data);
					} catch (Err) {
						alert(Err);
					}

				});
		req
				.fail(function() {
					$('result')
							.html(
									"Error while pulling the cricket updates .. Please try again later.");
				});

	}

	function jokesUpdates() {

		var req = $.ajax({
			url : 'jokes',
			type : 'GET',
			beforeSend : function() {
				$('#cricButton').css({
					'background-color' : 'orange'
				});
				$('#jokesButton').css({
					'background-color' : 'white'
				});
				$('#billButton').css({
					'background-color' : 'orange'
				});
			},

			dataType : 'json'
		});
		req
				.done(function(resp) {
					var data = "<h4 style='margin:10px;'> Here is the joke to make you laugh </h4> <div style='border: dashed black 1px; padding:5px; margin:10px;'>";
					for ( var i = 0; i < resp.length; i++) {
						data += "<h4>" + resp[i].topic + "</h4>" + resp[i].desc;
					}
					data = data + "</div>";
					$('#result').html(data);
				});
		req
				.fail(function() {
					$('result')
							.html(
									"Error while pulling the jokes .. Please try again later.");
				});

	}
</script>
