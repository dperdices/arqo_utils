FROM ubuntu:20.04
LABEL version="0.1" maintainer="Daniel Perdices <daniel.perdices@uam.es>"
RUN apt-get update && apt-get install -y binutils-mips-linux-gnu python3
COPY parser.py .
CMD mips-linux-gnu-as -g2 -mips32 -o programa.o &&  mips-linux-gnu-objdump --full-contents programa.o -j .data -d | python3 parser.py 1>&2 && mips-linux-gnu-objdump --full-contents programa.o -j .text -d | python3 parser.py
