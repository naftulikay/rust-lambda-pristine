#!/usr/bin/make -f

REPO_ROOT:=$(shell git rev-parse --show-toplevel)
RUST_BINARY_NAME:=bootstrap
RUST_TARGET:=x86_64-unknown-linux-musl

SHELL:=$(shell which bash)

clean:
	@rm -f target/$(RUST_TARGET)/release/lambda.zip

build:
	@cargo build --release --target $(RUST_TARGET)

strip:
	@strip target/$(RUST_TARGET)/release/$(RUST_BINARY_NAME)

text-files: build
	@cp README.md LICENSE-MIT LICENSE-APACHE target/$(RUST_TARGET)/release/

archive: clean build strip text-files
	@(cd target/$(RUST_TARGET)/release && zip lambda.zip ./$(RUST_BINARY_NAME) ./README.md ./LICENSE-APACHE ./LICENSE-MIT)

sign:
	@cp target/$(RUST_TARGET)/release/bootstrap{,-x86_64-unknown-linux-musl}
	@gpg --batch --yes -a --detach-sign -o target/$(RUST_TARGET)/release/lambda.zip{.asc,}
	@gpg --batch --yes -a --detach-sign -o target/$(RUST_TARGET)/release/bootstrap-x86_64-unknown-linux-musl{.asc,}

verify:
	gpg --batch --verify target/$(RUST_TARGET)/release/lambda.zip{.asc,}
	gpg --batch --verify target/$(RUST_TARGET)/release/bootstrap-x86_64-unknown-linux-musl{.asc,}