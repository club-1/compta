# Configuration / variables section
PREFIX ?= /usr/local

# Default installation paths
BIN_DIR     := $(DESTDIR)$(PREFIX)/bin
DATA_DIR    := $(DESTDIR)/var/compta
DATA_GROUP  ?= compta

# Files to install
BINS        := compta compta-ajouter compta-effectuer compta-voir

# Installed files
BINS_INST   := $(patsubst %,$(BIN_DIR)/%,$(BINS))

all: ;

install:
	install -D -t $(BIN_DIR) $(BINS)
	addgroup --system $(DATA_GROUP)
	install -d $(DATA_DIR) -g $(DATA_GROUP) -m 775

uninstall:
	-rm $(BINS_INST)

.PHONY: all install uninstall
