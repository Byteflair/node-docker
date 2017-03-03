This container is used to build and run projects based on NPM, Bower and Grunt.

You need to `run` the container with the following arguments:
  * The ports you need to expose via the `-p` argument. This will depend on your Gruntfile.js configuration for the task responsible of starting the server
  * A volume where your `Grunfile.js`, `package.json` and `bower.json` reside and is root to your application code. This volume must be mounted on the container's `/build` folder via de `-v` argument.
  * The name of the grunt task that starts your server using the environment variable `TASK` using the `-e` argument. If no TASK is provided `container` task will be used. The container will fail to start if the task does not exists. Be sure to start your server on hostname `0.0.0.0` so that the server is accessible from outside the container.

```
    docker run -p 9000:9000 -v ~/myApp:/build -e "TASK=serve" byteflair/node
```
  * You can also indicate the working folder via the `WORKSPACE` environment variable.

```
    docker run -p 9000:9000 -v ~/myApp:/drone/src -e "WORKSPACE=/drone/src" -e "TASK=serve" byteflair/node
```
  
