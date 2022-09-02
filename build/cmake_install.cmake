# Install script for directory: C:/_Rabota/wolfBoot/lib/wolfssl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/wolfssl")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/_Rabota/wolfBoot/build/Debug/wolfssl.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/_Rabota/wolfBoot/build/Release/wolfssl.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/_Rabota/wolfBoot/build/MinSizeRel/wolfssl.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/_Rabota/wolfBoot/build/RelWithDebInfo/wolfssl.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/_Rabota/wolfBoot/build/Debug/wolfssl.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/_Rabota/wolfBoot/build/Release/wolfssl.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/_Rabota/wolfBoot/build/MinSizeRel/wolfssl.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/_Rabota/wolfBoot/build/RelWithDebInfo/wolfssl.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wolfssl" TYPE DIRECTORY FILES "C:/_Rabota/wolfBoot/lib/wolfssl/wolfssl/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "(internal.h|cyassl/ctaocrypt/port|wolfssl/wolfcrypt/port/nrf51.h|wolfssl/wolfcrypt/port/arm|wolfssl/wolfcrypt/port/cypress|wolfssl/wolfcrypt/port/espressif|wolfssl/wolfcrypt/port/iotsafe|wolfssl/wolfcrypt/port/nxp|wolfssl/wolfcrypt/port/pic|wolfssl/wolfcrypt/port/renesas|wolfssl/wolfcrypt/port/silabs|wolfssl/wolfcrypt/port/st|wolfssl/wolfcrypt/port/ti|wolfssl/wolfcrypt/port/xilinx|wolfssl/wolfcrypt/port/atmel|wolfssl/wolfcrypt/port/af_alg|wolfssl/wolfcrypt/port/kcapi|wolfssl/wolfcrypt/port/devcrypto|wolfssl/wolfcrypt/async.h|wolfssl/wolfcrypt/wc_pkcs11.h|wolfssl/wolfcrypt/pkcs11.h|wolfssl/wolfcrypt/port/cavium|wolfssl/wolfcrypt/port/intel|wolfssl/wolfcrypt/sp.h|wolfssl/wolfcrypt/sp_int.h|wolfssl/wolfcrypt/selftest.h|wolfssl/wolfcrypt/fips.h|wolfssl/wolfcrypt/port/caam)" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cyassl" TYPE DIRECTORY FILES "C:/_Rabota/wolfBoot/lib/wolfssl/cyassl/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "(internal.h|cyassl/ctaocrypt/port|wolfssl/wolfcrypt/port/nrf51.h|wolfssl/wolfcrypt/port/arm|wolfssl/wolfcrypt/port/cypress|wolfssl/wolfcrypt/port/espressif|wolfssl/wolfcrypt/port/iotsafe|wolfssl/wolfcrypt/port/nxp|wolfssl/wolfcrypt/port/pic|wolfssl/wolfcrypt/port/renesas|wolfssl/wolfcrypt/port/silabs|wolfssl/wolfcrypt/port/st|wolfssl/wolfcrypt/port/ti|wolfssl/wolfcrypt/port/xilinx|wolfssl/wolfcrypt/port/atmel|wolfssl/wolfcrypt/port/af_alg|wolfssl/wolfcrypt/port/kcapi|wolfssl/wolfcrypt/port/devcrypto|wolfssl/wolfcrypt/async.h|wolfssl/wolfcrypt/wc_pkcs11.h|wolfssl/wolfcrypt/pkcs11.h|wolfssl/wolfcrypt/port/cavium|wolfssl/wolfcrypt/port/intel|wolfssl/wolfcrypt/sp.h|wolfssl/wolfcrypt/sp_int.h|wolfssl/wolfcrypt/selftest.h|wolfssl/wolfcrypt/fips.h|wolfssl/wolfcrypt/port/caam)" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wolfssl" TYPE DIRECTORY FILES "C:/_Rabota/wolfBoot/lib/wolfssl/wolfssl/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "(internal.h|cyassl/ctaocrypt/port|wolfssl/wolfcrypt/port/nrf51.h|wolfssl/wolfcrypt/port/arm|wolfssl/wolfcrypt/port/cypress|wolfssl/wolfcrypt/port/espressif|wolfssl/wolfcrypt/port/iotsafe|wolfssl/wolfcrypt/port/nxp|wolfssl/wolfcrypt/port/pic|wolfssl/wolfcrypt/port/renesas|wolfssl/wolfcrypt/port/silabs|wolfssl/wolfcrypt/port/st|wolfssl/wolfcrypt/port/ti|wolfssl/wolfcrypt/port/xilinx|wolfssl/wolfcrypt/port/atmel|wolfssl/wolfcrypt/port/af_alg|wolfssl/wolfcrypt/port/kcapi|wolfssl/wolfcrypt/port/devcrypto|wolfssl/wolfcrypt/async.h|wolfssl/wolfcrypt/wc_pkcs11.h|wolfssl/wolfcrypt/pkcs11.h|wolfssl/wolfcrypt/port/cavium|wolfssl/wolfcrypt/port/intel|wolfssl/wolfcrypt/sp.h|wolfssl/wolfcrypt/sp_int.h|wolfssl/wolfcrypt/selftest.h|wolfssl/wolfcrypt/fips.h|wolfssl/wolfcrypt/port/caam)" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cyassl" TYPE DIRECTORY FILES "C:/_Rabota/wolfBoot/lib/wolfssl/cyassl/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "(internal.h|cyassl/ctaocrypt/port|wolfssl/wolfcrypt/port/nrf51.h|wolfssl/wolfcrypt/port/arm|wolfssl/wolfcrypt/port/cypress|wolfssl/wolfcrypt/port/espressif|wolfssl/wolfcrypt/port/iotsafe|wolfssl/wolfcrypt/port/nxp|wolfssl/wolfcrypt/port/pic|wolfssl/wolfcrypt/port/renesas|wolfssl/wolfcrypt/port/silabs|wolfssl/wolfcrypt/port/st|wolfssl/wolfcrypt/port/ti|wolfssl/wolfcrypt/port/xilinx|wolfssl/wolfcrypt/port/atmel|wolfssl/wolfcrypt/port/af_alg|wolfssl/wolfcrypt/port/kcapi|wolfssl/wolfcrypt/port/devcrypto|wolfssl/wolfcrypt/async.h|wolfssl/wolfcrypt/wc_pkcs11.h|wolfssl/wolfcrypt/pkcs11.h|wolfssl/wolfcrypt/port/cavium|wolfssl/wolfcrypt/port/intel|wolfssl/wolfcrypt/sp.h|wolfssl/wolfcrypt/sp_int.h|wolfssl/wolfcrypt/selftest.h|wolfssl/wolfcrypt/fips.h|wolfssl/wolfcrypt/port/caam)" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/wolfssl/example" TYPE FILE FILES
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/echoserver/echoserver.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/sctp/sctp-server.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/sctp/sctp-client-dtls.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/sctp/sctp-client.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/sctp/sctp-server-dtls.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/echoclient/echoclient.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/server/server.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/benchmark/tls_bench.c"
    "C:/_Rabota/wolfBoot/lib/wolfssl/examples/client/client.c"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/wolfssl" TYPE FILE FILES
    "C:/_Rabota/wolfBoot/lib/wolfssl/doc/README.txt"
    "C:/_Rabota/wolfBoot/lib/wolfssl/certs/taoCert.txt"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl/wolfssl-config.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl/wolfssl-config.cmake"
         "C:/_Rabota/wolfBoot/build/CMakeFiles/Export/lib/cmake/wolfssl/wolfssl-config.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl/wolfssl-config-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl/wolfssl-config.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl" TYPE FILE FILES "C:/_Rabota/wolfBoot/build/CMakeFiles/Export/lib/cmake/wolfssl/wolfssl-config.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl" TYPE FILE FILES "C:/_Rabota/wolfBoot/build/CMakeFiles/Export/lib/cmake/wolfssl/wolfssl-config-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl" TYPE FILE FILES "C:/_Rabota/wolfBoot/build/CMakeFiles/Export/lib/cmake/wolfssl/wolfssl-config-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl" TYPE FILE FILES "C:/_Rabota/wolfBoot/build/CMakeFiles/Export/lib/cmake/wolfssl/wolfssl-config-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/wolfssl" TYPE FILE FILES "C:/_Rabota/wolfBoot/build/CMakeFiles/Export/lib/cmake/wolfssl/wolfssl-config-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/_Rabota/wolfBoot/build/support/wolfssl.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/_Rabota/wolfBoot/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
