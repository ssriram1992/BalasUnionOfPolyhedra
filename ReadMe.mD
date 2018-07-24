# Balas's union of polyhedra.

## Purpose
- To show integration between armadillo and Gurobi C++ API

## Requirements
- Gurobi with appropriate C++ API configured
- [armadillo](arma.sourceforge.net) (or [Gitlab](https://gitlab.com/conradsnicta/armadillo-code) repository)
- gcc compiler (g++) 

## Running the program
- Set appropriate path for gurobi includes and armadillo includes in your computer.
- `make`

## What does it do
- Given a finite set of polyhedra (in halfspace description), given as a vector of armadillo `arma::mat` or `arma::sp_mat` (dense or sparse matrix respectively) and an vector of RHS, it computes the convex hull of the union of the polyhedra, as defined by Balas.
- A linear objective can be given and the code uses Gurobi to optimize the linear objective over the convex hull of the union.

## Notes
- Check _Theorem 4.39_ in Conforti, M., Cornuéjols, G., & Zambelli, G. (2014). Integer Programming (Graduate Texts in Mathematics Vol. 271). Springer International Publishing. https://doi.org/10.1007/978-3-319-11008-0
- Notation used in the code corresponds to the symbols in the above textbook.

## Contact
- Email comments, criticisms to ssankar(this number is given later)@jhu.edu
- The number given later (which goes into my email id) is the sum of the smallest prime number and the smallest odd prime number.
- Alternatively drop comments on my [website](http://ssriram.weebly.com/).
