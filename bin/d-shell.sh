#!/bin/bash
arg=(
  --interactive --tty
  mysql 
  bash
)
docker exec "${arg[@]}"
