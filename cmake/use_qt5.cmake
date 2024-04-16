# Определение глобальной переменной для хранения библиотек Qt
set(QT_LIBRARIES_FOUND)

# Определение функции use_qt5
function(use_qt5)
    # Поиск и настройка Qt
    find_package(Qt5 COMPONENTS Core Widgets Gui Network OpenGL Sql Test Concurrent Xml REQUIRED)

    # Добавление директорий с заголовочными файлами Qt
    include_directories(${Qt5_INCLUDE_DIRS})

    # Сохранение библиотек Qt в глобальной переменной
    set(QT_LIBRARIES_FOUND ${Qt5Core_LIBRARIES} ${Qt5Widgets_LIBRARIES} ${Qt5Gui_LIBRARIES} ${Qt5Network_LIBRARIES} ${Qt5OpenGL_LIBRARIES} ${Qt5Sql_LIBRARIES} ${Qt5Test_LIBRARIES} ${Qt5Concurrent_LIBRARIES} ${Qt5Xml_LIBRARIES} PARENT_SCOPE)
endfunction()


