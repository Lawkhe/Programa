<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>WebSockets : ChatRoom</title>
</head>
<body>
	<h2>WebSockets : ChatRoom</h2>
	<form action="">
		<input id="newUserField" name="user" value="" type="text"> 
		<input id="newUserButton" onclick="join();" value="Entrar" type="button">
		
		<br/><br/>
		<textarea id="chatRoomField" rows="10" cols="30" readonly disabled></textarea>
		
		<br/>
		<input id="sendField" name="message" value="" type="text" disabled>
		<input id="sendButton" onclick="send_message();" value="Enviar" type="button" disabled>
	</form>

	<script type="text/javascript" src="websocket.js">
	</script>
</body>
</html>