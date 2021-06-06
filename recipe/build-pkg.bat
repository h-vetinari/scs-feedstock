
set "BLAS_LAPACK_LIB_PATHS=%LIBRARY_LIB%"
set "BLAS_LAPACK_LIBS=lapack:cblas:blas"

if "%cuda_compiler_version%"=="None" (
    python -m pip install . -vv
    if %ERRORLEVEL% neq 0 exit 1
) else (
    python setup.py install --scs --gpu --extraverbose
    if %ERRORLEVEL% neq 0 exit 1
)
