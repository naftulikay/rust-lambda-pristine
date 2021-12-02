#!/usr/bin/make -f

clean:
	@rm -f target/x86_64-unknown-linux-musl/release/lambda.zip

build:
	@cargo build --release --target x86_64-unknown-linux-musl

archive: clean build
	@strip target/x86_64-unknown-linux-musl/release/lambda
	@(cd target/x86_64-unknown-linux-musl/release && zip lambda.zip ./lambda)