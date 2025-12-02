MFILE=$(FILE).o
ASMFILE=$(FILE).asm
# nasm -f elf64 program.asm -o program.o
COMPILEASM.o = nasm -f elf64
vpath %.o src 
vpath %.asm src 
run : link 
	./src/$(FILE) && rm src/$(FILE) && rm src/$(MFILE)

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
