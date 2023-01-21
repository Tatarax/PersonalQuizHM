//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by brubru on 18.08.2022.


//// 1. Передать массив с ответами на экран с результатами
// 2. Определить наиболее часто встречающийся тип животного
// 3. Отобразить результаты в соотвствии с этим животным
// 4. Избавиться от кнопки возврата назад на экране результатов

import UIKit

class ResultViewController: UIViewController {
    
    var newAnswers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        addResultAnswers()

    }
 
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    // MARK: Private method
    
    private func addResultAnswers() {
        
       //Создаю словарь тип животного:сколько раз встретиться (но это не точно) и инициализурую пустым
        var theNumberOfAnimals: [AnimalType : Int] = [:]
        
        //создаю новый массив перебирая старый с помощью функции высшего порядка
        let newAnimals = newAnswers.map{ $0.type }
        
        // Перебираю новый массив, если живтного не существует nill то 0, если есть то прибавляем 1.
        for animal in newAnimals {
            theNumberOfAnimals[animal] = (theNumberOfAnimals[animal] ?? 0) + 1
        }
        
        //создаю новый словарь и сортирую старый на значение если первый элемент больше второго, то остается первый и сравниваем его со вторым и так далее, выстраивая очередность (но это не точно)
        let newTheNumberOfAnimals = theNumberOfAnimals.sorted{ $0.value > $1.value }
        
        //на этом мои полномочия усе! я не знаю что дальше делать
   }
    
}



 
