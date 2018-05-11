# Navier-Stokes equation
### Usage
The general syntax is:
```
Freefem++ main.edp [--config numconfig] [--dc numoption] [--resu resfolder] [--args value]
```
where basic options are
```
--config      the test case (1 for Lid-driven cavity, 2 for Backward facing step, 3 for Cylider and 4 for Stokes flow around cylider)
--order       the config of defect-correction (DC) methods (1 for using DC or 0 for not DC)
--resu        the results directory (created if non-existent)
```
and numerical parameters are listed below:
```
--T           the final time (second)
--nn          the number of meshing points
--dt          the time step (second)
--nbp         the number of points in vertical and horizontal lines
--nu          the constant kinematic viscosity of the fluid
--sigma       the stabilizing factor of defect-correction method
```
An example command for **Lid-driven cavity** test is as follow:
```
Freefem++ main.edp --config 1 --dc 1 --resu "results\Lid-driven cavity" --T 100 --nu 1e-4 --nbp 100
```
