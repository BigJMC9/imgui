setlocal
set "current_dir=%~dp0"
cd "C:\Users\xbox\Desktop\Development\glslang\bin"
glslangValidator.exe -V -x -o "%current_dir%glsl_shader.vert.u32" "%current_dir%glsl_shader.vert"
glslangValidator.exe -V -x -o "%current_dir%glsl_shader.frag.u32" "%current_dir%glsl_shader.frag"
pause