University: [ITMO University](https://itmo.ru/ru/) <br/>
Faculty: [FICT](https://fict.itmo.ru) <br/>
Course: [Network programming](https://github.com/itmo-ict-faculty/network-programming) <br/>
Year: 2022/2023 <br/>
Group: K34202 <br/>
Author: Li Galina <br/>
Lab: 4 <br/>
Date of create: 24.11.2022 <br/>
Date of finished: 29.11.2022 <br/>

# Лабораторная работа №4 "Базовая 'коммутация' и туннелирование используя язык программирования P4"

## Описание
   В данной лабораторной работе ознакомлены на практике с языком программирования P4, разработанный компанией Barefoot (ныне Intel) для организации процесса обработки сетевого трафика на скорости чипа. Barefoot разработал несколько FPGA чипов для обработки трафика которые были встроенны в некоторые модели коммутаторов Arista и Brocade.
   
## Цель работы:
   Изучить синтаксис языка программирования P4 и выполнить 2 задания обучающих задания от Open network foundation для ознакомления на практике с P4.

## Ход работы:
   В процессе выполнения лабораторной работы были выпонены следующие шаги:
   
   ### Создание ВМ с помощью Vagrant ###
   Был склонирован репозиторий https://github.com/p4lang/tutorials
   
   [<img src="https://user-images.githubusercontent.com/58363643/203720593-62110b3a-027b-48e1-9bf6-d10092b818bd.png" width="600"/>](https://user-images.githubusercontent.com/58363643/203720593-62110b3a-027b-48e1-9bf6-d10092b818bd.png)
   
   Были установлены Vagrant и VirtualBox. </br>
   Был выполнен переход в папку vm-ubuntu-20.04. Создана виртуальная машина с помощью команды vagrant up.
   [<img src="https://user-images.githubusercontent.com/58363643/203723368-5ca34f81-fd3e-4fb0-a07c-743917c5ae29.png" width="600"/>](https://user-images.githubusercontent.com/58363643/203723368-5ca34f81-fd3e-4fb0-a07c-743917c5ae29.png)
   
   ### Implementing Basic Forwarding
   
   Был выполнен вход под учетной записью p4/p4.
   
   В shell была выполнена команда make run, а затем проверена доступность узлов.
   
   [<img src="https://user-images.githubusercontent.com/58363643/203771569-fadf3c1a-a429-4789-bb29-d71797a801cd.png" width="400"/>](https://user-images.githubusercontent.com/58363643/203771569-fadf3c1a-a429-4789-bb29-d71797a801cd.png)
   
   Был изменен файл basic.p4.
   
   Была выполнена проверка скрипта.
   
   [<img src="https://user-images.githubusercontent.com/58363643/203789865-4d61e360-4800-47fb-bd53-30f23149e1a0.png" width="400"/>](https://user-images.githubusercontent.com/58363643/203789865-4d61e360-4800-47fb-bd53-30f23149e1a0.png)
   
   ### Implementing Basic Tunneling
   Был изменен файл basic_tunnel.p4. </br>
   Была проверена локальная связность.
   
   [<img src="https://user-images.githubusercontent.com/58363643/203813294-318b9937-1289-43ee-b54d-3a46147d5b01.png" width="400"/>](https://user-images.githubusercontent.com/58363643/203813294-318b9937-1289-43ee-b54d-3a46147d5b01.png)

   Была выполнена проверка скрипта, с h1 был оправлен пакет на h2 без туннелирования.
   
   [<img src="https://user-images.githubusercontent.com/58363643/203809425-de4a23ee-a64a-4d3b-bb8a-2af3e1ca9fd9.png" width="400"/>](https://user-images.githubusercontent.com/58363643/203809425-de4a23ee-a64a-4d3b-bb8a-2af3e1ca9fd9.png)
   
   [<img src="https://user-images.githubusercontent.com/58363643/203809627-c281b2ba-fdf8-4686-b2c2-a1359143ddf2.png" width="400"/>](https://user-images.githubusercontent.com/58363643/203809627-c281b2ba-fdf8-4686-b2c2-a1359143ddf2.png)

   Был отправлен пакет с h1 на h2 с туннелированием.
   
   [<img src="https://user-images.githubusercontent.com/58363643/203812942-6a4c60aa-759a-4395-bd9d-af7da28b8cb5.png" width="800"/>](https://user-images.githubusercontent.com/58363643/203812942-6a4c60aa-759a-4395-bd9d-af7da28b8cb5.png)

## Выводы
Таким образом, был изучен язык P4, который позволяет настраивать сетевое оборудование, были дополнены скрипты, которые позволяют корректно обрабатывать трафик и организовывать туннели.

[<img src="https://user-images.githubusercontent.com/58363643/204451708-c03bace6-1f80-453e-8af8-09c6687de169.png" width="400"/>](https://user-images.githubusercontent.com/58363643/204451708-c03bace6-1f80-453e-8af8-09c6687de169.png)

   

   


