#!/bin/bash
set -e

# Remova um server.pid potencialmente pré-existente para Rails.
rm -f /myapp/tmp/pids/server.pid

# Em seguida, execute o processo principal do contêiner (o que está definido como CMD no Dockerfile).
exec "$@"