import org.eclipse.paho.client.mqttv3.*;
public class Subscriber {

  public static void main(String[] args){
    System.out.println("== START SUBSCRIBER ==");
    try {
      
      MqttClient client=new MqttClient("tcp://localhost:1883", MqttClient.generateClientId());
      client.setCallback( new SimpleMqttCallBack() );
      client.connect();

      client.subscribe("iot_data");

    } catch(Exception e){
  	   System.out.println(e);
    }
  }
}
