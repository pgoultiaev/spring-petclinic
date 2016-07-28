#!/bin/bash
ab -n 100 -c 5 http://$1:$2/petclinic/
