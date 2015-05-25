Libralog
====

The web application for personal library catalog that can be shared in your family.

Description
----

"Libralog" will reproduce the personal bookshelf on the web. It is able to share in the family, it was made in order to avoid potential overlap during shopping.

In the future, you can be able to record the reading notes, and it is going to even be able to post a reviews to the external services. 

## Features

* Search by specifying book attributes
* Display of book details

## Requirement

* Java8
* Grails3.0 later

## Usage

Download jar file from [release page](https://github.com/yukung/libralog/releases).

```console
$ java -jar libralog.jar
```

Access to http://localhost:8080

## Installation

```console
$ grails package
$ tar -xvf build/distributions/libralog-*.tar
$ export LIBRALOG_OPTS=-Dgrails.env=prod
$ libralog-*/bin/libralog
Grails application running at http://localhost:8080
```

## Author

[@yukung](https://twitter.com/yukung)

## License

Licensed under the terms of the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html)
