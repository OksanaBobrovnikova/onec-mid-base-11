
#Область ПрограммныйИнтерфейс

Процедура Дополнитьформу(Форма) Экспорт 
	
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда 
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда 
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда 
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда 
		ВставитьПолеКонтактноеЛицоНаформуПередСуммаДокумента(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда 
		ВставитьПолеКонтактноеЛицоНаформуПередСуммаДокумента(Форма);		
	КонецЕсли; 
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма)
	
	ПолеВвода = Форма.Элементы.Добавить ("КонтактноеЛицо", Тип("Полеформы"), Форма.Элементы.ГруппаШапкаПраво); 
	ПолеВвода.Вид = ВидПоляформы.ПолеВвода; 
	ПолеВвода.ПутьКДанным = "Объект.КонтактноеЛицо";
	
КонецПроцедуры 

Процедура ВставитьПолеКонтактноеЛицоНаформуПередСуммаДокумента(Форма)
	
	Если Форма.Элементы.Найти ("КонтактноеЛицо") = Неопределено Тогда
		
	СледующийЭлемент = Форма.Элементы.Найти ("СуммаДокумента");
	ПолеВвода = Форма.Элементы.Вставить ("КонтактноеЛицо", Тип("Полеформы"), , СледующийЭлемент); 
	ПолеВвода.Вид = ВидПоляформы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.КонтактноеЛицо";
	
	КонецЕсли;
	
КонецПроцедуры
 
#КонецОбласти
