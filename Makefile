# Make file for Gurobi projects

# File name and output name
PROJECT=BalasPolyhedron
FILELIST=./$(PROJECT).cpp
OUTPUT=$(PROJECT)
ARGS=


# Generic objects not requiring changes
GCC=g++

# Armadillo stuff
ARMA=/opt/armadillo-code
ARMAINC=-I $(ARMA)/include
ARMALIB=-lblas -llapack
ARMAOPT=$(ARMAINC) $(ARMALIB)

# Gurobi stuff
GUR=/opt/gurobi/gurobi801/linux64
GURINC=-I $(GUR)/include 
GURLIB=-L $(GUR)/lib -lgurobi_c++ -lgurobi80 -lm 
GUROPT=$(GURINC) $(GURLIB)

run: compile
	./$(OUTPUT) $(ARGS)

compile: 
	$(GCC) $(FILELIST) $(OPTS) -o $(OUTPUT) $(GUROPT) $(ARMAOPT) -O2

clean:
	rm -rf $(OUTPUT)
