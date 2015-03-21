/* ������������� ����������� ��� �������� ���������� � (���) ������� (�� ����������� ������������ �������) ��� ������������������ ������ �������� ������� ����� ��� ��������� ������ ��� �������, ��� ���������� ����������� � ������ � (���) �������������, ���������� ��������� � ����������, ������� (�� ����������� �������, ������������ � ������� ������ ���� ������� � ���������� ������� ��������� �������� ��� �����������) */
:- dynamic(ep_violence/3).
ep_violence(Info, '12+', ep_violence):-
	nonvar(Info), write(Info),
	yes_no_ask('�������� ������������� ����������� ��� �������� ���������� � (���) ������� (�� ����������� ������������ �������) ��� ������������������ ������ �������� ������� ����� ��� ��������� ������ ��� �������, ��� ���������� ����������� � ������ � (���) �������������, ���������� ��������� � ����������, ������� (�� ����������� �������, ������������ � ������� ������ ���� ������� � ���������� ������� ��������� �������� ��� �����������)?', yes),
	asserta(ep_violence(Info, '12+', ep_violence)),
	add_write(Info).

/* ����������� ��� ��������, �� ����������� � ���������� ���������������� �������� (� ��� ����� � ����������� ����������� � ���������������� ���������, ���� � ��������, ��������������� �� ��� ������, ������� � �������� �����, ������� ��������������� ��� �����������������), ������������� ���������� (��� ������������) ������������� �������, ������������ � (���) �������������� �������, �������� ������� ��� �������, ��� �� �������������� � �� ������������� ������������ ���������������� ��������, ���������� �������������, ���������� ��������� � ��� � ���������� �������� �� ��������� ����������� ��������� ���������, �������, �������, ������� */
:- dynamic(no_antisotial/3).
no_antisotial(Info, '12+', no_antisotial):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������� ��� ��������, �� ����������� � ���������� ���������������� �������� (� ��� ����� � ����������� ����������� � ���������������� ���������, ���� � ��������, ��������������� �� ��� ������, ������� � �������� �����, ������� ��������������� ��� �����������������), ������������� ���������� (��� ������������) ������������� �������, ������������ � (���) �������������� �������, �������� ������� ��� �������, ��� �� �������������� � �� ������������� ������������ ���������������� ��������, ���������� �������������, ���������� ��������� � ��� � ���������� �������� �� ��������� ����������� ��������� ���������, �������, �������, �������?', yes),
	asserta(no_antisotial(Info, '12+', no_antisotial)),
	add_write(Info).

/* �� ��������������� �������� � ����� � �� ������� ������������� ��� ��������������� ��������� ������������� ������������������� ����������� ��� �������� ������� ��������� ����� �������� � ��������, �� ����������� ����������� ��� �������� �������� ������������ ��������� */
:- dynamic(no_fuck_interess/3).
no_fuck_interess(Info, '12+', no_fuck_interess):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� �� ��������������� �������� � ����� � �� ������� ������������� ��� ��������������� ��������� ������������� ������������������� ����������� ��� �������� ������� ��������� ����� �������� � ��������, �� ����������� ����������� ��� �������� �������� ������������ ���������?', yes),
	asserta(no_fuck_interess(Info, '12+', no_fuck_interess)),
	add_write(Info).

twot(Info, X, Y):-
	ep_violence(Info, X, Y),
	info_write(Info, '��������  ������������� ����������� ��� �������� ���������� � (���) ������� (�� ����������� ������������ �������) ��� ������������������ ������ �������� ������� ����� ��� ��������� ������ ��� �������, ��� ���������� ����������� � ������ � (���) �������������, ���������� ��������� � ����������, ������� (�� ����������� �������, ������������ � ������� ������ ���� ������� � ���������� ������� ��������� �������� ��� �����������).').
twot(Info, X, Y):-
	no_antisotial(Info, X, Y),
	info_write(Info, '��������  ����������� ��� ��������, �� ����������� � ���������� ���������������� �������� (� ��� ����� � ����������� ����������� � ���������������� ���������, ���� � ��������, ��������������� �� ��� ������, ������� � �������� �����, ������� ��������������� ��� �����������������), ������������� ���������� (��� ������������) ������������� �������, ������������ � (���) �������������� �������, �������� ������� ��� �������, ��� �� �������������� � �� ������������� ������������ ���������������� ��������, ���������� �������������, ���������� ��������� � ��� � ���������� �������� �� ��������� ����������� ��������� ���������, �������, �������, �������.').
twot(Info, X, Y):-
	no_fuck_interess(Info, X, Y),
	info_write(Info, '�������� �� ��������������� �������� � ����� � �� ������� ������������� ��� ��������������� ��������� ������������� ������������������� ����������� ��� �������� ������� ��������� ����� �������� � ��������, �� ����������� ����������� ��� �������� �������� ������������ ���������.').