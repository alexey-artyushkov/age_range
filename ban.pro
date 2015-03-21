/* � ����������, ����������� ���� �������� � (���) �������� �����, ��������� */
/* ����������� ����� � ���������� ��������, �������������� ������ �� ����� � (���) ��������, � ��� ����� � ���������� ����� ������ ��������, ������������ */
:- dynamic(health_danger/3).
health_danger(Info, '18+', health_danger):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������, ��������� ��������� ���� �������� ��� ��������� ����� � ������������?', yes),
	asserta(health_danger(Info, '18+', health_danger)),
	add_write(Info).

/* ��������� ������� � ����� ������� ���������� ������������� ��������, ������������ � (���) �������������� ��������, �������� �������, ����������� � ���������������� ���������, ���� � �������, ��������������� �� ��� ������, ������� ������� � �������� �����, ���������� ������������, ��������������� ��� ����������������� */
:- dynamic(immoral_condact/3).
immoral_condact(Info, '18+', immoral_condact) :-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ���������� ��������� ������� � ����� ������� ���������� ������������� ��������, ������������ � (���) �������������� ��������, �������� �������, ����������� � ���������������� ���������, ���� � �������, ��������������� �� ��� ������, ������� ������� � �������� �����, ���������� ������������, ��������������� ��� �����������������?', yes),
	asserta(immoral_condact(Info, '18+', immoral_contact)),
	add_write(Info).

/* �������������� ��� ������������� ������������ ������� � (���) ���������� ���� ����������� ������������ �������������� �������� �� ��������� � ����� ��� �������� */
:- dynamic(justification_of_violence/3).
justification_of_violence(Info, '18+', justification_of_violence):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������, �������������� ��� ������������� ������������ ������� � (���) ���������� ���� ����������� ������������ �������������� �������� �� ��������� � ����� ��� ��������?', yes),
	assertz(justification_of_violence(Info, '18+', justification_of_violence)),
	add_write(Info).

/* ���������� �������� �������� � ����������� ���������� � ��������� � (���) ������ ������ ����� */
:- dynamic(rejection_of_family_values/3).
rejection_of_family_values(Info, '18+', rejection_of_family_values):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������, ���������� �������� �������� � ����������� ���������� � ��������� � (���) ������ ������ �����?', yes),
	asserta(rejection_of_family_values(Info, '18+', rejection_of_family_values)),
	add_write(Info).

/*  ������������� �������������� ��������� */
:- dynamic(excuse_the_wrongful_conduct/3).
excuse_the_wrongful_conduct(Info, '18+', excuse_the_wrongful_conduct):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������, ������������� �������������� ���������?', yes),
	asserta(excuse_the_wrongful_conduct(Info, '18+', excuse_the_wrongful_conduct)),
	add_write(Info).

/* ���������� ����������� ����� */
:- dynamic(dirty_swearing/3).
dirty_swearing(Info, '18+', dirty_swearing):-
	nonvar(Info), write(Info),
	yes_no_ask('�������� ����������� �����?', yes),
	asserta(dirty_swearing(Info, '18+', dirty_swearing)),
	add_write(Info).

/* ���������� ���������� ����������������� ��������� */
:- dynamic(porno_info/3).
porno_info(Info, '18+', porno_info):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ���������� ����������������� ���������?', yes),
	asserta(porno_info(Info, '18+', porno_info)),
	add_write(Info).

ban(Info, Y, Z):-
	health_danger(Info, Y, Z),
	info_write(Info,'��������� ����� � ���������� ��������, �������������� ������ �� ����� � (���) ��������, � ��� ����� � ���������� ����� ������ ��������, ������������.').
ban(Info, Y, Z):-
	immoral_condact(Info, Y, Z),
	info_write(Info,'�������� ������� � ����� ������� ���������� ������������� ��������, ������������ � (���) �������������� ��������, �������� �������, ����������� � ���������������� ���������, ���� � �������, ��������������� �� ��� ������, ������� ������� � �������� �����, ���������� ������������, ��������������� ��� �����������������').
ban(Info, Y, Z):-
	justification_of_violence(Info, Y, Z),
	info_write(Info, '����������� �������.').
ban(Info, Y, Z):-
	rejection_of_family_values(Info, Y, Z),
	info_write(Info, '�������� �������� �������� � ��������� ���������� � ��������� � (���) ������ ������ �����.').
ban(Info, Y, Z):-
	excuse_the_wrongful_conduct(Info, Y, Z),
	info_write(Info, '����������� �������������� ���������.').
ban(Info, Y, Z):-
	dirty_swearing(Info, Y, Z),
	info_write(Info, '�������� ����������� �����.').
ban(Info, Y, Z):-
	porno_info(Info, Y, Z),
	info_write(Info, '�������� ���������� ����������������� ���������.').








