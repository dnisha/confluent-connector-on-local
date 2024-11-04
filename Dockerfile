FROM confluentinc/cp-server-connect:7.4.0
ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:2.0.43
RUN confluent-hub install --no-prompt debezium/debezium-connector-postgresql:latest
