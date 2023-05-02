help([[
loads UFS Model prerequisites for pw-aws/intel
]])


prepend_path("MODULEPATH", "/contrib/spack-stack/envs/ufswm/install/modulefiles/Core")

load("stack-intel")
load("stack-intel-oneapi-mpi")
load("stack-python")
load("cmake/3.22.1")

load("ufs_common_spack")

setenv("CC", "mpiicc")
setenv("CXX", "mpiicpc")
setenv("FC", "mpiifort")
setenv("CMAKE_Platform", "aws.intel")

whatis("Description: UFS build environment")
