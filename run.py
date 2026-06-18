import os

targets = [ "1.1.1.1","8.8.8.8","ya.ru","vk.ru"]

for server in targets:

    print ("Запускаю проверку узла " + server)

    exit_code = os.system("ping -c 3 " + server)

    print ("---------------------------------------------------")
    if exit_code == 0:
        print ("Проверка узла ("+ server +") выполнена успешно")
    else:
        print ("Произошла ошибка при проверке узла ("+ server +"). Попробуйте снова.")

    print ("==================================\n")

print ("Массовое сканирование завершено")