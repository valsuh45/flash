# Implementing Fibonacci sequence in a docker container

 The `Fibonacci sequence`, also known as Fibonacci numbers, is defined as the sequence of numbers in which each number in the sequence is equal to the sum of two numbers before it.

## Prerequisites
- Docker installed on your system (host or virtual).
- Basic understanding of Docker concepts
- Basic command-line skills

## Step 1: Pulling the image from the repository
 Once in the repository, go to the tag **packages** and copy the docker pull command that will be shown to you.

 ## Step 2: Running the container
  Paste the command you just copied under packages on your terminal.
  Do:
  ```sh
$ docker images
```
This will enable you to see the docker image you just pulled. Copy the Id of the image (the one under `IMAGE ID`) and do:
```sh
$ docker run -it <image/id>
```
You will get a prompt, telling you to enter a number, once you enter a number a fibonacci sequence of that number will be displayed to you automatically.
The container will be exited immidiately after the fibonacci sequence is displayed.
