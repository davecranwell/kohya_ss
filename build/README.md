It should be noted that running docker build twice will not capture changes to the sd-scripts repository since the cache is effectively unchanged by pointing at main

```
docker build . -t xcession2k/kohya_rest:latest --build-arg KOHYA_BUILD_REF=likera-customisations
docker login
docker push xcession2k/kohya_rest:latest
```
