#!/bin/bash

USER=kasra

function name {
    USER=admin
    echo -e "hello ${USER}\n"
}

echo -e "hello ${USER}\n"
name