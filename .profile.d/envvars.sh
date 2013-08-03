#!/bin/bash

#This selects SBCL as the default server.
#  Note that ccl is also another option...
export CL_IMPL=${CL_IMPL:=sbcl}

#This selects hunchentoot as the webserver.
#  Note that Loon does not currently work with other servers.
export CL_WEBSERVER=hunchentoot

#This selects the language to assist SBCL.
export LANG=en_US.UTF-8
