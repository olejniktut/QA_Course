## GitHub. HW2
1. На локальном репозитории сделать ветки для:
- Postman `$ git branch Postman`
- Jmeter `$ git branch Jmeter`
- CheckLists `$ git branch CheckLists`
- Bag Reports `$ git branch BagReports`
- SQL `$ git branch SQL`
- Charles `$ git branch Charles`
- Mobile testing `$ git branch Mobiletesting`

2. Запушить все ветки на внешний репозиторий ` $ git push --all`
3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта 
 ``` $ git checkout BagReports 
$ touch bag_report.txt && vim bag_report.txt   - [ESC] :wq
```
4. Запушить структуру багрепорта на внешний репозиторий 
```
$ git add bag_report.txt
$ git commint -m "bag report -c" 
$ git push origin BagReports
```
5. Вмержить ветку Bag Reports в Main `$ git checkout main` `$ git merge BagReports`
6. Запушить main на внешний репозиторий.`$ git push`
7. В ветке CheckLists набросать структуру чек листа.
 ``` $ git checkout CheckLists 
$ touch checklist.txt && checklist.txt   - [ESC] :wq
```
8. Запушить структуру на внешний репозиторий
```
$ git add checklist.txt
$ git commint -m "checklist -c" 
$ git push origin CheckLists
```
9. На внешнем репозитории сделать Pull Request ветки CheckLists в main 
10. Синхронизировать Внешнюю и Локальную ветки Main `$ git checkout main` `$ git pull`
