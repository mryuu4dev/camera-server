FROM ryuichiueda/ubuntu18.04-ros-image

# https://www.kdel.org/wp/?p=2800
RUN apt-key adv --keyserver keyserver.ubuntu.com \
  --recv-keys F42ED6FBAB17C654

RUN apt-get update && apt-get install -y \
  ros-melodic-cv-camera \
  ros-melodic-web-video-server

COPY ["run.bash", "/root/run.bash"]
RUN ["chmod", "+x", "/root/run.bash"]
CMD ["/root/run.bash"]