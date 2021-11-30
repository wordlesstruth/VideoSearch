#!/bin/bash
source .env

echo "Running with input file: ${INPUT_FILE}, db: ${DB_PATH} and threshold: ${THRESHOLD}"

docker run -i -t -p 9090:9090 -v $(pwd)/db:/db/:ro -v $(pwd)/input:/input/:ro videosearch python videoSearch.py /input/${INPUT_FILE} /db/${DB_PATH} ${THRESHOLD}
