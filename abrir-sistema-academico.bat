@echo off
:MENU
cls
echo.
echo  ================================================
echo    S.G.A - Sistema de Gestion Academica
echo    Victor Yepes - Ingenieria de Software II
echo  ================================================
echo.
echo   Selecciona la pagina que deseas abrir:
echo.
echo    [1]  Dashboard
echo    [2]  Administrador
echo    [3]  Estudiantes
echo    [4]  Docentes
echo    [5]  Coordinadores
echo    [6]  Facultades
echo    [7]  Programas
echo    [8]  Materias
echo    [9]  Microcurriculo
echo    [10] Carga Academica
echo    [11] Horario Estudiante
echo    [12] Horario Docente
echo    [13] Aulas
echo    [14] Asistencia
echo    [15] Sensores IoT
echo    [16] Abrir TODAS
echo    [0]  Salir
echo.
set /p op="  Opcion: "

if "%op%"=="1"  start "" "%~dp0index.html"              & goto MENU
if "%op%"=="2"  start "" "%~dp0administrador.html"      & goto MENU
if "%op%"=="3"  start "" "%~dp0estudiantes.html"        & goto MENU
if "%op%"=="4"  start "" "%~dp0docentes.html"           & goto MENU
if "%op%"=="5"  start "" "%~dp0coordinadores.html"      & goto MENU
if "%op%"=="6"  start "" "%~dp0facultades.html"         & goto MENU
if "%op%"=="7"  start "" "%~dp0programas.html"          & goto MENU
if "%op%"=="8"  start "" "%~dp0materias.html"           & goto MENU
if "%op%"=="9"  start "" "%~dp0microcurriculo.html"     & goto MENU
if "%op%"=="10" start "" "%~dp0carga-academica.html"    & goto MENU
if "%op%"=="11" start "" "%~dp0horario-estudiante.html" & goto MENU
if "%op%"=="12" start "" "%~dp0horario-docente.html"    & goto MENU
if "%op%"=="13" start "" "%~dp0aulas.html"              & goto MENU
if "%op%"=="14" start "" "%~dp0asistencia.html"         & goto MENU
if "%op%"=="15" start "" "%~dp0sensores.html"           & goto MENU
if "%op%"=="16" goto TODAS
if "%op%"=="0"  exit

echo   Opcion invalida, intenta de nuevo.
timeout /t 2 /nobreak >nul
goto MENU

:TODAS
echo   Abriendo todas las paginas...
for %%f in (index administrador estudiantes docentes coordinadores facultades programas materias microcurriculo carga-academica horario-estudiante horario-docente aulas asistencia sensores) do (
    start "" "%~dp0%%f.html"
    timeout /t 1 /nobreak >nul
)
goto MENU
