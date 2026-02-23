FROM ubuntu

LABEL name ="rushi"

RUN apt update && apt install openjdk-17-jdk -y && apt install maven -y

WORKDIR /mnt

RUN git clone https://github.com/shubhamkalsait/EasyCRUD.git

WORKDIR EasyCRUD/backend

COPY application.properties src/main/resources/application.properties

RUN mvn clean package -DskipTest

ENTRYPOINT ["java", "-jar", "target/student-registration-backend-0.0.1-SNAPSHOT.jar"]