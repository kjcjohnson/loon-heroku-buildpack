Loon Framework Buildpack for Heroku
===================================

A Buildpack that allows you to deploy Common Lisp applications written
with the Loon framework on the Heroku infrastructure.

Original work by Mike Travers, mt@hyperphor.com.
Secondary work by Jos&eacute; Santos, jsmpereira@gmail.com

## Differences

* The Loon framework is built around the Hunchentoot webserver, written by
[Edi Weitz](http://www.weitz.de) and uses [SBCL](http://www.sbcl.org) as
its lisp. Other lisps can be added easily by altering the CL_IMPL variable
in the bin/compile script. Note that there is also default support for
[CCL](http://ccl.clozure.com) built into the scripts; it just needs to be
enabled by the user.

> You need this first: http://devcenter.heroku.com/articles/labs-user-env-compile.
It will allow the config vars to be present at build time.

> Then you can do 
```heroku config:add CL_IMPL=sbcl```
or
```heroku config:add CL_IMPL=ccl```

* Web server choice
```heroku config:add CL_WEBSERVER=hunchentoot```
or
```heroku config:add CL_WEBSERVER=aserve```

### Notes

* To avoid trouble with SBCL source encoding use:
```heroku config:add LANG=en_US.UTF-8```

* The scripts bin/test-compile and bin/test-run simulate as far as possible the Heroku build and run environments on your local machine.
* Heroku does not have a persistent file system.  Applications should use S3 for storage; [ZS3](http://www.xach.com/lisp/zs3) is a useful CL library for doing that.

## Credits
* Heroku and their new [Buildpack-capable stack](http://devcenter.heroku.com/articles/buildpacks)
* [QuickLisp](http://www.quicklisp.org/) library manager 
* [OpenMCL](http://trac.clozure.com/ccl) aka Clozure CL 
* [Portable AllegroServe](http://portableaserve.sourceforge.net/)

Mike Travers, mt@hyperphor.com



