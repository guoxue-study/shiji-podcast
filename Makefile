XFTTS=env XF_TTS_SPEED=60 XF_TTS_VCN=x2_pengfei podgen mp3
GEN_README=podgen readme
GEN_FEED=podgen feed
GEN_INDEX=podgen html

SRC=$(shell find src/*.md)
OUT=$(SRC:src/%.md=assets/%.mp3)

all: $(OUT) gen-readme gen-index gen-feed

$(OUT):assets/%.mp3:src/%.md
	@echo "Creating $@ with file $<."
	-@$(XFTTS) $< $@

gen-readme:
	@$(GEN_README) src

gen-index:
	@$(GEN_INDEX) src

gen-feed:
	@$(GEN_FEED) src
