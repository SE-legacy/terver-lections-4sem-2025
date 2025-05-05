== Связь распределения $N (a; sigma^2)$ с функциями лапласа

Назовем дифференциальной функцией Лапласа:

$
phi (x) = 1/(sqrt(2 pi)) e^(- (x^2)/2)
$

Очевидно, что $f_(xi_0) (x) = phi(x)$ $xi_0 ~ N(0, 1)$

Интегральной функцией Лапласа:

$
Phi (x) = 1/(sqrt(2 pi)) limits(integral)_0^x e^(- t^2/2) d t
$

$
limits(lim)_(x -> + infinity) Phi (x) = 0.5
$

Тогда функция распределения стандартного нормального закона

$
F_(xi_0) (x) =  1/(sqrt(2 pi)) limits(integral)_0^x e^(- t^2/2) d t
$

Может быть записана так:

$
F_(xi_0) (x) = 0.5 + Phi(x) space forall x in RR
$

Действительно, при $x gt.eq 0$
$
F_(xi_0) (x) =  1/(sqrt(2 pi)) limits(integral)_0^x e^(- t^2/2) d t =\
= 1/(sqrt(2 pi)) limits(integral)_(- infinity)^0 e^(- t^2/2) d t + 1/(sqrt(2 pi)) limits(integral)_(0)^x e^(- t^2/2) d t =\
= 0.5 Phi(x)
$

Пусть $x lt 0$

// FIX: рисунок

Заметим, что

$
limits(integral)_(- infinity)^0 dot d x = limits(integral)_(0)^(- x) dot d x
$


$
F_(xi_0) (x) =  1/(sqrt(2 pi)) limits(integral)_0^x e^(- t^2/2) d t =\
= 1/(sqrt(2 pi)) limits(integral)_(- infinity)^0 e^(- t^2/2) d t - 1/(sqrt(2 pi)) limits(integral)_(x)^0 e^(- t^2/2) d t =\
= 0.5 + 1/(sqrt(2 pi)) limits(integral)_(- x)^(0) e^(- t^2/2) d t = 0.5 - 1/(sqrt(2 pi)) limits(integral)_(0)^(- x) e^(- t^2/2) d t =\
= 0.5 - Phi (- x) = 0.5 + Phi(x)
$

== Правило 3-х сигм

Если $xi ~ N(a, sigma^2)$, то $P {|xi - a| lt.eq 3 sigma} = 0.9973 approx 1$

Действительно

