SHELL := /bin/bash
MAP_FILE := mapping
.PHONY: mapping

mapping:
	@while IFS=':' read -r src dest; do \
		src_path="$$HOME/musea/$$src"; \
		dest_path=$$(eval echo $$dest); \
		sudo ln -sf "$$src_path" "$$dest_path"; \
		echo "Linked $$src -> $$dest"; \
	done < $(MAP_FILE)
