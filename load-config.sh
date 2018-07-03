#!/bin/bash

# mu-cl-resources does not read env variables for configuration
# logging is also not handled in mu-cl-resources but the underlying
# fuseki framework. 
if [ ${LOG_QUERIES} = 'false' ]; then
  sed -i 's/:query//' /config/settings.lisp
  sed -i 's/:ask//' /config/settings.lisp
fi

cp -R /config/* /app/configuration/
