# Changelog

## 0.6.0 - 2025-04-20

### Changed

  - Drop `python3` as a build dependency
  - Bump build image to Alpine 3.21
  - Enforce common changelog

## 0.5.0 - 2023-05-08

### Fixed

  - Fix typo in arg name

## 0.4.0 - 2023-05-08

### Changed

  - Add default arg of `--extension table`

## 0.3.0 - 2023-05-08

### Changed

  - Add default args of: `--with 80`

## 0.2.0 - 2023-05-08

### Added

  - Add `pre-commit` `script` hook to allow running the hook without Docker
  - Pass only required files to Docker
  - Avoid running `cmark-gfm`'s test suite when building the docker image

### Changed

  - Pass only required files to Docker

## 0.1.0 - 2023-01-07

*Initial release*
