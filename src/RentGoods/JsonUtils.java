package RentGoods;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Created by LingHanchen on 17/5/10.
 */
public class JsonUtils {

    public static JSONObject parserJson(String message) throws ParseException {
        JSONParser jsonParser = new JSONParser();
        JSONObject json = (JSONObject)jsonParser.parse(message);
        return json;
    }

    public static JSONObject getJson(String mainInfo,String toWho){
        JSONObject json = new JSONObject();
        json.put(toWho,mainInfo);
        return json;
    }
}
