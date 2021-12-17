# Postman 1
 Создать запросы в Postman.

Protocol: http
IP: 162.55.220.72
Port: 5005

EP_1
Method: GET
EndPoint: /get_method
request url params: 
 name: str
 age: int

response: 
[
    “Str”,
    “Str”
]

==================

EP_2
Method: POST
EndPoint: /user_info_3
request form data: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'u_salary_1_5_year': salary * 4}}


==================

EP_3
Method: GET
EndPoint: /object_info_1
request url params: 
 name: str
 age: int
 weight: int

response: 
{'name': name,
          'age': age,
          'daily_food': weight * 0.012,
          'daily_sleep': weight * 2.5}


==================

EP_4
Method: GET
EndPoint: /object_info_2
request url params: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }


==================

EP_5
Method: GET
EndPoint: /object_info_3
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'pets': {'cat':{'name':'Sunny',
                                     'age': 3},
                              'dog':{'name':'Luky',
                                     'age': 4}},
                     'u_salary_1_5_year': salary * 4}
          }


==================

EP_6
Method: GET
EndPoint: /object_info_4
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': int(age),
          'salary': [salary, str(salary * 2), str(salary * 3)]}


==================

EP_7
Method: POST
EndPoint: /user_info_2
request form data: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }
`$ touch preferences.xml`
 30. В файл preferences.xml добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате XML.
`$ vim preferences.xml` - [ESC] :wq
 31. Создать файл sklls.xml добавить информацию о скиллах которые будут изучены на курсе в формате XML
`$ touch skills.xml`
`$ vim skills.xml` - [ESC] :wq
 32. Сделать коммит в одну строку.
`$ git commit -am "create 2 files"`
 33. Отправить сразу 2 файла на внешний репозиторий.
`$ git push`
 34. На веб интерфейсе создать файл bug_report.xml.
`Add file - Create new file`
 35. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
` Commit new file: "bug_report.xml."`
 36. На веб интерфейсе модифицировать файл bug_report.xml, добавить баг репорт в формате XML.
`Edit this file`
 37. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
`Commit changes: "change bug_report"`
 38. Синхронизировать внешний и локальный репозиторий XML
 `$ git pull`
 
## _TXT_
 1. Создать внешний репозиторий c названием TXT.
`Create a new repository TXT`
 2. Клонировать репозиторий TXT на локальный компьютер.
`git clone https://github.com/olejniktut/QA_Course.git`
 3. Внутри локального TXT создать файл “new.txt”.
`$ touch new.txt`
 4. Добавить файл под гит.
`$ git add new.txt`
 5. Закоммитить файл.
`$ git commit -m "new-txt"`
 6. Отправить файл на внешний GitHub репозиторий.
`$ git push`
 7. Отредактировать содержание файла “new.txt” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате TXT.
`$ vim new.txt` - [ESC] :wq
 8. Отправить изменения на внешний репозиторий.
`$ git commit -am "change new-json"`
`$ git push`
 9. Создать файл preferences.txt
`$ touch preferences.txt`
 10. В файл preferences.txt” добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате TXT.
`$ vim preferences.txt` - [ESC] :wq
 11. Создать файл sklls.txt добавить информацию о скиллах которые будут изучены на курсе в формате TXT
`$ touch skills.txt`
`$ vim skills.txt` - [ESC] :wq
 12. Сделать коммит в одну строку.
`$ git commit -am "create 2 files"`
 13. Отправить сразу 2 файла на внешний репозиторий.
`$ git push`
 14. На веб интерфейсе создать файл bug_report.txt.
`Add file - Create new file`
 15. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
 `Commit new file: "bug_report.txt."`
 16. На веб интерфейсе модифицировать файл bug_report.txt, добавить баг репорт в формате TXT.
`Edit this file`
 17. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
`Commit changes: "change bug_report"`
 18. Синхронизировать внешний и локальный репозиторий TXT
` $ git pull`
