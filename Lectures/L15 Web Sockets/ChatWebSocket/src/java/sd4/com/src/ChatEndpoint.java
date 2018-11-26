package sd4.com.src;

import java.io.IOException;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chat")
public class ChatEndpoint {

    public ChatEndpoint() {
        System.out.println("Class loaded " + this.getClass());
    }

    @OnOpen
    public void onOpen(Session session) {
        System.out.printf("Session opened, id: " + session.getId());
        try {
            session.getBasicRemote().sendText("Connection Successful");
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        System.out.printf("Message received. Session id: %s Message: %s%n",
                session.getId(), message);
        try {
            session.getBasicRemote().sendText(String.format("We received your message: %s%n", message));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
  @OnError
  public void onError(Throwable e) {
      e.printStackTrace();
  }

  @OnClose
  public void onClose(Session session) {
      System.out.printf("Session closed with id: %s%n", session.getId());
  }
}//end class
