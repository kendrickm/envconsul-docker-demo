# Example of setting up a rails app to load dynamic config data from consul k/v's API

### Pre-requirements
  * Docker(I have Docker version 18.09.2, build 6247962 and docker-compose version 1.23.2, build 1110ad01)

### To-Run
  * `docker-compose up`
  * `curl -X PUT 0.0.0.0:8500/v1/kv/config/apps/rails_test --data 'bar'`
  * `curl http://localhost:9292/consul_test/get`


 
