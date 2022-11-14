University: [ITMO University](https://itmo.ru/ru/) <br/>
Faculty: [FICT](https://fict.itmo.ru) <br/>
Course: [Network programming](https://github.com/itmo-ict-faculty/network-programming) <br/>
Year: 2022/2023 <br/>
Group: K34202 <br/>
Author: Li Galina <br/>
Lab: Lab2 <br/>
Date of create: 14.11.2022 <br/>
Date of finished: x.11.2022 <br/>

# Лабораторная работа №3 "Развертывание Netbox, сеть связи как источник правды в системе технического учета Netbox"

## Описание
   В данной лабораторной работе вы ознакомитесь с интеграцией Ansible и Netbox и изучите методы сбора информации с помощью данной интеграции.

## Цель работы:
   С помощью Ansible и Netbox собрать всю возможную информацию об устройствах и сохранить их в отдельном файле.

## Ход работы:
   В процессе выполнения лабораторной работы были выпонены следующие шаги:
   
   ### Развертывание Netbox на Ubuntu ###
   1. Была выполнена установка NetBox

 [<img src="https://user-images.githubusercontent.com/58363643/200498777-cdbd4dd5-a700-43ba-8cfb-dd21d6d21948.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200498777-cdbd4dd5-a700-43ba-8cfb-dd21d6d21948.png)
 
[<img src="https://user-images.githubusercontent.com/58363643/200498926-aa7aaef8-ed8b-4d23-b01e-27950a2f8b4a.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200498926-aa7aaef8-ed8b-4d23-b01e-27950a2f8b4a.png)

[<img src="https://user-images.githubusercontent.com/58363643/200499077-ea1856f8-377f-4514-842b-e9334385a1ea.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200499077-ea1856f8-377f-4514-842b-e9334385a1ea.png)

[<img src="https://user-images.githubusercontent.com/58363643/200520059-a63685ee-7eae-4c7a-aca5-112b02b96a33.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200520059-a63685ee-7eae-4c7a-aca5-112b02b96a33.png)

[<img src="https://user-images.githubusercontent.com/58363643/200538747-82e3aaeb-898c-42d1-a7a5-5ba7b562ce2c.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200538747-82e3aaeb-898c-42d1-a7a5-5ba7b562ce2c.png)

[<img src="https://user-images.githubusercontent.com/58363643/200540286-e9c8fd13-878f-4889-b3f7-34858cc1b9ec.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200540286-e9c8fd13-878f-4889-b3f7-34858cc1b9ec.png)

   2. В NetBox были внесены данные CHR1 и CHR2
  
![image](https://user-images.githubusercontent.com/58363643/200551115-e021f77d-844e-4879-8359-08a03d52b802.png)

[<img src="https://user-images.githubusercontent.com/58363643/200800864-1b5ed722-a5f2-4754-a26d-7bb57babe43b.png" width="600"/>](https://user-images.githubusercontent.com/58363643/200800864-1b5ed722-a5f2-4754-a26d-7bb57babe43b.png)

[<img src="https://user-images.githubusercontent.com/58363643/200800911-ccb04675-8bef-4bd5-bf71-010a7a2bde8d.png" width="600"/>](https://user-images.githubusercontent.com/58363643/200800911-ccb04675-8bef-4bd5-bf71-010a7a2bde8d.png)

[<img src="https://user-images.githubusercontent.com/58363643/200800988-493134ab-9bac-4def-b0cc-10b2f8f86d1b.png" width="400"/>](https://user-images.githubusercontent.com/58363643/200800988-493134ab-9bac-4def-b0cc-10b2f8f86d1b.png)

[<img src="https://user-images.githubusercontent.com/58363643/200801075-80f2d9b9-a581-4bde-96b2-f057e5cdc716.png" width="600"/>](https://user-images.githubusercontent.com/58363643/200801075-80f2d9b9-a581-4bde-96b2-f057e5cdc716.png)

   3. Была выполнена демонизация NetBox
  
[<img src="https://user-images.githubusercontent.com/58363643/200801220-0252ccf9-762c-4297-b6a7-e41f48542bf3.png" width="600"/>](https://user-images.githubusercontent.com/58363643/200801220-0252ccf9-762c-4297-b6a7-e41f48542bf3.png)

   4. Из NetBox был скачан файл csv с данными о CHR1, CHR2

[<img src="https://user-images.githubusercontent.com/58363643/201320463-e2342015-f968-43ff-b4be-c6b466c32b1a.png" width="600"/>](https://user-images.githubusercontent.com/58363643/201320463-e2342015-f968-43ff-b4be-c6b466c32b1a.png)

### Написание сценария для настройки CHR1, CHR2 ###

   5. Был написан сценарий для настройки сетевых устройств

[<img src="https://user-images.githubusercontent.com/58363643/201353339-d6f4bf3b-1201-46c9-94ce-04db7ea3d393.png" width="400"/>](https://user-images.githubusercontent.com/58363643/201353339-d6f4bf3b-1201-46c9-94ce-04db7ea3d393.png)

   6. Была выполнена проверка изменения настроек сетевого устройства
   
[<img src="https://user-images.githubusercontent.com/58363643/201350970-1d9b9fda-f21b-4029-a275-1e0f35d53c79.png" width="200"/>](https://user-images.githubusercontent.com/58363643/201350970-1d9b9fda-f21b-4029-a275-1e0f35d53c79.png)

### Написание сценария для создания устройтва в NetBox ###
   7. Был создан сценарий для получения серийного номера сетевого устройства и создания устройства в NetBox

[<img src="https://user-images.githubusercontent.com/58363643/201636103-ba637bf6-4a4c-4b4c-8fa6-d50a3099f356.png" width="400"/>](https://user-images.githubusercontent.com/58363643/201636103-ba637bf6-4a4c-4b4c-8fa6-d50a3099f356.png)

   8. Была выполнена проверка работы сценария
   
[<img src="https://user-images.githubusercontent.com/58363643/201635874-79a00d34-f62b-411b-979e-0979208d61b0.png" width="400"/>](https://user-images.githubusercontent.com/58363643/201635874-79a00d34-f62b-411b-979e-0979208d61b0.png)

[<img src="https://user-images.githubusercontent.com/58363643/201635820-ea4fc208-9ca6-4c1a-8d38-814b5bcd8cb7.png" width="800"/>](https://user-images.githubusercontent.com/58363643/201635820-ea4fc208-9ca6-4c1a-8d38-814b5bcd8cb7.png)

## Выводы:
   Таким образом, в процессе выполнения лабораторной работы ознакомились с инструментом NetBox, были созданы сценарии Ansible для работы с NetBox.
   
[<img src="https://user-images.githubusercontent.com/58363643/201637927-5f979abc-82b9-4670-9bb7-f2811174bf9a.png" width="400"/>](https://user-images.githubusercontent.com/58363643/201637927-5f979abc-82b9-4670-9bb7-f2811174bf9a.png)

[<img src="https://user-images.githubusercontent.com/58363643/201636964-661a106e-6b31-4ceb-b67f-8cd60fe4f803.png" width="200"/>](https://user-images.githubusercontent.com/58363643/201636964-661a106e-6b31-4ceb-b67f-8cd60fe4f803.png)
