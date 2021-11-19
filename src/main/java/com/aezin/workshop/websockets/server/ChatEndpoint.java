
package com.aezin.workshop.websockets.server;

import java.io.IOException;

import javax.websocket.EncodeException;
import javax.websocket.OnMessage;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chatroom")
public class ChatEndpoint {
	@OnMessage
	public void message(String message, Session client) throws IOException, EncodeException {
		for (Session openSession : client.getOpenSessions()) {
			openSession.getBasicRemote().sendText(message);
		}
	}
}
