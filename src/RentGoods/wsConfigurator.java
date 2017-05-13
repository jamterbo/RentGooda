package RentGoods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.HandshakeResponse;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpoint;
import javax.websocket.server.ServerEndpointConfig;

/**
 * Created by LingHanchen on 17/5/12.
 */
public class wsConfigurator extends ServerEndpointConfig.Configurator{
    @Override
    public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest request, HandshakeResponse response) {
        HttpSession session = (HttpSession)request.getHttpSession();
        sec.getUserProperties().put(HttpSession.class.getName(),session);
    }
}
