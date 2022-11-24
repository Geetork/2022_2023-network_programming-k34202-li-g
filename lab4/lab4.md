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


