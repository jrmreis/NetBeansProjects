package javaapplication3;


import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.serialization.StringDeserializer;

public class MyConsumer {
    public static void main(String[] args) throws Exception {
        final KafkaConsumer<String, String> consumer;
        consumer = new KafkaConsumer<>(
                Map.of(BOOTSTRAP_SERVERS, System.getenv(BOOTSTRAP_SERVERS),
                        GROUP_ID, System.getenv(GROUP_ID),
                        AUTO_OFFSET_RESET, "earliest"),
                new StringDeserializer(), new StringDeserializer());

        consumer.subscribe(List.of(TOPIC));
        while (true) {
            consumer.poll(1000).spliterator().forEachRemaining(System.out::println);
        }
    }

    static final String BOOTSTRAP_SERVERS = "bootstrap.servers";
    static final String TOPIC = System.getenv("TOPIC");
    static final String AUTO_OFFSET_RESET = "auto.offset.reset";
    static final String GROUP_ID = "group.id";

    private static Collection<String> List(String TOPIC) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
