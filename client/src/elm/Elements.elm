module Elements exposing (navbar)

import Element as Elem
import Element.Background as ElemBg
import Element.Border as ElemBorder
import PageStyle as Style

navbar : String -> Elem.Element msg
navbar title =
    Elem.row
        [ Elem.width Elem.fill
        , Elem.height Elem.shrink
        , Elem.centerX
        , Elem.padding 25
        , ElemBg.color Style.elementBgColour
        , ElemBorder.shadow
            { size = 3.0
            , offset = ( 0.0, 0.0 )
            , blur = 5.0
            , color = Elem.rgb 0.05 0.05 0.05
            }
        ]
        [ Elem.el [ Elem.alignLeft ] (Elem.text title)
        ]
