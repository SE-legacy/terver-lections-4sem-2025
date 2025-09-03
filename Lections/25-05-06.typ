= Лекция ... 6 мая 2025.

== Следствие (неравенство Чебышева):

Пусть $xi$ --- некоторая случайная величина с $M xi lt + infinity$, а $g(x)$ неубывающая непрерывная функция

Тогда 
$
forall epsilon gt 0 space P{|xi - M xi| gt.eq epsilon} lt.eq (D xi)/(epsilon^2)
$

Действительно:

$|xi - M xi| $ --- неотрицательная случайная величина, $g(x) = x^2, x gt.eq 0$

=== Пример. Оценить для случайной величены $xi$ с $M xi = a lt + infinity$ и $D xi = sigma^2$ вероятности отклонения на $epsilon = k 5$

$
k = 1, space epsilon = sigma; space P{|xi - a| lt.eq sigma} gt.eq 1 - (D xi)/(epsilon^2) = 1 - (sigma^2)/(sigma^2) = 0\
k = 2, space epsilon = 2 sigma; space P{|xi - a| lt.eq 2 sigma} gt.eq 1 - (sigma^2)/(4 sigma^2) = 3/4 = 0.75\
k = 3, space epsilon = 3 sigma; space P{|xi - a| lt.eq 3 sigma} gt.eq 1 - (sigma^2)/(9 sigma^2) = 8/9 = 0.(8)
$

Заметим, что если известно $xi ~ N(a; sigma^2)$, то $P{|sigma - a| lt 3 sigma} = 0.9973$

== Ковариация случайной величены

Пусть $xi$ и $eta$ --- случайные величины с $M xi lt + infinity; M eta lt + infinity$

Совместное мат ожидание есть $M xi eta = limits(integral)_(-infinity)^(infinity) limits(integral)_(-infinity)^(infinity) x y d F_(xi eta) (x; y)$

Для дсв $M xi eta = limits(sum)_(i = 1)^infinity limits(sum)_(j = 1)^infinity x_i y_j P_(i j) $

Для абс непр
$M xi eta = limits(integral)_(-infinity)^(infinity) limits(integral)_(-infinity)^(infinity) x y d f_(xi eta) (x; y) d x d y$

/ Опр.: Ковариацей случайной величины $xi$ и $eta$

$ c o v(xi, eta) = M (xi - M xi)(eta - M eta) $

Свойства:
1. $c o v(xi, eta) = c o v(eta, xi)$
2. Если $xi, eta$ независимы, то $c o v(xi, eta) = 0$, Обратно не верно.
3. $c o v(xi, eta) = M xi eta - M xi M eta$

Покажем 3.

$
c o v(xi, eta) = M(xi - M xi) (eta - M eta) = M(xi eta - eta M xi - xi M eta + M xi + M eta)=\
= M xi eta - M (eta M xi) - M(xi M eta) + M (M xi M eta) =\
= M xi eta - M xi M eta - M eta M xi + M xi M eta = M xi eta - M xi M eta
$

== Дисперсия
/ Опр: Дисперсией случайной величины $xi$  $M xi = a lt + infinity$

Назовем $D xi = M (xi - M xi)^2$

Свойства:
0. $D xi = M (xi - M xi)^2$
1. $D C = 0; c - c o n s t $\
2. $D C xi = C^2 D xi; C - c o n s t$

	$D C_xi = M (C xi - M C xi)^2 = M (C(xi - M xi))^2 = \
	= M C^2 (xi - M xi)^2) = C^2 M (xi - M xi)^2 = C^2 D xi$
3. Если $xi, eta$ --- независимы, то $D(xi plus.minus eta) = D xi + D eta$
4. Если $xi, eta$ такие, что $M xi lt + infinity$, $M eta lt + infinity$, то $D (xi plus.minus eta) = D xi + D eta plus.minus 2 c o v(xi, eta)$

$
D(xi - eta) = M((xi - eta) - M (xi - eta))^2 = M((xi - M xi) - (eta - M eta))^2 = \
= M (xi - M xi)^2  - 2 M(xi - M xi)(eta - M eta) + M(eta - M eta)^2 = D xi + D eta - 2 c o v(xi , eta)
$

т.к. для независ случ величин $M xi eta = M xi M eta$

Ковариация незави. сл. в.

$
c o v(xi, eta) = M xi eta - M xi M eta = M xi M eta - M xi M eta = 0
$

Откуда $=>$ 3
5. $D xi = M xi^2 - (M xi)^2$

$ D xi = M (xi - M xi)^2 = M(xi^2 - 2 xi M xi + (M xi)^2) = M xi^2 - 2 M xi M xi + (M xi)^2) = M xi^2 - (M xi)^2 $

== Моменты распределений.
1. Начальный момент $k$-ого порядк --- это величины $m_k = M xi^k$; если $M |xi|^k lt + infinity$

	Вероятности: $m_1 = M xi; m_2 = M xi^2$
2. Центральным моментом $k$-ого порядка

	$
		mu_k = M (xi - M xi)^k ; M|xi| lt + infinity
	$

	В частности

	$ mu_1 = M(xi - M xi) = M xi - M(M xi) = M xi - M xi = 0 $
	$ mu_2 = M(xi - M xi)^2 = D xi $
3. Смешанные моменты

$k$-ого порядка

$
alpha_(i j) = M(xi - M xi)^i (eta - M eta)^j; i + j = k
$

$
M|xi| lt + infinity\
M|eta| lt + infinity\
k = 1\
alpha_(1 0) = M(xi - M xi) = mu_1 = 0\
alpha_(0 1) = M(eta - M eta) = mu_1 = 0\
alpha_(2 0) = M(xi - M xi)^2 = mu_2 = D xi\
alpha_(0 2) = M(eta - M eta)^2 = mu_2 = D eta\
alpha_(1 1) = M(xi - M xi)(eta - M eta) = c o v(xi; eta)
$

== Вычисление характеристик основных законов
1. Распределение Бернулли

	$epsilon ~ B e r n(p)$

	$M epsilon = 0 dot q + 1 dot p = p$

	$D xi = M(epsilon - P)^2 = (0 - p)^2 dot q + (1 - p)^2 q = p^2 q + q^2 q = p q (p + q) = p q$

2. Характеристики биномиальных распределений
