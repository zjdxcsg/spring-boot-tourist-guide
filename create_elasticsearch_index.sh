#!/bin/bash

curl --request PUT \
     --url 'http://localhost:9200/place' \
     --header "Content-Type: application/json" \
     --data '{
               "mappings": {
                   "place": {
                       "properties": {
                           "_class": {
                               "type": "keyword"
                           },
                           "address": {
                               "type": "text"
                           },
                           "audio": {
                               "type": "text"
                           },
                           "cityId": {
                               "type": "keyword"
                           },
                           "createdAt": {
                               "type": "date"
                           },
                           "description": {
                               "type": "text"
                           },
                           "images": {
                               "type": "text"
                           },
                           "location": {
                               "type": "geo_point"
                           },
                           "name": {
                               "type": "text"
                           },
                           "placeId": {
                               "type": "keyword"
                           },
                           "updatedAt": {
                               "type": "date"
                           }
                       }
                   }
               },
               "settings": {
                   "number_of_shards": 1,
                   "number_of_replicas": 1
               }
           }'
