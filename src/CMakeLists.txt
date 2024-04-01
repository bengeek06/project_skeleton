file(GLOB sources 
    *.c
)

add_library(objlib OBJECT ${sources})

target_include_directories(
    objlib
    PUBLIC ../include
)

add_library(${PROJECT_NAME} SHARED $<TARGET_OBJECTS:objlib>)

if(NOT(CMAKE_SYSTEM_NAME STREQUAL "Windows"))
    add_library(${PROJECT_NAME}_static STATIC $<TARGET_OBJECTS:objlib>)
    set_target_properties(${PROJECT_NAME}_static PROPERTIES OUTPUT_NAME ${PROJECT_NAME})
endif()
