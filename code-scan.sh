#!/bin/bash

echo "Testing Code...."
coverage run -m pytest
echo "Creating XML file"
coverage xml
echo "Sonar Scanner"
sonar-scanner -Dsonar.projectKey=calculator -Dsonar.sources=. -Dsonar.host.url=http://192.168.0.56:9000 -Dsonar.token=sqp_086c8145bf643778d5c79f689213315ba3849e8d -Dsonar.python.coverage.reportPaths=coverage.xml

