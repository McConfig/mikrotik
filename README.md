<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/MikroTik_logo.svg/1024px-MikroTik_logo.svg.png" alt="mikrotik">


## <img src="https://upload.wikimedia.org/wikipedia/commons/5/5c/Telegram_Messenger.png" alt="telegram" style="width:22px;"></img> Интеграция с Telegram

### Отправка сообщения в телеграмм в группу
```
tool fetch url="https://api.telegram.org/bot7358974222:AAE8w-2dBes_baWaKH87xodCtkkPSTkasSE/sendMessage?chat_id=-1002200341338&text=Hello message" dst-path=telegram.txt
```

### Отправка сообщения в телеграмм в тему группы

```
tool fetch url="https://api.telegram.org/bot7358974222:AAE8w-2dBes_baWaKH87xodCtkkPSTkasSE/sendMessage?chat_id=-1002200341338&message_thread_id=47&text=Hello message" dst-path=telegram.txt
```
