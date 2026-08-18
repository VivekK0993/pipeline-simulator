FROM ubuntu:22.04
RUN apt-get update && apt-get install -y bash
WORKDIR /challenge_3/pipeline-simulator
COPY build.sh /challenge_3/pipeline-simulator/build.sh
COPY pipeline.sh /challenge_3/pipeline-simulator/pipeline.sh
COPY deploy.sh /challenge_3/pipeline-simulator/deploy.sh
CMD ["bash", "/challenge_3/pipeline-simulator/build.sh"]
