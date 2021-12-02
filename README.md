# rust-lambda-pristine [![Repository][repo.svg]][repo] ![Build Status][build.svg] ![Audit Status][audit.svg]

A Rust Lambda function which does exactly nothing.

<small>

[GitHub Repository][repo]

</small>

## Releases

To get a ready-to-go zip archive containing a binary named `lambda`, see 
[the releases page][releases] to get the latest built archive.

## Building

To build the project yourself, clone the repository, ensure that `rustup` is installed, that the
`x86_64-unknown-linux-musl` target is installed, that `zip` is present on `PATH` and simply run `make archive`.

The built archive can be found in `target/x86_64-unknown-linux-musl/release/lambda.zip`.

## License

Licensed at your discretion under either:

 - [Apache Software License, Version 2.0](./LICENSE-APACHE)
 - [MIT License](./LICENSE-MIT)

[audit.svg]: https://github.com/naftulikay/rust-lambda-pristine/actions/workflows/audit.yml/badge.svg
[build.svg]: https://github.com/naftulikay/rust-lambda-pristine/actions/workflows/rust.yml/badge.svg
[releases]: https://github.com/naftulikay/rust-lambda-pristine/releases
[repo]: https://github.com/naftulikay/rust-lambda-pristine
[repo.svg]: https://img.shields.io/badge/repository-github-brightgreen
