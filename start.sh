#!/bin/bash
REPOSITORY=true
ENVIRONMENT=main
GIT_URL_USER_SERVICE=git@github.com:vadpylypenko/ms-demo-user.git
GIT_URL_VM_SERVICE=git@github.com:vadpylypenko/ms-demo-vm.git


function LOAD_REPO_DATA() {
    echo "INFO: COPY_REPOSITORY - Start"

    if ! [ -d "ms-demo-user" ]; then
           echo "INFO: CLONE_REPOSITORY USER SERVICE - Start"
           git clone $GIT_URL_USER_SERVICE
           cd ms-demo-user
           git checkout $ENVIRONMENT
           cp .env.sample .env
           npm i && npm run build
           cd ..   
    fi
    if ! [ -d "ms-demo-vm" ]; then
           echo "INFO: CLONE_REPOSITORY VM SERVICE - Start"
           git clone $GIT_URL_VM_SERVICE
           cd ms-demo-vm
           git checkout $ENVIRONMENT
           cp .env.sample .env
           npm i && npm run build
           cd ..    
    fi
}

if [[ "$REPOSITORY" = true ]]; then
    LOAD_REPO_DATA
fi