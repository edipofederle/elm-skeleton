import App exposing (update, view)
import StartApp.Simple exposing (start)


main =
  start
    { model = "Hello World!"
    , update = update
    , view = view
    }
