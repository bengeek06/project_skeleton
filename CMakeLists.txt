cmake_minimum_required(VERSION 3.20)

set (PROJECT_NAME "project_skeleton")
set (VERSION_MAJOR 1)
set (VERSION_MINOR 0)


set(CMAKE_GENERATOR "Ninja")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)
include(check_c_env)

project(${PROJECT_NAME})

configure_file (
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${PROJECT_BINARY_DIR}/config.h"
)

include(set_compiler_flags)

include_directories("${PROJECT_BINARY_DIR}")

add_subdirectory(src)

option(BUILD_TESTS "Build tests")
if(BUILD_TESTS)
    # GoogleTest requires at least C++14
    set(CMAKE_CXX_STANDARD 14)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)

    include(FetchContent)
    FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.tar.gz
    )
    # For Windows: Prevent overriding the parent project's compiler/linker settings
    set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
    FetchContent_MakeAvailable(googletest)
    include(Dart)
    enable_testing()
    add_subdirectory(tests)
endif(BUILD_TESTS)

option(BUILD_DOC "Build documentation")
if(BUILD_DOC)
  # check if Doxygen is installed
  find_package(Doxygen)
  if (DOXYGEN_FOUND)
      # set input and output files
      set(DOXYGEN_IN ${CMAKE_CURRENT_SOURCE_DIR}/doc/doxyfile)
      set(DOXYGEN_OUT ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile)
      set(DOXYGEN_HTML_FOOTER ${CMAKE_CURRENT_SOURCE_DIR}/doc/footer.html)
      set(DOXYGEN_HTML_HEADER ${CMAKE_CURRENT_SOURCE_DIR}/doc/header.html)
      set(DOXYGEN_PROJECT_LOGO ${CMAKE_CURRENT_SOURCE_DIR}/doc/logo_librtutils.png)

      # request to configure the file
      configure_file(${DOXYGEN_IN} ${DOXYGEN_OUT} @ONLY)
      message("Doxygen build started")

      # note the option ALL which allows to build the docs together with the application
      add_custom_target( doc_doxygen ALL
          COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYGEN_OUT}
          WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
          COMMENT "Generating API documentation with Doxygen"
          VERBATIM )
  else (DOXYGEN_FOUND)
    message("Doxygen need to be installed to generate the doxygen documentation")
  endif (DOXYGEN_FOUND)
endif(BUILD_DOC)



