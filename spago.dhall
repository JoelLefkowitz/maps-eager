{ name = "purescript-maps-eager"
, version = "0.2.0"
, repository = "https://github.com/JoelLefkowitz/purescript-maps-eager"
, license = "MIT"
, dependencies = 
    [ "maybe"
    , "ordered-collections"
    , "prelude" 
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
