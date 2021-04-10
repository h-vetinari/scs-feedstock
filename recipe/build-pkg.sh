set -e

export BLAS_LAPACK_LIB_PATHS="$PREFIX/lib"
export BLAS_LAPACK_LIBS="lapack:cblas:blas"

if [ ${cuda_compiler_version} == "None" ]; then
    python -m pip install . -vv
else
    # for some reason, pip complains that it does not understand
    # the --gpu option, even with the pass-through-wrapper
    # python -m pip install --install-option="--gpu" . -vv
    python setup.py install --scs --gpu --extraverbose
fi
