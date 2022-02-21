#!/bin/bash

# insert data index xavki / type users : nom/prenom/city

curl -X POST 'http://localhost:9200/_bulk' -d '
{ "create" : { "_index" : "elastic_index", "_type" : "author", "_id": 1 } }
{"name": "vassallo", "firstname": "cyril", "city" : "montpellier"}
{ "create" : { "_index" : "elastic_index", "_type" : "author", "_id": 2 } }
{"name": "kang", "firstname": "tuo", "city" : "montpellier"}
{ "create" : { "_index" : "elastic_index", "_type" : "author", "_id": 3 } }
{"name": "vassallo", "firstname": "lucas", "city" : "montpellier"}
