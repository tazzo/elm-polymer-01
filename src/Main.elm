import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (attribute,style)
import Polymer.Paper as Paper
import Polymer.App as App

main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model = Int

model : Model
model =
  0


-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1


-- style [("icon","menu"),("onclick","drawer.toggle()")]
-- VIEW

view : Model -> Html Msg
view model =
    App.header [attribute "reveals" ""]
    [App.toolbar []
      [ Paper.iconButton [ attribute "icon" "menu" ]
          [],
        div [attribute "main-title" ""][text "My App"]
      ]
    ]
