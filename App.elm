module App where


import Html exposing (..)
import Html.Events exposing (onClick)

-- MODEL

type alias Model = String


--  UPDATE

type Action = Foo

update : Action -> Model -> Model
update action model =
   case action of
      Foo -> model ++ "!"

-- VIEW 

view : Signal.Address Action -> Model -> Html
view address model =
   div []
      [ button [onClick address Foo] [ text "Font Up"]
      , div [] [ text (toString model) ]
 ]

