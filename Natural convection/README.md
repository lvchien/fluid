# Natural convection problem

### Structure
In this project, 2 test cases are investigated, including:
1. **Analytical solution test**
2. **Driven cavity flow test**.


### Usage
The general syntax is:
```
Freefem++ name_of_test.edp [--args value] 
```
where arguments are listed below:
```
--Pr          the Prandtl constant
--Ra          the Rayleigh constant
--tf          the final time (second)
--resu        the results directory (created if non-existent)
--n           the number of meshing points
--dt          the time step (second)
```
An example command for **analytical solution** test is as follow:
```
Freefem++ analytical_solution.edp --Pr 1.0 --tf 0.05 --resu "results\analytical_solution"
```
