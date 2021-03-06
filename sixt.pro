/* ����������� ��� �������� ����������� ������, ������, ����������, �����������, ������ ��� ������������������ ������ �� �����������, ������� ����� �������� � ����� �����, ���� ��� ������ */
:- dynamic(sixt1/3).
sixt1(Info, '16+', sixt1):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������� ��� �������� ����������� ������, ������, ����������, �����������, ������ ��� ������������������ ������ �� �����������, ������� ����� �������� � ����� �����, ���� ��� ������?', yes),
	asserta(sixt1(Info, '16+', sixt1)),
	add_write(Info).

/* ����������� ��� �������� ���������� � (���) ������� (�� ����������� ������������ �������) ��� ������������������ ������ �������� ������� ����� ��� ��������� ������ ��� �������, ��� ���������� ����������� � ������ � (���) �������������, ���������� ��������� � ����������, ������� (�� ����������� �������, ������������ � ������� ������ ���� ������� � ���������� ������� ��������� �������� ��� �����������) */
:- dynamic(sixt2/3).
sixt2(Info, '16+', sixt2):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ����������� ��� �������� ���������� � (���) ������� (�� ����������� ������������ �������) ��� ������������������ ������ �������� ������� ����� ��� ��������� ������ ��� �������, ��� ���������� ����������� � ������ � (���) �������������, ���������� ��������� � ����������, ������� (�� ����������� �������, ������������ � ������� ������ ���� ������� � ���������� ������� ��������� �������� ��� �����������)?', yes),
	asserta(sixt2(Info, '16+', sixt2)),
	add_write(Info).

/* ���������� � ������������� ��������� ��� � ������������ � (���) �� �������������� ��������� (��� �� ������������), �� ������� ������������ �� ����������� � ������������� ����� ������� ��� �������, ��� ���������� ������������� ��� ���������� ��������� � ����������� ����� ������� ��� ������� � ���������� �������� �� ��������� �� ����������� */
:- dynamic(sixt3/3).
sixt3(Info, '16+', sixt3):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ���������� � ������������� ��������� ��� � ������������ � (���) �� �������������� ��������� (��� �� ������������), �� ������� ������������ �� ����������� � ������������� ����� ������� ��� �������, ��� ���������� ������������� ��� ���������� ��������� � ����������� ����� ������� ��� ������� � ���������� �������� �� ��������� �� �����������?', yes),
	asserta(sixt3(Info, '16+', sixt3)),
	add_write(Info).

/* ��������� ������� ����� � (���) ���������, �� ����������� � ����������� ����� */
:- dynamic(sixt4/3).
sixt4(Info, '16+', sixt4):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� ��������� ������� ����� � (���) ���������, �� ����������� � ����������� �����?', yes),
	asserta(sixt4(Info, '16+', sixt4)),
	add_write(Info).

:- dynamic(sixt5/3).
sixt5(Info, '16+', sixt5):-
	nonvar(Info), write(Info),
	yes_no_ask(' �������� �� ��������������� �������� � ����� � �� ������� ��������������� ��������� ����������� ��� �������� ������� ��������� ����� �������� � ��������, �� ����������� ����������� ��� �������� �������� ������������ ���������?', yes),
	asserta(sixt5(Info, '16+', sixt5)),
	add_write(Info).

sixt(X, Y, Z):-
	sixt1(X, Y, Z),
	info_write(X, '�������� ����������� ��� �������� ����������� ������, ������, ����������, �����������, ������ ��� ������������������ ������ �� �����������, ������� ����� �������� � ����� �����, ���� ��� ������').

sixt(X, Y, Z):-
	sixt2(X, Y, Z),
	info_write(X, '�������� ����������� ��� �������� ���������� � (���) ������� (�� ����������� ������������ �������) ��� ������������������ ������ �������� ������� ����� ��� ��������� ������ ��� �������, ��� ���������� ����������� � ������ � (���) �������������, ���������� ��������� � ����������, ������� (�� ����������� �������, ������������ � ������� ������ ���� ������� � ���������� ������� ��������� �������� ��� �����������).').

sixt(X, Y, Z):-
	sixt3(X, Y, Z),
	info_write(X, '�������� ���������� � ������������� ��������� ��� � ������������ � (���) �� �������������� ��������� (��� �� ������������), �� ������� ������������ �� ����������� � ������������� ����� ������� ��� �������, ��� ���������� ������������� ��� ���������� ��������� � ����������� ����� ������� ��� ������� � ���������� �������� �� ��������� �� ����������� ').

sixt(X, Y, Z):-
	sixt4(X, Y, Z),
	info_write(X, '�������� ��������� ������� ����� � (���) ���������, �� ����������� � ����������� �����.').

sixt(X, Y, Z):-
	sixt5(X, Y, Z),
	info_write(X, '�������� �� ��������������� �������� � ����� � �� ������� ��������������� ��������� ����������� ��� �������� ������� ��������� ����� �������� � ��������, �� ����������� ����������� ��� �������� �������� ������������ ���������').
