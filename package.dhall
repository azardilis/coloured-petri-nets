{ name =
    "coloured-petri-nets"
, version =
    "0.1.0.0"
, synopsis =
    "none"
, homepage =
    "none"
, author =
    "none"
, maintainer =
    "none"
, other-extensions =
    "BangPatterns"
, dependencies =
    [ "base", "containers" ]
, library =
    { source-dirs =
        "src"
    , dependencies =
        [ "base"
        , "random"
        , "parsec"
        , "template-haskell"
        , "haskell-src-meta"
        , "containers"
        , "multiset"
        ]
    , exposed-modules =
        [ "Chromar.Core"
        , "Chromar.RuleQuotes"
        , "Chromar.Fluent"
        , "Chromar.Observables"
        , "Chromar.Multiset"
        , "Chromar.MAttrs"
        , "Chromar.MRuleParser"
        , "Chromar"
        ]
    }
, tests =
    { gdiff =
        { dependencies =
            [ "base", "coloured-petri-nets" ]
        , other-modules =
            [] : List Text
        , main =
            "gdiff.hs"
        , source-dirs =
            "models"
        }
    , market =
        { dependencies =
            [ "base", "coloured-petri-nets", "random", "normaldistribution" ]
        , other-modules =
            [] : List Text
        , main =
            "Market.hs"
        , source-dirs =
            "models/market"
        }
    , plant =
        { dependencies =
            [ "base", "coloured-petri-nets" ]
        , other-modules =
            [] : List Text
        , main =
            "plant.hs"
        , source-dirs =
            "models"
        }
    , simple =
        { dependencies =
            [ "base", "coloured-petri-nets" ]
        , other-modules =
            [] : List Text
        , main =
            "simple.hs"
        , source-dirs =
            "models"
        }
    , germ =
        { dependencies =
            [ "base"
            , "coloured-petri-nets"
            , "text"
            , "random"
            , "normaldistribution"
            ]
        , other-modules =
            [ "SeedsModel.Env", "SeedsModel.Germ" ]
        , main =
            "germ.hs"
        , source-dirs =
            "models"
        }
    , utils =
        { dependencies =
            [ "base"
            , "coloured-petri-nets"
            , "text"
            , "random"
            , "normaldistribution"
            ]
        , other-modules =
            [ "SeedsModel.Env", "SeedsModel.Utils" ]
        , main =
            "utils.hs"
        , source-dirs =
            "models"
        }
    }
}
