# SDL Suite

SDL Suite is a testbed for media written in C++ and compiled into WASM.

Following instructions are for Windows, check official docs for other SO.

# Install EMSDK

```
git clone https://github.com/emscripten-core/emsdk.git

cd emsdk

git pull

emsdk install latest

emsdk activate latest --permanent

emsdk_env.bat
```

# Compile and Run

```
emcmdprompt.bat

# Development (no optimization)
emcc sdl_suite.cpp -o target/sdl_suite.html

# Production (optimization)
# emcc -02 sdl_suite.cpp -o target/sdl_suite.html
# emcc 02 sdl_suite.cpp -o target/sdl_suite.html --preload-file file/sdl_suite.txt # preload files

python -m http.server --directory target
# python -m http.server 8000 --directory target # change default port

# node sdl_suite.html
# START chrome http://localhost:8000/sdl_suite.html
```

----

## Emscripten 

https://emscripten.org

## Simple DirectMedia Layer

https://www.libsdl.org/
