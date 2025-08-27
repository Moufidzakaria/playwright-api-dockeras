#!/bin/bash

images=$(docker images --format "{{.Repository}}:{{.Tag}}" | grep -v "<none>")


# iterate على كل صورة
for image in $images
do
  echo "🔍 Scanning image: $image"
  trivy image $image
  echo "---------------------------------------------"
done
