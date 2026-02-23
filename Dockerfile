FROM ubuntu

LABEL name ="rushi"

RUN apt update && apt install openjdk-17-jdk -y && apt install maven -y

WORKDIR /mnt

RUN git clone https://github.com/shubhamkalsait/EasyCRUD.git

WORKDIR EasyCRUD/backend

RUN mvn clean package -DskipTest

COPY application.proprties src/main/resources/application.properties

ENTRYPOINT ["java", "-jar", "target/student-registration-backend-0.0.1-SNAPSHOT.jar"]