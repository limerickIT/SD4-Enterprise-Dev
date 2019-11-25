package sd4.com.src;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/peerchatendpoint")
public class PeerChatEndpoint {
    
    private static Set<Session> peers = Collections.synchronizedSet(new HashSet<Session>());

    public PeerChatEndpoint() {
        System.out.println("Class loaded " + this.getClass());
    }

    @OnOpen
    public void onOpen(Session session) {
         peers.add(session);
        System.out.printf("Session opened for id %s%n ", session.getId());
        try {
            session.getBasicRemote().sendText("Connection Successful");
        } catch (IOException ex) {
            System.out.println(ex);
        }
    }
    
    @OnMessage
    public void onMessage(String message, Session session) throws IOException, EncodeException {
        String[] args = message.split(":");
        System.out.printf("Message from %s to broadcast: %s%n ", args[0], args[1]);
        for (Session peer : peers) {
            if (!peer.equals(session)) {
                peer.getBasicRemote().sendText(args[0] + " says: " + args[1]);
            }
        }
    }

    @OnError
    public void onError(Throwable e) {
        System.out.println(e);
    }

    @OnClose
    public void onClose(Session session) {
        peers.remove(session);
        System.out.printf("Session closed with id: %s%n", session.getId());
    }
}//end class
