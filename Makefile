all: lib/glad.a
	
lib/glad.a: obj/glad.o
	ar rcs $@ $<
obj/glad.o: src/implementation/glad.c src/include/glad/glad.h src/include/KHR/khrplatform.h
	gcc -c $< -o $@ -std=c2y -m64 -I"src/include" -O3 -s -DNDEBUG
setup:
	mkdir lib
	mkdir bin
	mkdir obj
clean:
	find obj -type f -delete
	find bin -type f -delete
	find lib -type f -delete
.PHONY: setup all clean
	