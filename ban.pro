/* К информации, причиняющей вред здоровью и (или) развитию детей, относится */
/* побуждающая детей к совершению действий, представляющих угрозу их жизни и (или) здоровью, в том числе к причинению вреда своему здоровью, самоубийству */
:- dynamic(health_danger/3).
health_danger(Info, '18+', health_danger):-
	nonvar(Info), write(Info),
	yes_no_ask(' содержит информацию, способную приченить вред здоровью или побуждает детей к самоубийству?', yes),
	asserta(health_danger(Info, '18+', health_danger)),
	add_write(Info).

/* способная вызвать у детей желание употребить наркотические средства, психотропные и (или) одурманивающие вещества, табачные изделия, алкогольную и спиртосодержащую продукцию, пиво и напитки, изготавливаемые на его основе, принять участие в азартных играх, заниматься проституцией, бродяжничеством или попрошайничеством */
:- dynamic(immoral_condact/3).
immoral_condact(Info, '18+', immoral_condact) :-
	nonvar(Info), write(Info),
	yes_no_ask(' содержит информацию способную вызвать у детей желание употребить наркотические средства, психотропные и (или) одурманивающие вещества, табачные изделия, алкогольную и спиртосодержащую продукцию, пиво и напитки, изготавливаемые на его основе, принять участие в азартных играх, заниматься проституцией, бродяжничеством или попрошайничеством?', yes),
	asserta(immoral_condact(Info, '18+', immoral_contact)),
	add_write(Info).

/* обосновывающая или оправдывающая допустимость насилия и (или) жестокости либо побуждающая осуществлять насильственные действия по отношению к людям или животным */
:- dynamic(justification_of_violence/3).
justification_of_violence(Info, '18+', justification_of_violence):-
	nonvar(Info), write(Info),
	yes_no_ask(' содержит информацию, обосновывающую или оправдывающую допустимость насилия и (или) жестокости либо побуждающая осуществлять насильственные действия по отношению к людям или животным?', yes),
	assertz(justification_of_violence(Info, '18+', justification_of_violence)),
	add_write(Info).

/* отрицающая семейные ценности и формирующая неуважение к родителям и (или) другим членам семьи */
:- dynamic(rejection_of_family_values/3).
rejection_of_family_values(Info, '18+', rejection_of_family_values):-
	nonvar(Info), write(Info),
	yes_no_ask(' содержит информацию, отрицающую семейные ценности и формирующую неуважение к родителям и (или) другим членам семьи?', yes),
	asserta(rejection_of_family_values(Info, '18+', rejection_of_family_values)),
	add_write(Info).

/*  Оправдывающая противоправное поведение */
:- dynamic(excuse_the_wrongful_conduct/3).
excuse_the_wrongful_conduct(Info, '18+', excuse_the_wrongful_conduct):-
	nonvar(Info), write(Info),
	yes_no_ask(' содержит информацию, оправдывающую противоправное поведение?', yes),
	asserta(excuse_the_wrongful_conduct(Info, '18+', excuse_the_wrongful_conduct)),
	add_write(Info).

/* содержащая нецензурную брань */
:- dynamic(dirty_swearing/3).
dirty_swearing(Info, '18+', dirty_swearing):-
	nonvar(Info), write(Info),
	yes_no_ask('содержит нецензурную брань?', yes),
	asserta(dirty_swearing(Info, '18+', dirty_swearing)),
	add_write(Info).

/* содержащая информацию порнографического характера */
:- dynamic(porno_info/3).
porno_info(Info, '18+', porno_info):-
	nonvar(Info), write(Info),
	yes_no_ask(' содержит информацию порнографического характера?', yes),
	asserta(porno_info(Info, '18+', porno_info)),
	add_write(Info).

ban(Info, Y, Z):-
	health_danger(Info, Y, Z),
	info_write(Info,'побуждает детей к совершению действий, представляющих угрозу их жизни и (или) здоровью, в том числе к причинению вреда своему здоровью, самоубийству.').
ban(Info, Y, Z):-
	immoral_condact(Info, Y, Z),
	info_write(Info,'способно вызвать у детей желание употребить наркотические средства, психотропные и (или) одурманивающие вещества, табачные изделия, алкогольную и спиртосодержащую продукцию, пиво и напитки, изготавливаемые на его основе, принять участие в азартных играх, заниматься проституцией, бродяжничеством или попрошайничеством').
ban(Info, Y, Z):-
	justification_of_violence(Info, Y, Z),
	info_write(Info, 'оправдывает насилие.').
ban(Info, Y, Z):-
	rejection_of_family_values(Info, Y, Z),
	info_write(Info, 'отрицает семейные ценности и формирует неуважение к родителям и (или) другим членам семьи.').
ban(Info, Y, Z):-
	excuse_the_wrongful_conduct(Info, Y, Z),
	info_write(Info, 'оправдывает противоправное поведение.').
ban(Info, Y, Z):-
	dirty_swearing(Info, Y, Z),
	info_write(Info, 'содержит нецензурную брань.').
ban(Info, Y, Z):-
	porno_info(Info, Y, Z),
	info_write(Info, 'содержит информацию порнографического характера.').








