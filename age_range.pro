save(Filename):-
	tell(Filename), listing, told.

add_write(X):-
	nl, write('���� � '), write(X), write(' ��������� � ���� ������.'), nl.

info_write(Info, Text):-
	nl, write(Info), write(' '), write(Text), nl.

yes_no_ask(AskText, R):-
	write(' '), write(AskText), write('(yes/no)'), nl,
	read(R).

loadBases:-
	consult('ban.pro'), % �������� ������ ��� ���������� ����������� ��� �����
	consult('six.pro'), % �������� ������ ��� ���������� ����������� ��� �����, ��������� ����� ���
	consult('sixt.pro'), % �������� ������ ��� ���������� ����������� ��� �����, ��������� 16-�� ���
	consult('twot.pro'). % �������� ������ ��� ���������� ����������� ��� �����, ��������� 12 ���

age_range(X, Y, Z) :-
	ban(X, Y, Z),
	info_write(X, '��������� � ��������������� ����� �����'), !.
age_range(X, Y, Z):-
	sixt(X, Y, Z),
	info_write(X, '��������� � ��������������� ����� ����� ��������� 16-�� ���.'), !.
age_range(X, Y, Z):-
	twot(X, Y, Z),
	info_write(X, '��������� � ��������������� ����� ����� ��������� ���������� ���.'), !.
age_range(X, Y, Z) :-
	six(X, Y, Z),
	info_write(X, '��������� � ��������������� ����� ����� ��������� ����� ���.'), !.
age_range(X, '0+', none):-
	info_write(X, '��������� � ��������������� ��� ����� ���������� ���������.').

age_range :-
	loadBases, % ��������� �������
	write('���������� ������� ������������ ���������� ����������� ��� �����'), nl,
	write('������� ������������ �����, ������ ��� ���������'), nl,
	read(X),
	age_range(X, _, _).

:- initialization(age_range).

