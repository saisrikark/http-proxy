DIR := "bin/"
TARGET := http-proxy

.PHONY: all build create_directory clean

all: create_directory build clean

build:
	@cargo build --release
	@cp target/release/$(TARGET) bin/$(TARGET)

print:
	@echo $(DIR)

create_directory:
	@mkdir -p $(DIR)

clean:
	@cargo clean
	@rm -f $(TARGET)