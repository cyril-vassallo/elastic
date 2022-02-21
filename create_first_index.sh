#!/bin/bash

# create index elatic_index : name/firstname/city

curl -X PUT 'http://127.0.0.1:9200/elastic_index' -d '
{ 
  "mappings": {
    "author" : {
      "properties" : {
        "name" : {"type":"string"},
        "firstname" : {"type":"string"},
        "city": {"type":"string"}
      }
    },
    "post" : {
      "properties" : {
        "title" : {"type":"string"},
        "description" : {"type":"string"},
        "date": {"type":"date"}
      }
    }
  }
}'

