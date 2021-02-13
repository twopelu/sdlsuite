@ECHO OFF

REM PROMPT

emcmdprompt.bat

REM BUILD

REM Development (no optimization)
emcc sdl_suite.cpp -o target/sdl_suite.html

REM Production (optimization)
REM emcc -02 sdl_suite.cpp -o target/sdl_suite.html
REM emcc 02 sdl_suite.cpp -o target/sdl_suite.html --preload-file file/sdl_suite.txt # preload files

REM RUN

python -m http.server --directory target
REM python -m http.server 8000 --directory target # change default port

REM START chrome http://localhost:8000/sdl_suite.html