add_subdirectory("./module")


list(APPEND LIBRARIES 
  ${MOD_LIB}
  ${MATH_LIB}
  ${BASE_LIB}
  ${IO_LIB}
)

set(LIBRARIES ${LIBRARIES} PARENT_SCOPE)

# Executable binary
add_executable(${TARGET_NAME} main.f90)


target_link_libraries(${TARGET_NAME} ${LIBRARIES})
add_dependencies(${TARGET_NAME} ${LIBRARIES})
