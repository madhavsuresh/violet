build:
		@cargo build

test:
		@./runtests.sh

test-single:
		@RUST_TEST_THREADS=1 ./runtests.sh

bench:
		@RUST_TEST_THREADS=1 cargo bench

docs: build
		@cargo doc --no-deps

upload-docs: docs
		@./upload-docs.sh

.PHONY: build test bench docs upload-docs
