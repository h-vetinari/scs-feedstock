if not "%cuda_compiler_version%"=="None" (
   set "GPU_OPT=--install-option=--gpu"
)
python -m pip install %GPU_OPT% . -vv
if %ERRORLEVEL% neq 0 exit 1
