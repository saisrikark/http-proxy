DIR := bin/
TARGET := http-proxy
FULL_PATH := $(DIR)$(TARGET)

.PHONY: all build create_directory clean run

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

run:
	@$(shell) ./$(FULL_PATH)