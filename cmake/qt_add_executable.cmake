# Определение функции qt_add_executable
function(qt_add_executable TARGET_NAME)
    # Получаем все header и cpp файлы на текущем уровне каталога и ниже
    file(GLOB_RECURSE HEADER_FILES "*.h" "*.hpp")
    file(GLOB_RECURSE SOURCE_FILES "*.cpp" "*.cxx" "*.cc")

    # Добавляем исполняемый файл
    add_executable(${TARGET_NAME} ${HEADER_FILES} ${SOURCE_FILES})

    # Получаем остальные аргументы - список библиотек
    set(LIBS ${ARGN})
    if(DEFINED QT_LIBRARIES_FOUND)
        set(LIBS ${LIBS} ${QT_LIBRARIES_FOUND})
    endif()

    # Цикл для добавления каждой библиотеки
    foreach(LIB ${LIBS})
        target_link_libraries(${TARGET_NAME} PRIVATE ${LIB})
    endforeach()

endfunction()
