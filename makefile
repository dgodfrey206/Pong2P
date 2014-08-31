SFML_INCLUDE="C:/Program Files/Microsoft Visual Studio 10.0/SFML-2.1/include"
LIBRARIES = -lsfml-graphics -lsfml-window -lsfml-system -lopengl32 -lglu32 -lglew32
SFML_LIB="C:\Documents and Settings\David Godfrey\My Documents\SFML-2.1\lib"

all: main.o
	g++ main.o -o pong -L$(SFML_LIB) $(LIBRARIES)
	mv main.o dependencies

main.o:
	g++ -std=c++11 -Wall -c include/main.cpp -I$(SFML_INCLUDE)
clean:
	rm pong.exe dependencies/main.o
