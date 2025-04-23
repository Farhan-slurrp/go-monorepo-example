# Root Makefile

SERVICES := service-a service-b

.PHONY: build-all test-all run-all clean-all \
        $(addprefix build-,$(SERVICES)) \
        $(addprefix test-,$(SERVICES)) \
        $(addprefix run-,$(SERVICES)) \
        $(addprefix clean-,$(SERVICES))

# ---------- INDIVIDUAL ----------
$(addprefix build-,$(SERVICES)):
	@svc=$(@:build-%=%); \
	echo ">>> Building $$svc"; \
	$(MAKE) -C $$svc build

$(addprefix run-,$(SERVICES)):
	@svc=$(@:run-%=%); \
	echo ">>> Running $$svc"; \
	$(MAKE) -C $$svc run

$(addprefix test-,$(SERVICES)):
	@svc=$(@:test-%=%); \
	echo ">>> Testing $$svc"; \
	$(MAKE) -C $$svc test

$(addprefix clean-,$(SERVICES)):
	@svc=$(@:clean-%=%); \
	echo ">>> Cleaning $$svc"; \
	$(MAKE) -C $$svc clean

# ---------- GROUP ----------
build-all: $(addprefix build-,$(SERVICES))

run-all: $(addprefix run-,$(SERVICES))

test-all: $(addprefix test-,$(SERVICES))
	@echo ">>> Testing shared modules"
	go test ./shared/...

clean-all: $(addprefix clean-,$(SERVICES))
