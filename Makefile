# Configuration / variables section
PREFIX ?= /usr/local

# Default installation paths
BIN_DIR     := $(DESTDIR)$(PREFIX)/bin

# Files to install
BINS        := compta compta-ajouter compta-voir

# Installed files
BINS_INST   := $(patsubst %,$(BIN_DIR)/%,$(BINS))

all: ;

install:
	install -D -t $(BIN_DIR) $(BINS)

uninstall:
	-rm $(BINS_INST)

.PHONY: all install uninstall
