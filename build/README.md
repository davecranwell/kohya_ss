docker build . -t xcession2k/kohya_rest:latest --build-arg KOHYA_BUILD_REF=main
docker login
docker push xcession2k/kohya_rest:latest