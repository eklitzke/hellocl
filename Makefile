LDFLAGS = -L/usr/lib64/beignet -lcl

hello: hello.c hello.cl
	$(CC) $(LDFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f hello

.PHONY: run
run:
	LD_LIBRARY_PATH=/usr/lib64/beignet ./hello
