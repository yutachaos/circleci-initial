# README

CircleCI入門用のサンプルコード
https://supporterzcolab.com/event/318/

[![CircleCI](https://circleci.com/gh/yutachaos/circleci-initial.svg?style=svg)](https://circleci.com/gh/yutachaos/circleci-initial)
## Requirements
- ruby, rails, docker

## Set up 
- docker-compose up -d

## DB Set up
- docker-compose exec api rails db:create db:migrate

## Lint
- docker-compose exec api rubocop

## Test 
- docker-compose exec api bundle exec rspec

add test