xhost + && sudo docker run --device=/dev/kvm -it -v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY -v $PWD/../project:/home/project \
-v /mnt/android-dev-3:/home/project/disk \
-v /home/$USER/Android:/home/project/sdk \
-it aosp_builder /bin/bash && xhost -
