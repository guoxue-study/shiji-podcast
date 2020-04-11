XFTTS=env XF_TTS_SPEED=60 XF_TTS_VCN=x2_pengfei xftts
GEN_README=gen_readme

SRC=$(shell find src/*.md)
OUT=$(SRC:src/%.md=assets/%.mp3)

all: $(OUT) gen-readme

$(OUT):assets/%.mp3:src/%.md
	@echo "Creating $@ with file $<."
	-@$(XFTTS) $< $@

gen-readme:
	@$(GEN_README) src README.md