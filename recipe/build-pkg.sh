set -e

export BLAS_LAPACK_LIB_PATHS="$PREFIX/lib"
export BLAS_LAPACK_LIBS="lapack:cblas:blas"

if [ ${cuda_compiler_version} == "None" ]; then
    python -m pip install . -vv
else
    python -m pip install --install-option="--gpu" . -vv
fi
