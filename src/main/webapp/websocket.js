var username;
var websocket = new WebSocket("ws://" + document.location.hostname + ":" + document.location.port + document.location.pathname + "chatroom");

websocket.onmessage = function(evt) { 
	chatRoomField.innerHTML += evt.data + "\n";
};

function join() {
    username = newUserField.value;
    websocket.send("*** " + username + " se ha unido!!");
    newUserField.disabled = true;
    newUserButton.disabled = true;
    chatRoomField.disabled = false;
    sendField.disabled = false;
    sendButton.disabled = false;
}

function send_message() {
    websocket.send(username + ": " + sendField.value);
}