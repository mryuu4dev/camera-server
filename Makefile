build:
	sudo docker image build . -t camera-server
run:
	sudo docker container run -p 8080:8080 --device=/dev/video0:/dev/video0 -t camera-server