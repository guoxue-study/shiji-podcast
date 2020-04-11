XFTTS=env XF_TTS_SPEED=60 XF_TTS_VCN=x2_pengfei xftts

SRC=$(shell find src/*.md)
OUT=$(SRC:src/%.md=assets/%.mp3)

all: $(OUT)

$(OUT):assets/%.mp3:src/%.md
	@echo "Creating $@ with file $<."
	-@$(XFTTS) $< $@