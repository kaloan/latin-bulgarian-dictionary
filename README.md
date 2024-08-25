# latin-bulgarian-dictionary

Това е латинско-български речник, като с помощта на магията на търсене в текст, практически е и българо-латински (поне с оглед на чисти думи, не фразеологизми). 

Опитвал съм да правя разграничения в българския превод, там където има и в латинския смисъл, напр. `plorāre` може да се преведе като плача или рева, но глаголът `lacrimāre` е редно да бъде преведен `сълзя`, заради наличието на общ корен с `lacrima`, т.е. `сълза`.

При няколко синонима съм се опитвал да дам като "основен" превод този, чийто корен и на български се използва и в преводите на други латински думи със същия.

Когато някоя латинска дума е първоизточник на чуждица, съм гледал да я добавя в списъка с възможни преводи. Така човек може да търси други латински думи със същия корен, за да може да си обогати представата от оригиналното значение на думата, което не винаги се запазва изцяло при използването ѝ като чуждица. 

При превода има някои непреведими идеи:
1. Латинският няма вид/аспект на глагола, поради което съм превеждал използвайки която форма съм се сетил на момента. Изключение правят сложните глаголи образувани с представката `per`, които би трябвало да се преведът в свършен вид. Възможно беше коренният глагол да бъде поставен само в несвършен вид, само че има някои латински глаголи, които не са се ползвали в съставна `per-` форма. Тънкият момент се състои от съществуването на представката `пре`, която в някои случаи може да се ползва в превода. Заключението от всичко това е, че практически може да не обръщате внимание на вида на глагола в превод.  
2. Има [повече представки](https://github.com/kaloan/text/blob/master/latin/complex-verb-prefixes.txt) в латинския за създаване на сложни глаголи, което води до загуба на (част от) смисъла при превода в някои ситуации.
3. За сметка на това пък в много случаи един/няколко от сложните глаголи всъщност съвпадат по смисъл с коренни в употребата им на латински 
4. Някои безлични глаголи в латинския се ползват като личнки в българския.
5. Някои от местоименията нямат директен превод, напр. `iste`, което е едва ли не `онзи`, от гледна точка на говорителя и `този` от гледна точка на слушателя.

Целият списък с думи, можете да намерите в `collatiō.txt`. 
Речникът е структуриран по папки с файлове основно за групиране на граматически сходни думи, като изключение правят съществителните имена, които съм разделил на различни категории по значение (напр. четирите елемента, военна терминология, облекло, части на човешкото тяло). Така ако намерите някоя преведена дума, може от съответната категория да видите други думи, които е по-вероятно да се използват в нейна околност.

Събрал съм и някои собствени имена (на личности, градове, географски обекти, митични герои), като за личностите на някои места съм дал накратко с какво са били известни за времето си, а че и сега.

В `etc.txt` са поместени фрази и съкращения.

## Източници

1. [Учебници по латински](https://github.com/kaloan/text/blob/master/latin/reading-list.md)
2. [Latin Dictionary](https://www.online-latin-dictionary.com/)
3. [Wiktionary](https://en.wiktionary.org/)
4. [Речко](https://rechnik.chitanka.info/)
5. [Речник на българския език](https://ibl.bas.bg/rbe/) (оплювам този сайт заради reCaptcha-та)
6. [Латинско-български речник на СУ](https://latino.epistone.net/index)

Тъй като повечето от източниците в 1 са учебници стил "естествен метод", то понякога се налага използването на 2 и 3, като 3 си показват собствените източници.
Означението на дългите гласни съм взел основно от 1 (по-точно LLPSI) и 3.

## TODO

1. Немакронизирана форма на думите в collatiō
2. Разделяне на прилагателните на изключителни, числителни и двете стандартни групи
3. Да се измисли най-адекватния метод за изписване на записите на прилагателните
4. Разделяне на наречията по вид (за място, за време, за начин, за сравнение и т.н.)
5. Автоматично генериране на другите две форми за глаголи от първо и четвърто склонения
6. Разделяне на местоименията на въпросителни, определени и неопределени
7. Вместо (+acc) -> (), (+dat) -> [], (+abl) -> {}, (+gen) -> <>
8. Да се въведат още от думите от LLPSI поредицата
9. Да се въведат всички думи от речника на СУ
