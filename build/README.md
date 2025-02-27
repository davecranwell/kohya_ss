It should be noted that running docker build twice will not capture changes to the sd-scripts repository since the cache is effectively unchanged by pointing at main

```
docker build . -t xcession2k/kohya_rest:latest --build-arg KOHYA_BUILD_REF=4c2bf1882572050d4f1f44d26e6287d6fad003d7
docker login
docker push xcession2k/kohya_rest:latest
```
