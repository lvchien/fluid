# Fluid simulation
This project is an implementation of the numerical schemes for fluid problems, such as Navier-Stokes equation and natural convection equation with Freefem++, based on the method of characteristics and finite element method (FEM).

### Freefem++ installation
First, you must install recent [Freefem++](http://www.freefem.org/ff++/). This program was written with version Freefem++ 3.47. 

### Clone this repository
You can download the zip at [here](https://github.com/lvchien/fluid/archive/master.zip) or clone this repository by git command
```
git clone https://github.com/lvchien/fluid.git
```

### Usage
The general syntax is:
```
Freefem++ main.edp [--config numconfig] [--testcase case] [--meshname "name"] [--dc numoption] [--resu "resfolder"] [--arg value]
```
where basic options are
```
--config      1: Navier-Stokes, 2: Natural convection  
--testcase    the test case
--meshname    the name of mesh file (e.g. liddriven19)
--dc          the config of defect-correction (DC) methods (1 for using DC or 0 for non-DC)
--resu        the results directory (created if non-existent)
```
and numerical parameters are listed below:
```
--nu          the constant kinematic viscosity of the fluid (Navier-Stokes only) 
--Pr          the Prandtl number (natural convection only)
--Ra          the Rayleigh number (natural convection only)
--T           the final time (second)
--dt          the time step (second)
--sigma       the stabilizing factor of defect-correction method (only for dc = 1 case)
--save        save results to .sol files configuration (1 for save, 0 for non-save)
```
and other optional parameters.

An example command for **Lid-driven cavity** test (Navier-Stokes problem) is as follow:
```
Freefem++ main.edp --config 1 --testcase 1 --meshname "liddriven19" --dc 1 --resu "results\Lid_driven\h19" --T 100 --nu 1e-4 --nbp 100
```

### Authors
This program has been developed by Le Van Chien, Tran Minh Tam and Ta Thi Thanh Mai (School of Applied Mathematics and Informatics, Hanoi University of Science and Technology).

Any suggestions or contributions are welcome. If you have any questions or want to create contributive brands, feel free to contact us at v.chienle@gmail.com.
