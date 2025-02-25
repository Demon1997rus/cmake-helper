# Определение глобальной переменной для хранения библиотек libcurl
set(LIBCURL_LIBRARIES_FOUND)

# Определение функции use_libcurl
function(use_libcurl)
    # Поиск и настройка libcurl
    find_package(CURL REQUIRED)

    # Добавление директорий с заголовочными файлами libcurl
    include_directories(${CURL_INCLUDE_DIRS})

    # Сохранение библиотек libcurl в глобальной переменной
    set(LIBCURL_LIBRARIES_FOUND ${CURL_LIBRARIES} PARENT_SCOPE)
endfunction()
