= Название лекции 27 мая 2025

$phi(t) = e^(-t^2 / 2)$ х.ф. сл. в. $xi_0 tilde cal(N)(0, 1)$

Воспользуемся свойством $phi^((k))(0) = i^k M xi^k$

$
phi' (t) = - (2 t)/2 e^(- (t^2)/2) = - t e^(-(t^2)/2)\
phi''(t) = -e^(- (t^2)/2) + t^2 e^(- (t^2)/2)\
phi'''(t) = + t e^(-(t^2)/2) + 2 t e^(- t^(2)/2) - t^3 e^(- (t^2)/2) = 3 t e^(- (t^2)/2) - t^3 e^(- (t^2)/2)\
phi^((4))(t) =3 e^(- (t^2)/2) - 3 t e^(- (t^2)/2)- 3 t^2 e^(- (t^2)/2) + t^4 e^(- (t^2)/2) = 3 e^(-(t^2)/2) - 6 t^2 e^(-(t^2)/2) + t^4 e^(-(t^2)/2)\
phi^((5))(t) = -3t e^(-t^2/2) - 12 t e^(-t^2 / 2) + 6t^3e^(-t^2/2) + 4t^3e^(-t^2 / 2) - t^5 e^(-t^2, 2)
$

// TODO: первая производная

$ cases(phi''(0) = i^2 M xi^2, phi''(0) = -1) $

// TODO: третья производная


$
cases(
	phi^((4))(0) = i^4 M xi^4 = M xi^4,
	phi^((4))(0) = 3
) => M xi^4 = 3
$


$
cases(
	phi^((5)) (0) = i^5 dot M xi^5,
	phi^((5)) (0) = 0
) => M xi^5 = 0
$

$
cases(
	phi^((6)) (0) = i^6 dot M xi^6 = - M xi^6,
	phi^((6)) (0) = -15
) => - M xi^6 = 15
$



$
M xi_0 = 0\
M xi_0^2 = 1\
M xi_0^3 = 0\
M xi_0^4 = 1 dot 3 = 3\
M xi_0^5 = 0\
M xi_0^6 = 1 dot 3 dot 5 = 15\
M xi_0^7 = 0\
M xi_0^8 = 1 dot 3 dot 5 dot 7 = 105\
$

$
(2 n - 1)!! = 1 dot 3 dot 5 dot dots dot (2 n - 1)
$

/ Формула для $M xi^k,  space xi_0 tilde cal(N)(0, 1)$:: $forall n in NN$ $ M xi^2n = (2n-1)!! $
$ M xi^(2n - 1) = 0 $

== Теорема (единственности)
Пусть случайная величина $xi$ имеет функцию распределения $F_xi (x)$ и характерестическая функция $phi(t) = limits(integral)^(infinity)_(-infinity) e^(i t x) alpha F(x)$

Пусть случайная величина в $eta$ имеет функцию распределения $C_eta (x)$ и ту же характеристическую функцию $phi(t) = limits(integral)^(infinity)_(-infinity) e^(i t x) alpha C(x)$

Тогда

$
F_xi (x) eq.triple C_eta (x)
$

$
P{omega : P{xi(omega) lt x} eq.not P{eta(omega) < x}} = 0
$

== Теорема Бохнера-Хинчина (необходимое и достаточное условие характеристической функции)
Непрерывная функция $phi(t)$, такая что $phi(0) = 1$, является характеристической функцией распределения тогда и только тогда, когда:
$ forall t_1, t_2, dots, t_n in RR space forall lambda_1, lambda_2, dots, lambda_n in CC space space limits(sum)_(k = 1)^n limits(sum)_(m = 1)^n phi(t_k - t_m) lambda_k overline(lambda)_m gt.eq.slant 0 $


== Теорема обращения
Пусть $phi(t)$ --- характеристическая функция некоторого распределения

Тогда

$
forall a lt b
$

$
F(b) - F(a) = 1/(2 pi) limits(lim)_(c-> + infinity) limits(integral)_(-c)^c (e^(i t a) - e^(i t b))/(i t) phi(t) d t
$

== Теорема непрерывности (т. Леви) // GOTHAMCHESSS??????
Пусть ${F_n (x)}$ --- последовательность функций распределения, а ${phi_n (t)}$ --- полследовательность соответствующих характеристических функци

Если $F_n (x) ->^omega F(x)$, то $exists : phi(t) phi(0) = 1$ и $limits(lim)_(n -> + infinity) phi_n (t) = phi(t) $

$F_n (x) ->^omega F(x)$ --- слабая сходимость (сходимость в т. непрерывности)

Если $exists limits(lim)_(n -> infinity) phi_n(t) = phi(t)$, такая что $phi(t) = limits(integral)_(- infinity)^infinity e^(i t x)d F(x)$. Тогда $F_n(x) ->^omega F(x)$


== Как проходит зачет
Первая половина приходит к 10, вторая к 10:45--11

В билете есть теория с выводом (надо писать доказательство) и есть ряд вопросов дублирующих минимум и будут пару задач

== Примеры которые могут быть в билете
1. Найти $D xi$, если $M xi^2 = 4$ $M xi = - 1.5$

Решение:
$
D xi = M xi^2 - (M xi)^2 = 4 - 2.25 = 1.75
$

2. Найти $D X$: если
$
X = xi + eta
$

$
M xi = -1.5\
M eta^2 = 2\
M xi^2 = 4\
M eta^2 = 7\
$

Решение:
$

$

3. Найти $M xi$ и $D xi$

$
xi ~ B i n(15; 0.2)
$

Решение:
$
M xi = n p = 15 dot 0.2

D xi = n p q = 15 dot 0.2 dot 0.8
$

4. Характеристическая функция случайной величины $xi ~ B i n(n, p)$

$
phi (t) = (p t + q)^n
$

$
phi(t) = limits(sum)^n_(k = 0) e^(i t k) dot C^k_n p ^k q^(n - k) = limits(sum)^n_(k = 0) C_n^k (p e^(i t))^k q^(n - k) = (p e^(i t) + q)^n
$

записать характеристическую функцию

$
xi_1 ~ B i n (10; 0.5)\
xi_2 ~ B i n (20; 0.7)\
$

и х. ф.

$
X = xi_1 + xi_2\
$
$xi_1$ и $xi_2$ --- нез. случ. величина

Решение:

$
phi_1 (t) = (0.5 e^(i t) + 0.5)^10\
phi_2 (t) = (0.7 e^(i t) + 0.3)^20
$

$
phi_(xi_1 + xi_2) (t) = phi_(xi_1) dot phi_(xi_2) = (0.5 e^(i t) + 0.5)^10 dot (0.7 e^(i t) + 0.3)^20
$
