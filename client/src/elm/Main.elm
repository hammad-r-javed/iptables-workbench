module Main exposing (..)

import Browser
import Browser.Navigation as Nav
import Element as Elem
import Element.Background as ElemBg
import Element.Border as ElemBorder
import Element.Font as ElemFont
import Element.Input as ElemInput
import Element.Region as ElemRegion
import Html exposing (Html)
import Json.Decode as JsonDecode
import Json.Encode as JsonEncode
import PageStyle as Style
import Elements



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type Model
    = EmptyPage



-- INIT


init : () -> ( Model, Cmd Msg )
init _ =
    ( EmptyPage
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( EmptyPage
            , Cmd.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    Elem.layout
        [ ElemBg.color Style.baseBgColour
        , ElemFont.color Style.baseFontFgColor
        ]
    <|
        Elem.column
            [ Elem.width Elem.fill
            , Elem.height Elem.fill
            ]
            [ Elements.navbar "iptables Workbench"
            , pageBody model
            ]


pageBody : Model -> Elem.Element Msg
pageBody model =
    Elem.text "TODO"
