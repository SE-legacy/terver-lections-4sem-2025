= Лекция ... 15 апреля 2025.

== Показателььное распределение

$xi$ --- время безотказной работы "прибора".

#image("imgs/034.png")

$ P{t lt.eq xi lt t + Delta t | xi gt.eq t} = lambda dot Delta t + o (Delta t) $

$
P {xi gt.eq t + Delta t} + P {(xi gt.eq t) inter (xi gt.eq t + Delta t)} =\
= P{xi gt.eq t} dot P{xi gt.eq t + Delta t | xi gt.eq t} =\
= P{xi gt.eq t} dot (1 - P {t lt.eq xi lt t + Delta t | xi gt.eq t})
$


// а где минимум

Получим

$
overline(F)(t + Delta t) = overline(F) (t) dot (1 - lambda Delta t + o(Delta t)),
$
где $overline(F)(t) = 1 - F(t) = 1 - P{xi lt t}$

Мы получили $overline(F) (t + Delta t) - overline(F) (t) = - lambda Delta t dot overline(F) (t) + o(Delta t) overline(F) (t)$

$
  limits(lim)_(Delta t -> 0) frac(overline(F) (t + Delta t) - overline(F) (t), Delta t) = - lambda overline(F) (t) + limits(lim)_(Delta t -> 0) frac(o(Delta t), Delta t) overline(F) (t) \
	(d overline(F)(t))/(d t) = - lambda overline(F)(t)\
	(d overline(F)(t))/(overline(F) t) = - lambda d t\
	ln |overline(F)(t)| = -lambda t + C\
	overline(F)(t) = e^(-lambda t + C) = C_1 dot e^(- lambda t)
$
Начальное условие: $overline(F)(0) = P {xi >= 0 } = 1$ --- прибор обязательно выйдет из строя. // HACK: бля только не импотенция

$C_1 e^(-lambda dot 0) = 1 \
C_1 = 1$

$C_1 e^(-lambda dot 0) = 1 \
C_1 = 1$ \
Таким образом, функция $overline(F)(t) = 1 - overline(F)(t) = 1 - c^(-lambda t), t >= 0$ \
$F(t) = P{xi < 0} = 0$

// HACK: Ваш пакет будет жить, пока будет)))

То получим

$
xi \~ Pi (lambda) \

F_xi (x) = cases(
	0\, x lt.eq 0
	1 - e^(- lambda x)\, x gt 0
)
$

Функция плоскости
$
f_(xi) (x) = cases(
	0\, x lt.eq 0
	lambda e^(- lambda x)\, x gt 0
)
$

#image("imgs/036.png")
Записать ф.р. 

$
xi ~ Pi (3)
$

Найти 

$ P (0 lt xi lt 1) $
$ P (0 lt xi lt ln 2) $

_Свойство "отсутствия последействия" посмотреть в Ipsilon_

== Нормальное распределение (Распределение Гауса) // HACK: допустим тебя столкнули с яхты, какова вероятность быть съеденным акулой?

// тёлочку на выброс короче
// за борт

$xi$--- величина измерения неизвестного значения $a$, либо величина ошибки

$
xi ~ N (a; sigma^2 )
$

// я немножко отвалюсь от конспекта, мне пиздец стрёмно что-то стало за минимум
// *Мем* в первый раз, да?
Парамтеры распределения $a$ --- среднее значение, $sigma^2$ --- дисперсия --- разброс вокруг $a$

Функция распределение
$
F_xi (x) = 1/(sqrt(2 pi) sigma) dot limits(integral)_(- infinity)^(infinity) e^(- ((t - a)^2)/(2 sigma^2)) d t
$

Функция плотности

$
f_xi (x) = 1/(sqrt(2 pi) sigma) dot e^(- ((t - a)^2)/(2 sigma^2))
$

Стандартным нормальным распределением называется распределение

$
xi_0 ~ N (0; 1)
$

т.е. $a = 0$, $sigma^2 = 1$

$
f(x) = 1/(sqrt(2 pi)) e^(- x^2/2)
$

=== Свойства нормального распределения

+ Связь между $N (a; sigma^2)$ и $N (0; 1)$

	Если $xi ~ N (a; sigma^2)$, то

	$ xi_0 = (xi - a)/(sigma) ~ N(0; 1) $

	Если $xi ~ N (0; 1)$, то

	$ xi = sigma xi_0 + a ~ N (a; sigma^2) $
+ 
