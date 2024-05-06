# Maps Eager

Eagerly evaluated functions for Maps.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/maps-eager/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-maps-eager/badge)
![Quality](https://img.shields.io/codacy/grade/a2905892096944d49fde47dbfcb2d503)

## Installation

```bash
spago install maps-eager
```

## Documentation

Documentation and more detailed examples are hosted on [Github Pages](https://joellefkowitz.github.io/maps-eager).

## Usage

Given a `Map`:

```purs
map :: Map String Int
map = fromFoldable [ Tuple "a" 1 , Tuple "b" 2 , Tuple "c" 3]
```

Often we want to iterate over the keys and values. This package provides functions that return the keys and values in an `Array`.

```purs
> keys map
[ "a", "b", "c" ]

> values map
[ 1, 2, 3 ]
```

Also given a value you can search for matching keys:

```purs
reverseLookup 3
> Just "c"

reverseLookupAll 3
> ["c"]
```

## Tooling

### Dependencies

To install dependencies:

```bash
yarn install
yarn spago install
```

### Tests

To run tests:

```bash
yarn spago test
```

### Documentation

To generate the documentation locally:

```bash
yarn spago docs
```

### Linters

To run linters:

```bash
npm run lint
```

### Formatters

To run formatters:

```bash
npm run format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<div align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</div>
