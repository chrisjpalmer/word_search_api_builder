# Word Search API Builder
## Intro
This repository contains the docker file for building the Word Search API component.

## Build
### 1) Build Docker Images - CLI
```sh
$BUILD_TAG = #find the correct tag of the builder for the source you are trying to build
$SRC_TAG = #the tag of the word_search_api source which you want to build

git clone https://github.com/chrisjpalmer/word_search_cli && cd word_search_cli && npm link
cd /my/blank/proj/dir #specify a blank project directory
word_search_cli init #initializes a new word_search_proj in your current directory
word_search_cli build --build-repo-tag=$BUILD_TAG --src-repo-tag=$SRC_TAG word_search_api
```

### 2) Build Docker Images - Manually
```sh
$BUILD_TAG = #find the correct tag of the builder for the source you are trying to build
$SRC_TAG = #the tag of the word_search_api source which you want to build

git clone https://github.com/chrisjpalmer/word_search_api_builder
cd word_search_api_builder
git checkout $BUILD_TAG #See below table for correct tag
docker build -t word_search_api --build-arg SRC_TAG=$SRC_TAG
```

### How it works:
The build system works by injecting `SRC_TAG` as an environment variable into the docker build process. The docker build process clones the source at the specified tag, builds and tests the source.

### Run
```sh
docker run -it word_search_api --config=/path/to/config
```

# Available Versions
To build the source at a particular tag, ensure that you choose the compatible builder tag.
| word_search_api:SRC_TAG | word_search_api_builder:BUILD_TAG |
| :----------------------- | :---------------------------------- |
| 1.0.0 | 1.0.0 |