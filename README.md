# rust-lambda-pristine [![Repository][repo.svg]][repo] ![Build Status][build.svg] ![Audit Status][audit.svg]

A Rust Lambda function which does exactly nothing.

[Repository](https://github.com/naftulikay/rust-lambda-pristine)

## Releases

To get a ready-to-go zip archive containing a binary named `bootstrap`, which should be compatible in-place with 
[Lambda custom runtime requirements][lambda-custom-runtime], see [the releases page][releases] to get the latest built
archive.

## Building

To build the project yourself, clone the repository, ensure that `rustup` is installed, that the
`x86_64-unknown-linux-musl` target is installed, that `zip` is present on `PATH` and simply run `make archive`.

The built archive can be found in `target/x86_64-unknown-linux-musl/release/lambda.zip`.

## Usage

To use the function, obtain `lambda.zip` either from [releases][releases] or via building locally, and use that as the
Lambda deployment archive. The archive contains the README, the licenses, and a stripped binary called `bootstrap`,
so as to be compatible with [Lambda custom runtime requirements][lambda-custom-runtime].

## License

Licensed at your discretion under either:

 - [Apache Software License, Version 2.0](./LICENSE-APACHE)
 - [MIT License](./LICENSE-MIT)

[audit.svg]: https://github.com/naftulikay/rust-lambda-pristine/actions/workflows/audit.yml/badge.svg
[build.svg]: https://github.com/naftulikay/rust-lambda-pristine/actions/workflows/rust.yml/badge.svg
[lambda-custom-runtime]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-custom.html
[releases]: https://github.com/naftulikay/rust-lambda-pristine/releases
[repo]: https://github.com/naftulikay/rust-lambda-pristine
[repo.svg]: https://img.shields.io/badge/repository-github-brightgreen
