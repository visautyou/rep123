password = "11"

attempts = 4

while attempts > 0:
    user_input = input ("Введите пароль. (Осталось попыток: "+ str(attempts) +"):")
    
    if user_input == password:
        print ("Пароль введен успешно. Добро пожаловать")
        break
    else:
        attempts = attempts - 1
        print ("Пароль введен неверно,попробуйте еще раз.")
