#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "wolfssl" for configuration "RelWithDebInfo"
set_property(TARGET wolfssl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(wolfssl PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/wolfssl.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/wolfssl.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS wolfssl )
list(APPEND _IMPORT_CHECK_FILES_FOR_wolfssl "${_IMPORT_PREFIX}/lib/wolfssl.lib" "${_IMPORT_PREFIX}/bin/wolfssl.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
