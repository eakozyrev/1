ifndef SPRJ
  $(error SPRJ environment variable must be defined. \
          Example .bashrc: export SPRJ=$$HOME/splitted_projects)
endif

REPORT_DIR=$(SPRJ)/altai3_hss_report

ifeq ($(wildcard $(REPORT_DIR)),)
  $(error Please install altai3_hss_report into $(SPRJ))
endif

XETEXMK:=$(REPORT_DIR)/template/xetex.mk

##############################################################################
# SOURCES and TARGET
##############################################################################
TEXDIRS=tex

IMAGEDIR=img
FIGSVG:=$(wildcard $(IMAGEDIR)/*.svg)

##############################################################################
include $(XETEXMK)
