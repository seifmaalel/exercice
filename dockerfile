from debian
RUN apt update
RUN apt install nano -y
RUN apt install net-tools -y
ADD script2 .
WORKDIR hello
