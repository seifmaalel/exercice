from debian
RUN apt update
RUN apt install nano -y
RUN apt install net-tools -y
copy script2 .
WORKDIR hello
