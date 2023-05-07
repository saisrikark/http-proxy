.PHONY: all build clean run

all: clean build 

build:
	@cargo build

clean:
	@cargo clean

run:
	@cargo run