## Task
Build a middleware using echo framework
First of all, you should create a handler which sends how many
days left until 1 Jan 2025 and response with HTTP 200 OK status
code.
Secondly, build a middleware, which checks HTTP
header User-Role presents and contains admin and prints
"red button user detected" to the console (using default log
package or any 3rd party) if so.
Think about coding standards and best practices. In general,
the task is about providing a working solution, but if you have time
to create a good code-structure, we'd love it!

## Run

``` make up```

go to: _http://localhost:8080/status_

```make down```