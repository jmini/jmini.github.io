#!/bin/bash

cd ../jmini.github.io/
mvn clean verify

cd ../jmini.github.io_master/
rsync -vr ../jmini.github.io/target/jmini.github.io/ ./

git add .
git commit -m "Update the 'master' branch to publish on GitHub pages."

