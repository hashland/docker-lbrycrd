#!/bin/sh

chown -R ${LBRYCRD_USER}.${LBRYCRD_GROUP} ${LBRYCRD_HOME}

exec "$@"
