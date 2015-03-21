save(Filename):-
	tell(Filename), listing, told.

add_write(X):-
	nl, write('Факт о '), write(X), write(' добавлена в базу знаний.'), nl.

info_write(Info, Text):-
	nl, write(Info), write(' '), write(Text), nl.

yes_no_ask(AskText, R):-
	write(' '), write(AskText), write('(yes/no)'), nl,
	read(R).

loadBases:-
	consult('ban.pro'), % загрузка правил для информации запрещенной для детей
	consult('six.pro'), % загрузка правил для информации разрешенной для детей, достигших шести лет
	consult('sixt.pro'), % загрузка правил для информации разрешенной для детей, достигших 16-ти лет
	consult('twot.pro'). % загрузка правил для информации разрешенной для детей, достигших 12 лет

age_range(X, Y, Z) :-
	ban(X, Y, Z),
	info_write(X, 'запрещено к распространению среди детей'), !.
age_range(X, Y, Z):-
	sixt(X, Y, Z),
	info_write(X, 'разрешено к распространению среди детей достигших 16-ти лет.'), !.
age_range(X, Y, Z):-
	twot(X, Y, Z),
	info_write(X, 'разрешено к распространению среди детей достигших двенадцати лет.'), !.
age_range(X, Y, Z) :-
	six(X, Y, Z),
	info_write(X, 'разрешено к распространению среди детей достигших шести лет.'), !.
age_range(X, '0+', none):-
	info_write(X, 'разрешено к распространению для любой возрастной категории.').

age_range :-
	loadBases, % загружаем правила
	write('Экспертная система опеределения возрастных ограничений для детей'), nl,
	write('Введите наименование книги, фильма или видеоигры'), nl,
	read(X),
	age_range(X, _, _).

:- initialization(age_range).

