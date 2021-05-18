//
//  QuestionModel.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 07.02.2021.
//

import Foundation

struct QuestionModel {
  
  var questionNumber = 0
  var score = 0
  var timerZero = 0
  
  let test = [
    Question(text: "1. В каком варианте правильно показано объявление шаблонной функции?", answers: ["func someFunc T(_ x: T)", "func someFunc <T>(_ x: <T>)", "func someFunc <T>(_ x: T)"], corAnsw: "func someFunc <T>(_ x: T)"),
    Question(text: "2. Ниже дана функция принимающая параметром замыкание, на каком варианте показан вызов этой функции?\n1. someFunc(closure : {“тело замыкания”});\n2. someFunc() {“тело замыкания”}" , answers: ["Только 1", "Неверны оба", "Только 2"], corAnsw: "Только 1"),
    Question(text: "3. В коде ниже объявлена структура и класс, чем являются константы – structObj и classObj?\n let structObj = someStruct()\n let classObj = someClass() ", answers: ["structObj – ссылка на объект структуры,  classObj – объект класса", "structObj – объект структуры,  classObj – ссылка на объект класса", "Оба являются объектами"], corAnsw: "structObj – объект структуры,  classObj – ссылка на объект класса"),
    Question(text: "4.Захватывают ли замыкания ссылку self?", answers: ["Да, причем по умолчанию, это будет сильная ссылка", "Нет", "Да, но только как слабую ссылку"], corAnsw: "Да, причем по умолчанию, это будет сильная ссылка"),
    Question(text: "5. Возможно ли в расширении добавить инициализатор?", answers: ["Да", "Нет", "Да, но только вспомогательный"], corAnsw: "Да, но только вспомогательный"),
    Question(text: "6. На какие типы можно добавить функциональность с помощью расширения?", answers: ["На класс и структуру", "Только на класс", "На класс, структуру, перечисление"], corAnsw: "На класс, структуру, перечисление"),
    Question(text: "7. На какие элементы языка Swift распространяется возможность использовать шаблонные типы?", answers: ["Классы, структуры, перечисления и функции(методы)", "Классы и структуры", "Перечисления"], corAnsw: "Классы, структуры, перечисления и функции(методы)"),
    Question(text: "8. Допустим есть структура и класс с одинаковым набором полей как показано ниже, в каком варианте верно показана инициализация для класса и структуры?\n struct someStruct { var x = 5 }\n class someClass { var x = 5 }", answers: ["let someStructObj = someStruct()\n let someClassObj = someClass()", "let someStructObj = someStruct(x:6)\n let someClassObj = someClass(x:6)", "Все варианты верны"], corAnsw: "Все варианты верны"),
    Question(text: """
 9.  Что выведет в консоль данный код?\n let text = ["hello", "world", "!"]\n print(text[0])
""", answers: ["Возникнет ошибка", "Выведет 0", "“hello”"], corAnsw: "“hello”"),
    Question(text: "10. Swift не позволяет использовать шаблоны для протоколов, но возможно ли каким-либо образом указать тип как шаблонный? ", answers: ["На самом деле шаблоны можно использовать с протоколами", "Нет", "Да, через механизм связанных типов"], corAnsw: "Да, через механизм связанных типов"),
    Question(text: "11. Используется ли для структур механизм подсчета ссылок?", answers: ["Да", "Нет", "В редких случаях"], corAnsw: "Нет"),
    Question(text: "12. Какого типа будет переменная var x: Float = 10?", answers: ["Double", "Int", "Float"], corAnsw: "Float"),
    Question(text: "13. Есть ли какие-либо ограничения на использование типов в шаблонных методах?", answers: ["Да, можно использовать только простые типы", "Нет, можно использовать любой тип", "Да, можно использовать только один тип"], corAnsw: "Нет, можно использовать любой тип"),
    Question(text: "14. Какого типа будет переменная var x = 10?", answers: ["Float", "Int", "Double"], corAnsw: "Int"),
    Question(text: """
15. Будет ли работать следующий код?\n func getText()-> String {\n return "text"\n }\n getText()
""", answers: ["Нет, не будет мы не используем значение функции getText()", "Возникнет ошибка", "Да, будет"], corAnsw: "Да, будет"),
    Question(text: "16. Что выведет в консоль данный код?\n let num : Int = 7 \n let result : Int = num % 2\n print(result)", answers: ["Возникнет ошибка", "1", "3.5"], corAnsw: "1"),
    Question(text: "17. Возникнет ли ошибка при выполнении следующего кода?\n var num : Int?\n print(num ?? 0)", answers: ["Нет", "Да", ""], corAnsw: "Нет"),
    Question(text: "18. Что выведет следующий код?\nfor index in 0...10 {\n  if index == 3 {\n  break\n} else {\n  print(index)\n  }\n}", answers: ["0,1,2", "Возникнет ошибка", "0,1,2,3,4,5,6,7,8,9"], corAnsw: "0,1,2"),
    Question(text: "19. Для чего нужны автозамыкания?", answers: ["Для того чтобы передать выражение в качестве аргумента функции", "Для того чтобы сохранять значение переменных внутри замыкания", "Для того чтобы изменять значения переменных внутри замыкания"], corAnsw: "Для того чтобы передать выражение в качестве аргумента функции"),
    Question(text: "20. Если вы хотите объявить параметр x = 10 как константный, то нужно написать:", answers: ["const var x = 10", "let var x = 10", "let x = 10"], corAnsw: "let x = 10"),
    Question(text: """
21. Верен ли следующий код, что он выводит:\n let point = (2, 2)\n  switch point {\n  case (let x, 0): print("точка на y")\n  case (0, let y): print("точка на x")\n  case (let x, let y):\n print("точка 2:2")\n}
""", answers: ["Верен, точка на x", "Нет", "Верен, точка 2 : 2"], corAnsw: "Верен, точка 2 : 2"),
    Question(text: "22. Можно ли через расширение добавить поддержку того или иного протокола?", answers: ["Нет, только добавить методы", "Да", "В некоторых случаях можно"], corAnsw: "Да"),
    Question(text: "23. Выберите вариант, где верно объявлена переменная, содержащая вызов функции:", answers: ["let str = hello(name : “world”)", "let str = func hello(name : “world”)", "let str = func(name : “world”)"], corAnsw: "let str = hello(name : “world”)"),
    Question(text: "24. В каком случае лучше использовать структуру, а не класс?", answers: ["Когда нам нужно инкапсулировать несколько связанных типов значения (value types)", "Лучше использовать всегда класс", "Особой разницы нет, можно всегда использовать структуру вместо класса"], corAnsw: "Когда нам нужно инкапсулировать несколько связанных типов значения (value types)"),
    Question(text: """
25. Что выводит следующий код:\n let x = 0\n switch x {\n  case 0 : print ("0")\n  case 1 : print ("1")\n  fallthrough\n  default: print("is a number")\n}
""", answers: ["0, is a number", "Будет ошибка", "0"], corAnsw: "0"),
    Question(text: "26.  Допустим у нас имеется структура, можно ли к ней применять механизм расширений?", answers: ["Да, можно", "Нет, шаблонные структуры, перечисления и классы расширять нельзя", "Можно в редких случаях"], corAnsw: "Да, можно"),
    Question(text: "27. Что выведет в консоль данный код:\n var num = 2 * 4 / 2 + (10 - 6) / 2", answers: ["2", "4", "6"], corAnsw: "6"),
    Question(text: "28. Что произойдет при выполнении кода:\n let x = 10.3\n let y : Float = 20.7\n let x = 9\n let sum = z + y + x\n print(sum)", answers: ["В консоль распечатается число 31", "Будет ошибка, так как мы не сделали приведение типов", "В консоль распечатается число 41"], corAnsw: "Будет ошибка, так как мы не сделали приведение типов"),
    Question(text: "29. Что означает ключевое слово  @escaping?", answers: ["То, что замыкание «сбегающее» и может быть вызвано уже после того как функция завершена", "Ничего, такого нет в Swift", "То, что замыкание «сбегающее» и может быть удалено"], corAnsw: "То, что замыкание «сбегающее» и может быть вызвано уже после того как функция завершена"),
    Question(text: "30. Позволяют ли расширения добавлять вложенные типы?", answers: ["Да", "Нет", "В редких случаях"], corAnsw: "Да"),
    Question(text: "31. Выберите верные утверждения о классах:\n 1.Классы поддерживают наследование;\n 2.Деинициализаторы позволяют экземпляру класса освободить использованные ресурсы;\n 3.Подсчет ссылок допускает более чем одну ссылку на экземпляр класса;", answers: ["Верны утверждения 1, 3", "Верны утверждения 1, 2", "Верны утверждения 1, 2, 3"], corAnsw: "Верны утверждения 1, 2, 3"),
    Question(text: "32. Можно ли ограничить протокол, чтобы его могли поддерживать только классы?", answers: ["Нет", "Да можно, через ключевое слово class", "Да можно, через ключевое слово classDelegate"], corAnsw: "Да можно, через ключевое слово class"),
    Question(text: "33. При определении метода как шаблонного, можно указать только один шаблонный тип?", answers: ["Нет, функция может использовать одновременно несколько шаблонных типов", "Да, только один", "Только 2"], corAnsw: "Нет, функция может использовать одновременно несколько шаблонных типов"),
    Question(text: """
34. Верно ли условие:\n let x = 20\n if x < 20 {\n print("x < 20")\n } else if x < 10 {\n print("x < 10")\n } else {\n print(x)\n}
""", answers: ["Нет, не верно, мы никогда не проверим условие else if", "Да", ""], corAnsw: "Нет, не верно, мы никогда не проверим условие else if"),
    Question(text: "35. Верен ли следующий код:\n for table in tables {\n  for row in table.rows {\n  print(row)\n  }\n }", answers: ["Нет, не верно, нельзя делать цикл в цикле", "Верен", ""], corAnsw: "Верен"),
    Question(text: """
36. Что выведет следующий код:\n if false || true {\n  print("hello")\n } else {\n  print("world")\n }
""", answers: ["Hello", "hello", "world"], corAnsw: "hello"),
    Question(text: """
37. Что выведет следующий код:\n let x = 1\n  switch x {\n  case 0 : print("0")\n  case 1 : print("1")\n  default : print("error")\n }
""", answers: ["Код не скомпилируется", "Error", "1"], corAnsw: "1"),
    Question(text: """
38. Что выведет следующий код:\n let strings = ["hello", "world", "!"]\n var i = 0\n  while i < 2 {\n  print(strings[i])\n  i += 1\n }
""", answers: ["“hello”, “world”, “!”", "“hello”, “world”", "Возникнет ошибка"], corAnsw: "“hello”, “world”"),
    Question(text: "39. Могут ли замыкания захватывать переменные и константы из окружающего контекста, в котором оно объявлено?", answers: ["Да", "Нет", "В редких случаях"], corAnsw: "Да"),
    Question(text: """
40. Что выведет следующий код:\n let x = 3\n  switch x {\n  case 0 : print("0")\n  case 1..<5 : print("1 - 5")\n  default : print(">5")\n }
""", answers: ["1 – 5", "Код не скомпилируется", "0"], corAnsw: "1 – 5"),
    Question(text: """
41. Возможно ли объявить функцию внутри тела другой функции, как на примере ниже:\n func first() {\n  func second() { print("test")}\n  second()\n }
""", answers: ["Да, возможно, функцию можно использовать не только внутри функции, в которой ее объявили", "Да, возможно, но такую функцию можно использовать только внутри функции, в которой ее объявили", "Нет, невозможно"], corAnsw: "Да, возможно, но такую функцию можно использовать только внутри функции, в которой ее объявили"),
    Question(text: """
42. Что выведет следующий код:\n while false {\n print("hello")\n } \n print("world!")
""", answers: ["hello", "Будет ошибка", "world!"], corAnsw: "world!"),
    Question(text: """
43. Верен ли следующий код:\n let dictionary = ["car" : 4, "motorcycle" : 2, "truck" : 6]\n  for (type, numberOfWheels) in dictionary {\n  print("each type has more than one wheel")\n }
""", answers: ["Нет, не верен, словарь нельзя использовать в  for – in цикле", "Да, верен", "Будет ошибка"], corAnsw: "Да, верен"),
    Question(text: "44. Выберите все операнды, которые можно использовать в условии if:", answers: ["==, !=, <=, >=, &&, ||, +=, -= ", "==, !=, <=, >=, &&, || ", "==, !=, <=, >=, &&, ||, <<<, >>>"], corAnsw: "==, !=, <=, >=, &&, || "),
    Question(text: "45. Возникнет ли ошибка при выполнении следующего кода:\n var num :  Int?\n  if let x = num {\n print(x)\n }", answers: ["Да", "Нет", ""], corAnsw: "Нет"),
    Question(text: """
46. Что будет выводиться в консоль:\n let x = 10\n  switch x {\n  case 0 : print("0")\n  case 1 : print("1")\n  default: print("error")\n }
""", answers: ["0", "1", "error"], corAnsw: "error"),
    Question(text: "47. Можно ли создать экземпляр протокола?", answers: ["Да", "Нет", "В редких случаях"], corAnsw: "Нет"),
    Question(text: "48. Скомпилируется ли данный код:\n var x = 10\n x = nil\n if let y = x {\n print(y)\n }", answers: ["Да", "Нет", ""], corAnsw: "Нет"),
    Question(text: "49. Где синтаксис замыканий верный:\n 1.sortedNames = names.sorted(by: { (s1, s2 in return s1 > s2});\n 2.sortedNames = names.sorted(by: { (s1, s2 in  s1 > s2});\n 3.sortedNames = names.sorted(by: { $0 > $1})", answers: ["1", "2, 3", "Все варианты верны"], corAnsw: "Все варианты верны"),
    Question(text: "50. Swift позволяет накладывать ограничения на тип шаблонов?", answers: ["Да", "Нет, такое возможно только для шаблонов", ""], corAnsw: "Да"),
    Question(text: "51. С помощью расширения можно добавить методы, можно ли добавить переменные?", answers: ["Да, но только вычисляемые", "Да, можно", "Нет"], corAnsw: "Да, но только вычисляемые"),
    Question(text: """
52. Верен ли следующий код:\n let point = (-2, 2)\n  switch point {\n  case (0,0): print("1")\n  case (-3...3, -3...3) : print("2")\n  case (_, 0) : print("3")\n  case (0, _) : print("3")\n  default: print("error")\n }
""", answers: ["Будет ошибка", "Да, выведет error", "Да, выведет 2"], corAnsw: "Да, выведет 2"),
    Question(text: """
53. Что выведет следующий код:\n let x = 0\n  if x == 0 {\n  print("hello")\n  } else {\n  print("world")\n }
""", answers: ["Hello", "World", "hello"], corAnsw: "hello"),
    Question(text: "54. Скомпилируется ли следующий код:\n var someClass : SomeClass?\n someClass = SomeClass()\n someClass = nil\n someClass?.name()\n someClass!.name()\n", answers: ["Да", "Нет", "Код скомпилируется, но во время работы возникнет ошибка в строке 5"], corAnsw: "Код скомпилируется, но во время работы возникнет ошибка в строке 5"),
    Question(text: """
55. Что выведет в консоль данный код:\n let text = ["hello", "world", "!"]\n print(text[3])
""", answers: ["!", "3", "Возникнет ошибка"], corAnsw: "Возникнет ошибка"),
    Question(text: "56. Какого типа будет переменная var x = 10.0 ?", answers: ["Int", "Double", ""], corAnsw: "Double"),
    Question(text: """
57. Что выведет следующий код:\n if false && true {\n  print("hello")\n } else {\n  print("world")\n }
""", answers: ["Будет ошибка", "hello", "world"], corAnsw: "world"),
    Question(text: "58. Что выведет в консоль следующий код:\n let num : Int += 1\n print(num)", answers: ["Будет ошибка", "1", "2"], corAnsw: "Будет ошибка"),
    Question(text: """
59. Что выведет в консоль данный код:\n let strings = ["hello", "world", "!"]\n  for string in strings {\n print(string)
""", answers: ["“hello”, “world”, “!”", "Будет ошибка", ""], corAnsw: "“hello”, “world”, “!”"),
    Question(text: """
60. Что выведет следующий код:\n let strings = ["hello", "world", "!"]\n  var i = 0\n  repeat {\n  print(strings[i])\n  i += 1\n  } while  i < 2
""", answers: ["Возникнет ошибка", "“hello”, “world”, “!”", "“hello”, “world”"], corAnsw: "“hello”, “world”"),
    Question(text: "61. Что выведет следующий код:\n var x = 5\n x = x > 10 ? 20 : 15\n print(x)", answers: ["20", " Ошибка", "15"], corAnsw: "15"),
    Question(text: "62. Каким типом являются замыкания?", answers: ["Ссылочным типом", "Типом значения", "Сбегающим типом"], corAnsw: "Ссылочным типом"),
    Question(text: "63. При работе с классом и структурой, есть ли различия в получении доступа к свойству класса/структуры?", answers: ["Да", "Нет", "Есть, но небольшие"], corAnsw: "Нет"),
    Question(text: "64. При создании протокола, можно ли наследоваться от других протоколов?", answers: ["Да, можно наследовать сколько угодно протоколов", "Нет", "Да, но только единожды"], corAnsw: "Да, можно наследовать сколько угодно протоколов"),
    Question(text: "65. Что выведет в консоль следующий код:\n var num1 = 2\n var num2 = 4\n num1 = num1 << 1\n num2 = num2 >> 1\n print(num1, num2)", answers: ["2 и 4", "4 и 2", "4 и 8"], corAnsw: "4 и 2"),
    Question(text: "66. Есть два класса A и B, при этом класс A хранит у себя сильную ссылку на B, а класс B хранит сильную ссылку на класс A, данные классы когда-либо будут удалены из памяти? ", answers: ["Да", "Нет, из-за сильных ссылок друг на друга", ""], corAnsw: "Нет, из-за сильных ссылок друг на друга"),
    Question(text: "67. Что может требовать протокол?", answers: ["Переменные, переменные класса", "Методы для экземпляра и методы типа(static)", "Оба ответа верны"], corAnsw: "Оба ответа верны"),
    Question(text: "69. Обязаны ли функции в Swift иметь входные параметры?", answers: ["Да", "Нет", ""], corAnsw: "Нет"),
    Question(text: "70. Что происходит при передаче класса и структуры в метод?", answers: ["Передается ссылка для класса и копия для структуры", "Так делать нельзя", "Передается копия для обоих"], corAnsw: "Передается ссылка для класса и копия для структуры"),
    Question(text: """
71. Как будет выглядеть вызов функции ниже:\n func function(_ x0:Int, x1:Int, x2:Int=10)\n {print ((x0 + x1 + x2)) }
""", answers: ["function(1, x1:2, x2:3) или function(1, x1:2)", "function(x0:1, x1:2, x2:3) или function(1, x1:2, x2:10)", "function(_, x1:2, x2:3) или function(1, x1:2, _)"], corAnsw: "function(1, x1:2, x2:3) или function(1, x1:2)"),
    Question(text: "72. Какие цифры будут входить в данный диапазон:\n let range = 2..<5\n", answers: ["1,2,3,4", "2,3,4", "2,3,4,5"], corAnsw: "2,3,4"),
    Question(text: "73. Возникнет ли ошибка при выполнении следующего кода:\n var num: Int? \n let x = num!\n print(x)", answers: ["Да", "Нет", ""], corAnsw: "Да"),
    Question(text: "74. Что выведет в консоль данный код:\n var str = “hello world!”\n print(str.count)\n print(str.contains(“ello”))", answers: ["12, true", "12, ello", "Будет ошибка"], corAnsw: "12, true"),
    Question(text: "75. Что выведет следующий код:\n for index in 0…10 {\n print(index)\n break\n }", answers: ["0, 1", "0", "Будет ошибка"], corAnsw: "0"),
    Question(text: "76. Может ли функция принимать и возвращать опциональный тип данных?", answers: ["Да", "Может только принимать", "Может только возвращать"], corAnsw: "Да"),
    Question(text: """
77. Что выведет в консоль данный код:\n let text = ["hello", "world", "!"]\n for index in 0...text.count {\n print(strings[index])\n }
""", answers: ["Будет ошибка", "“hello”, “world”, “!”", "[0,1,2]"], corAnsw: "Будет ошибка"),
    Question(text: "78. Позволяет ли Swift накладывать ограничения на принимаемый тип шаблонной функции?", answers: ["Да", "Нет", "В редких случаях"], corAnsw: "Да"),
    Question(text: "79. Если мы хотим использовать UITableView или UICollectionView то что мы должны сделать?", answers: ["Указать себя наследником UITV и UICV ", "Только указать себя как dataSource ", "Реализовать dataSource протокол и установить в качестве делегата выбранного View"], corAnsw: "Реализовать dataSource протокол и установить в качестве делегата выбранного View"),
    Question(text: "80. Что использовать для хранения данных о погоде за текущий месяц?", answers: ["Core Data, Базу данных", "Keychain, Базу данных", "NSUserDefaults"], corAnsw: "Core Data, Базу данных"),
    Question(text: "81. Для чего семантически верно использовать метод POST?", answers: ["Для создания новых сущностей(например пользователя)", "Применяется для передачи пользовательских данных  ", "Используется для запроса содержимого указанного ресурса"], corAnsw: "Используется для запроса содержимого указанного ресурса"),
    Question(text: "82. Что такое Segue?", answers: ["Это переход между UIViewController, а также связи между контроллерами", "Это переход между View", "Это переход между viewController"], corAnsw: "Это переход между UIViewController, а также связи между контроллерами"),
    Question(text: "83. В каком случае необходимо использовать Rest API в приложении?", answers: ["Когда захотим", "Когда нам нужно передавать какие либо данные данные", "Когда работаем с сервером, который предоставляет REST API"], corAnsw: "Когда захотим"),
    Question(text: "84. Для чего используется класс UIView?", answers: ["Базовый объект UIKit для отображения на экране ", "Для отображения изображений", "Оба варианта верны"], corAnsw: "Базовый объект UIKit для отображения на экране "),
    Question(text: "85. Что нужно использовать для хранения картинки в приложении?", answers: ["Физический файл в песочнице", "UIView", "ImageView"], corAnsw: "Физический файл в песочнице"),
    Question(text: "86. Что такое JSON?", answers: ["Простой формат обмена данными", "Java Script Object Notation", "Оба варианта верны"], corAnsw: "Оба варианта верны"),
    Question(text: "87. Что использовать для хранения пароля пользователя?", answers: ["Базу данных", "Keychain", "NSUserDefaults"], corAnsw: "Keychain"),
    Question(text: "88. Что использовать для хранения флага о первом запуске программы?", answers: ["NSUserDefaults", "Core Data", "JSON"], corAnsw: "NSUserDefaults"),
    Question(text: "89. Какой метод семантически верен для получения информации?", answers: ["Get", "Connect", "Push"], corAnsw: "Get"),
    Question(text: "90. Какие методы есть у HTTP протокола?", answers: ["OPTIONS,GET,HEAD,POST,PUT", "PATCH,DELETE,TRACE,CONNECT", "Оба ответа верны"], corAnsw: "Оба ответа верны"),
    Question(text: "91. Допустим мы хотим отображать пользователю картинку, какой класс view использовать для этого?", answers: ["UIView", "UIImageView", "View"], corAnsw: "UIImageView"),
    Question(text: "92. В каких ситуациях разработчик сталкивается с REST API?", answers: ["При обмене информацией с сервисами в интернете", "При сохранении пароля", "При парсинге JSON"], corAnsw: "При обмене информацией с сервисами в интернете"),
    Question(text: "93. Можно ли хранить ценную информацию(пароли, номера карт и т.д.) в NSUserDefaults?", answers: ["Да", "Нет", "В редких случаях можно"], corAnsw: "Нет"),
    Question(text: "94. Что использовать для хранения относительно сложных данных? Например записи о поездке на такси(время старта, финиша, время в пути, тариф, цена и т.д.)?", answers: ["Core Data, Базу данных", "JSON", "Keychain"], corAnsw: "Core Data, Базу данных"),
    Question(text: "95. Когда появился SWIFT?", answers: ["2012", "2013", "2014"], corAnsw: "2014"),
    Question(text: "96. Является ли SWIFT мультипарадигмальным языком?", answers: ["Да", "Нет", "50/50"], corAnsw: "Да"),
    Question(text: "97. Может ли SWIFT использовать рантайм Objective-C?", answers: ["Нет", "Частично", "Может"], corAnsw: "Может"),
    Question(text: "98. Может ли код, написанный на Swift, работать вместе с кодом, написанным на языке программирования C?", answers: ["Может", "Нет", "В редких случаях"], corAnsw: "Может"),
    Question(text: "99. Правда ли, что обычный алгоритм поиска выполняется в Swift быстрее в 8 раз, чем в языке Python 2.7?", answers: ["Да", "Нет, быстрее лишь в 2 раза", "Нет, быстрее в 5 раз"], corAnsw: "Да"),
    Question(text: "100. Что такое LLVM?", answers: ["Low Level Virtual Machine", "Проект программной инфраструктуры для создания компиляторов", "Оба ответа верны"], corAnsw: "Оба ответа верны"),
    Question(text: "Well Done 👍🏻 The test is over!", answers: ["", "To Start Over 👉🏻", ""], corAnsw: "To Start Over 👉🏻"),
  ]
  
  func getQuestionText() -> String { test[questionNumber].text }
  
  func getAnswers() -> [String] { test[questionNumber].answers}
  
  func getProgress() -> Float {
    let progress = Float(questionNumber) / Float(test.count)
    return progress
  }
  
  mutating func getScore() -> Int { score }
  
  mutating func moveToTheNextQuestion() {
    if questionNumber + 1 < test.count {
      questionNumber += 1
    } else {
      questionNumber = 0
      score = 0
    }
  }
  
  mutating func checkAnswer(userAnswer: String) -> Bool {
    if userAnswer == test[questionNumber].correctAnswer {
      score += 1
      return true
    } else {
      return false
    }
  }
  
}
