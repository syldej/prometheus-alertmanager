{-
   Alertmanager API
   API of the Prometheus Alertmanager (https://github.com/prometheus/alertmanager)

   OpenAPI spec version: 0.0.1

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ClusterStatus exposing (ClusterStatus, decoder, encoder)

import Data.PeerStatus as PeerStatus exposing (PeerStatus)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias ClusterStatus =
    { name : String
    , status : String
    , peers : List PeerStatus
    }


decoder : Decoder ClusterStatus
decoder =
    Decode.succeed ClusterStatus
        |> required "name" Decode.string
        |> required "status" Decode.string
        |> required "peers" (Decode.list PeerStatus.decoder)


encoder : ClusterStatus -> Encode.Value
encoder model =
    Encode.object
        [ ( "name", Encode.string model.name )
        , ( "status", Encode.string model.status )
        , ( "peers", Encode.list PeerStatus.encoder model.peers )
        ]
