MFILE=$(FILE).o
ASMFILE=$(FILE).asm
# nasm -f elf64 program.asm -o program.o
COMPILEASM.o = nasm -f elf64
vpath %.o src 
vpath %.asm src 
r : link 
	./src/$(FILE) 
run : link 
	./src/$(FILE) && rm src/$(FILE) && rm src/$(MFILE)
run2: compilecpp
	./src/$(FILE) && rm src/$(FILE) && rm src/$(MFILE)
compilecpp: compile
	g++-14 src/$(MFILE) src/$(FILE).cpp -o src/$(FILE)

link :  compile 
	ld  src/$(MFILE) -o src/$(FILE)
compile: $(ASMFILE)
	$(COMPILEASM.o) $< -o src/$(MFILE)

clean : 
	rm src/$(FILE) && rm src/$(MFILE)
push : 
	git add . && git commit -m"64  bit bqby "

online : 
	git push origin main 
