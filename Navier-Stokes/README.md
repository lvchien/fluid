# Navier-Stokes equation

This project is a implementation of numerical scheme for Navier-Stokes problems, based on the method of characteristics and finite element method.

### Usage
The general syntax is:
```
Freefem++ main.edp [--config numconfig] [--meshname "name"] [--dc numoption] [--resu "resfolder"] [--arg value]
```
where basic options are
```
--config      the test case (1 for Lid-driven cavity, 2 for Backward facing step, 3 for Cylider )
--meshname    the name of mesh file (e.g. liddriven19)
--dc          the config of defect-correction (DC) methods (1 for using DC or 0 for non-DC)
--resu        the results directory (created if non-existent)
```
and numerical parameters are listed below:
```
--nu          the constant kinematic viscosity of the fluid
--T           the final time (second)
--dt          the time step (second)
--sigma       the stabilizing factor of defect-correction method (only for dc = 1 case)
--save        save results to .sol files configuration (1 for save, 0 for non-save)
```
and other optional parameters.

An example command for **Lid-driven cavity** test is as follow:
```
Freefem++ main.edp --config 1 --meshname "liddriven19" --dc 1 --resu "results\Lid_driven\h19" --T 100 --nu 1e-4 --nbp 100
```
