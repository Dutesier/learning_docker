#! /bin/bash
docker build -t hello/world:v42 .
docker run -d -h 42born2code --user dareias- -p 80:8042 --name my-hello-world hello/world:v42
