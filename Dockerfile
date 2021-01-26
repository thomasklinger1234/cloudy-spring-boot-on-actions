FROM alpine:3.13

RUN apk add \
    --no-cache openjdk11-jre-headless=11.0.9_p11-r1

COPY target/springdemo-*.jar /webapps/

ENTRYPOINT [ "/bin/sh", "-c", "exec java -showversion -XX:CompressedClassSpaceSize=128m -Xmx512m -XX:MaxRAM=768m -jar /webapps/springdemo-*.jar"]

USER daemon
