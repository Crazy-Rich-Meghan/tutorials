## Overview

This example demostrates how the Geometry + Simulation Modules (G+Smo) can be utilised through a module-type adapter to couple with other codes using preCICE. G+Smo offers a robust framework for isogeometric analysis (IGA), seamlessly integrating geometric representations with numerical solvers to enable advanced simulations and efficient code coupling.

## Requirements

To run the tutorial you need to install the following components:
- [preCICE](https://precice.org/quickstart.html)
- [G+Smo and gsPreCICE](https://github.com/gismo/gismo)

## Run the tutorial

### G+Smo and preCICE adapter (`gsPreCICE`) Installation
Since `gsPreCICE`is a submodule of G+Smo, you should download G+Smo first:

```
git clone https://github.com/gismo/gismo.git
```

Then, configure G+Smo with `-DGISMO_OPTIONAL=";gsPreCICE"`:

```
cd gismo
mkdir build
cd build
cmake .. -DGISMO_OPTIONAL="<other submodules>;gsPreCICE"
```

This will trigger a download of `gsPreCICE` from GitHub. Once `gsPreCICE` is downloaded, you can compile G+Smo with `gsPreCICE`:

```
make solid-gismo-elasticity -j<number of threads to use>
```

### Linking the Executable to the preCICE Tutorial Folder


1. Navigate to the directory of the preCICE tutorial (solid-gismo-elasticity).
```
cd <path to your precice tutorials directory>/perpendicular-flap-stress/solid-gismo-elasticity/
```

2. Create the symbolic link between the executable file and the preCICE tutorial folder
```
ln -sf <path to your G+Smo build folder>/bin/solid-gismo-elasticity ./solid-gismo-elasticity
```

### Run the G+Smo tutorial
Open two terminals and run:
```
cd solid-gismo-elasticity
./run.sh
```
and

```
cd fluid-openfoam
./run.sh
```

