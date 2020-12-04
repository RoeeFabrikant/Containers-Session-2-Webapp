FROM alpine:3.9

LABEL maintainer="roee73@gmail.com"

RUN apk update

# Install python3
RUN apk add --update python3 py3-pip

# Install python packeges
RUN pip3 install click==7.0 Flask==1.0.2 itsdangerous==1.1.0 Jinja2==2.10 MarkupSafe==1.1.1 Werkzeug==0.14.1

COPY . /src 

WORKDIR /src

EXPOSE 5000

ENTRYPOINT ["python3", "./app.py"]
