SFML_INCLUDE="C:/Program Files/Microsoft Visual Studio 10.0/SFML-2.1/include"
LIBRARIES = -lsfml-audio -lsfml-network -lsfml-window -lsfml-graphics \
-lglu32 -lopengl32 -lglew32

all: main.o
	g++ -std=c++11 -Wall -I$(SFML_INCLUDE) -o pong main.o
	mv main.o dependencies

main.o:
	g++ -L/lib -I$(SFML_INCLUDE)  $(LIBRARIES) -c include/main.cpp
clean:
	rm pong.exe