$
P {|xi - a| lt.eq 3 sigma} = P {- 3 sigma lt xi - a lt 3 sigma} = P {-3 lt (xi - a)/sigma lt 3} =\
= P{- 3 lt xi_0 lt 3} = F_(xi_0) (3) - F_(xi_0) (-3) = 0.5 + Phi(3) - 0.5 - Phi(-3) =\
= Phi(3) + Phi(3) = 2 Phi(3) = 0.9973 space space (99.73% #[--- в процентах])
$


== Некоторые распределения (\*) связанные с $N (a, sigma^2)$

Пусть $xi_1, xi_2, dots xi_n$ --- независимые случайные велечины; $xi ~ N(0, 1)$

=== Распределение хи-квадрат

$ chi^2 (n) = xi_1^2 + dots + xi_n^2 $ // TODO: Здесь какая-то старнная chi большая вместо "X"


$
f(x) = cases(
	(x^(n/2 - 1) dot e^(- x/2))/((2^(n/2) dot Gamma (h/2)))\, x gt.eq 0,
	0\, x lt 0
)
$


$
Gamma(n/2)
$ 
--- Гамма функция см. матан

=== Распределение Стьюдента

Пусть есть $eta, xi_1, dots, xi_n$ --- независимые случайные величины с р-ем $N(0;1)$

Распределение Стюдента

$
t(n) = (eta)/(sqrt((xi_1^2 + dots + xi_n^2)/n)) = (eta dot sqrt(n))/(sqrt(chi^2 (n)))// TODO: Здесь какая-то старнная chi большая вместо "X"
$

== Независимые случайные величины и случайные векторы
Пусть $xi, eta$ --- некоторые случайные величины заданные на вероятностном пространстве $(Omega, cal(F),P)$.

/ Опр: Случайными величинами $xi, eta$ называются независимыми, если $forall x, y in RR$ $P{omega : xi (omega) lt x, eta (omega) lt y} = P{omega : xi (omega) < x} dot P{omega : eta (omega) lt y}$

Сравненим:

*С событиями*
$
P(A inter B) = P(A) dot P(B)
$

$A, B$ --- независимые

*С величинами нельзя писать A B*, если правильно понял

/ Опр: Случайными векторами назовем вектор со случайными координатами

$
overline(xi) = (xi_1, xi_2, dots, xi_n)
$


$xi_1$ определена на $(Omega, cal(F), P)$

1. пример

$
overline(xi) = (xi_1, xi_2), space xi_1 #[--- рост], space xi_2 #[--- вес]
$

2. Пример

координаты $x$ и $y$
$
(xi, eta)
$

В дальнейшем рассматриваем двумерный вектор

/ Опр: Функцией распределения вероятностей двумерной случайной величины называется функция:

$
F_(xi eta) (x, y) = P{omega : xi (omega) lt x; eta (omega) lt y}
$

или $F(x, y) = P{xi lt x, eta lt y}$

*Свойства*:
1. $forall x,y in RR$ $0 lt.eq F(x, y) lt.eq 1$
2. $F_(xi eta) (x, y)$ --- неубывающая $forall$ (по каждому) из своих аргументов и непрерывная слева
3. 
	$
	cases(
		limits(lim)_(x -> + infinity) F_(xi eta) (x, y) = F_eta (y),
		limits(lim)_(y -> + infinity) F_(xi eta) (x, y) = F_xi (x)
)\
		limits(lim)_(x -> + infinity\ y -> + infinity) F_(xi eta) (x, y) = 1
	$

	$
		limits(lim)_(x -> - infinity) F_(xi eta) (x, y) = limits(lim)_(y -> - infinity) F_(xi eta) (x, y)  = limits(lim)_(x -> - infinity\ y -> - infinity) F_(xi eta) (x, y) = 0
	$

/ Опр: Случайный вектор называется дискретным, если $xi, eta$ --- дискретные случайные величины.

$ (xi, eta) #[ задается вероятностями:] $
$ p_(i j) = P{xi = x_i, eta = y_j} $

// TODO: У Темы есть все рисунки

$
p_(i j) > 0 space space limits(sum)_(i = 1)^(infinity) limits(sum)_(j = 1)^(infinity) p_(i j) = 1
$

Если известно $p_(i j)$, то распределенеие координат $xi$ и $eta$ могут быть получены:

$
p_i = P {xi = x_i} = limits(sum)_(j = 1)^(infinity) p_(i j)\
q_j = P {eta = y_j} = limits(sum)_(i = 1)^(infinity) p_(i j)
$

$x_1, x_2, dots$ --- значения случайной величины в $xi$\
$y_1, y_2, dots$ --- значения случайной величины в $eta$

== Теорема (Критерий независимости дискретных случайных величин)

Дискретные случайные величины $xi$ и $eta$ независимы $<=>$

$
	forall i, j space space p_(i j) = p_i dot q_j
$

или 
$
P{xi = x_i, eta = y_j} = P{xi = x_i} dot P{eta = y_j}
$

/ Опр:Случайный вектор называется абсолютно непрерывным, если $forall x, y in RR$

$
F_(xi eta) = limits(integral)_(- infinity)^x limits(integral)_(- infinity)^y f_(xi eta) (u, v) d u d v
$

где $f_(xi eta) (x, y)$ --- функция плотности двумерной величины

= Свойства функции плотности на следующей паре
