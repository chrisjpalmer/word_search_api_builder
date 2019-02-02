# Word Search System Builder
## Intro
This repository contains the docker file for building the `word_search_api` component.

## Build Docker Images
You can build from the source easily using the cli which ships with word_search:
### Clone CLI Tool and Install it
```sh
git clone https://github.com/chrisjpalmer/word_search_cli && cd word_search_cli && npm link
cd /my/blank/proj/dir #specify a blank project directory
word_search_cli init #initializes a new word_search_proj in your current directory
```

### Prepare Docker Machine
```sh
eval $(docker-machine env default)
```

### Build source via the CLI
```sh
word_search_cli build --build-repo-tag=1.0.0 --src-repo-tag=1.0.0 word_search_api #see https://github.com/chrisjpalmer/word_search_api for more tags
```

### How it works:
The build system works by injecting `SRC_TAG` as an environment variable into the docker build process. The docker build process clones the source at the specified tag, builds and tests the source.

## Deploy:
To deploy the stack see https://github.com/chrisjpalmer/word_search_deploy_production

## Available Versions
To build the source at a particular tag, ensure that you choose the compatible builder tag.
| word_search_api:SRC_TAG | word_search_api_builder:BUILD_TAG |
| :----------------------- | :---------------------------------- |
| 1.0.0 | 1.0.0 |