BOXES=dummy-aws dummy-vcenter
BOX_FILES := $(foreach box, $(BOXES), $(box).box)

define BUILDBOX

$(1).box: $(1)/metadata.json $(1)/Vagrantfile
	@echo Building box "$(1).box"
	tar cvzf $(1).box $(1)/metadata.json $(1)/Vagrantfile

endef

all: $(BOX_FILES)

$(eval $(foreach box, $(BOXES), $(call BUILDBOX, $(box))))

clean:
	@for box_file in $(BOX_FILES) ; do \
		echo Deleting box "$$box_file"; \
		find . -maxdepth 1 -type f -name "$$box_file" -exec rm '{}' \; ; \
	done
