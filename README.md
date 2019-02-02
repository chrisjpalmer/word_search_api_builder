# Word Search API Builder
This repository contains the docker file for building the Word Search API component.

To build word_search_api:
```sh
$BUILD_TAG = #find the correct tag of the builder for the source you are trying to build
$SRC_TAG = #the tag of the word_search_api source which you want to build

git clone https://github.com/chrisjpalmer/word_search_api_builder
cd word_search_api_builder
git checkout $BUILD_TAG #See below table for correct tag
docker build -t word_search_api --build-arg SRC_TAG=$SRC_TAG
```

This will build the version of word_search_api which you specified in `SRC_TAG` and run tests against it. The building and testing occurs within the docker container.

To run word_search_api
```sh
docker run -it word_search_api --config=/path/to/config
```