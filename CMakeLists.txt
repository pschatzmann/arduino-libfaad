cmake_minimum_required(VERSION 3.16)

if (DEFINED ESP_PLATFORM)
  # idf component
  idf_component_register(
      SRC_DIRS src src/libfaad
      INCLUDE_DIRS src src/libfaad
  )

  target_compile_options(${COMPONENT_LIB} PUBLIC -Wno-error -Wno-stringop-overflow -DHAVE_CONFIG_H)

else()

# set the project name
project(libfaad)

# lots of warnings and all warnings as errors
## add_compile_options(-Wall -Wextra )
set(CMAKE_CXX_STANDARD 17)

file(GLOB_RECURSE SRC_LIST_C CONFIGURE_DEPENDS  "${PROJECT_SOURCE_DIR}/src/*.c" )

# define libraries
add_library (libfaad ${SRC_LIST_C})

target_compile_options(libfaad PUBLIC -Wstringop-overflow=0)
target_compile_definitions(libfaad PUBLIC -DHAVE_CONFIG_H)

# define location for header files
target_include_directories(libfaad PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src ${CMAKE_CURRENT_SOURCE_DIR}/src/libfaad )

endif()