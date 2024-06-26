include(CMakePrintHelpers)
cmake_print_variables(CMAKE_CXX_COMPILER_ID)
cmake_print_variables(CMAKE_CXX_COMPILER_VERSION)

if(CMAKE_C_COMPILER_ID MATCHES "GNU")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -pedantic")
    set(CMAKE_C_FLAGS_RELEASE     "-O2")
    set(CMAKE_C_FLAGS_DEBUG       "-O0 -g3")
    set(CMAKE_C_FLAGS_COVERAGE    "-O0 -g3 --coverage")
    message("CMAKE_C_FLAGS=${CMAKE_C_FLAGS}")
endif()

if(CMAKE_C_COMPILER_ID MATCHES "Clang")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wwrite-strings") 
    set(CMAKE_C_FLAGS "-Wpointer-arith -Wimplicit-fallthrough -Wshadow")
    set(CMAKE_C_FLAGS "-Wvla -Wformat=2 -Wno-format-nonliteral -fPIE")
    set(CMAKE_C_FLAGS_RELEASE     "-O2")
    set(CMAKE_C_FLAGS_DEBUG       "-O0 -g3")
    set(CMAKE_C_FLAGS_COVERAGE    "-O0 -g3 --coverage")
endif()

if(CMAKE_C_COMPILER_ID MATCHES "MSVC")
    # Strictest warnings, UTF-8 source and execution charset
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /W3 /utf-8")
endif()
