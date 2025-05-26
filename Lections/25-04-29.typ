= Лекция ... 29 апреля 2025.

Свойства функции плотности


1. $f(x) gt.eq 0 space space forall x in RR$
2. $F'(x) =^#[п.в.] f(x) #[почти всюду]$
3. $limits(integral)_(-infinity)^infinity f (t) d t = 1$
4. $P{a lt.eq xi lt b} = limits(integral)_a^b f(t) d t$

Аналогично:
1. $f(x, y) gt.eq 0 space space space forall x, y in RR$
2. $(nu^2 F(x, y))/(nu x nu y) =^#[п.в.] f(x, y)$
3. $limits(integral)_(-infinity)^infinity f (u, v) d u d v = 1$
4. $P{(xi, eta) in D} = limits(integral integral)_D f (u, v) d u d v = 1$
5. $f_xi (x) = limits(integral)_(- infinity)^infinity f_(xi eta) (x, y) d y$

	 $f_eta (y) = limits(integral)_(- infinity)^infinity f_(xi eta) (x, y) d x$


== Критерий независимости а...

Случайная величины $xi$, $eta$ независимы $<=>$ $forall x,y in RR$

$
f_(xi eta) (x, y) = f_xi (x) dot f_eta (y)
$

=== Необходимость

Пустть $xi, eta$ независимы. Тогда по определению
$
F_(xi eta) (x, y) =  F_xi (x) dot F_eta (y)
$

Найдем производную $F_(xi eta) (x, y)$ // TODO: проверить

$
f_(xi eta) (x, y) =^#[п. в.] (nu^2 F(x, y))/(nu x nu y) =^#[п.в.] f(x, y)
$ 

Достаточность
$
F_(xi eta) = limits(integral)_(- infinity)^x limits(integral)_(- infinity)^y f_(xi eta) (u, v) d u d v =\
= limits(integral)_(- infinity)^x limits(integral)_(- infinity)^y f_xi (u) f(eta) d u d v
$ // TODO: проверить

= Глава 3. Числовые характеристики случайной величины

== Пример:

Пусть $xi$ --- случайная величина со значениями $x_1, x_2, dots, x_n$

Пусть произведено $N$ наблюдений которые $>>$ (гораздо больше) $n$ наблюдений случайной величины

Результат: $a_1, a_2, dots, a_N$


Тгда обозначим $x_i$ --- частота значений $xi$

=== Задача. чему равно среднее арифметическое $(limits(sum)_(i = 1)^N a_i) dot 1/N$ в зависимости от N

$
limits(lim)_(N -> + infinity) (a_1 + a_2 + dots + a_N)/(N) =\
= limits(lim)_(N -> + infinity) 1/N (x_1 k_1 + x_2 k_2 + dots + x_n k_n)=\
= limits(sum)_(i = 1)^n x_i limits(lim)_(N -> + infinity) (k_i)/(N) =\
= [ #[Стох. устойч. частот] ] =\
= limits(sum)_(i = 1)^n x_i P{xi = x_i} = M xi
$

Независимо от $N$

// значение близится к $0.5$

Опыты Пирсона и Романовского

/ Опр: Пусть $(Omega, cal(F), P)$ --- вероятностное пространство: $Omega$ --- мно-во элемент. исходов экспер., $cal(F)$ --- $sigma$-алг. событий; $P: Omega -> [0, 1]$ --- вер. мера

Математическим ожиданием случайн. велечины $xi: Omega -> RR$ называется число

$
M xi = limits(integral)_(Omega) xi (omega) d P(omega)
$

(При условии абсолютной сходимости)

В частности:

Пусть $F_xi (x)$ --- функция распределения случайной величины $xi$

$
M xi = limits(integral)_(- infinity)^infinity x d F_xi (x)
$

Если случайная велична дискретная ($F_xi (x)$ --- ступенч), то

$
M xi = limits(sum)^(i = 1)^infinity x_i p_i; space space p_i = P {xi = x_i}
$

Если случайная величина абсолюно непрерывн, то

$
M xi = limits(integral)_(- infinity)^infinity x f(x) d x
$

Свойства:
1. $M C = C;$ $C$ --- const
2. $M C xi = C M xi;$ $C$ --- const
3. $M (xi plus.minus eta) = M xi plus.minus M eta$
4. Если случайные величны $xi$ и $eta$ независ, то $M xi eta = M xi M eta$
5. Если случайная величина $xi$ неотриц, то $M xi gt.eq 0$
6. Неравенство Коши-Бунековского:

	$
		M |xi eta| lt.eq sqrt(M |xi|^2) sqrt(M eta^2)
	$

	$
		(M xi eta)^2 lt.eq M xi^2 dot M eta^2
	$
7. Обобщенное неравенство Чебышева

	Пусть $xi$ --- неотрицательная случ величина, $g(x)$ --- неубывающ. на множестве значений $xi$ непрер. функция
	
	Тогда:

	$
		forall epsilon gt 0 space space P{xi gt.eq epsilon} lt.eq (M g(xi))/(g(epsilon))
	$

*Доказательство:*

$xi$ --- неотр $=> P{xi gt.eq 0} = 1; space P{xi lt 0} = 0$

Найдем

$
M g(xi) = limits(integral)_(- infinity)^infinity g(x) d F_xi (x) = limits(integral)_0^infinity g(x) d F(x) gt.eq\
gt.eq limits(integral)^infinity_(epsilon) g(x) d F(x) gt.eq g(epsilon) limits(integral)^infinity_(epsilon) d F(x) =\
= g(epsilon) (limits(lim)_(x -> + infinity) F(x) - F(epsilon))= g(epsilon) (1 - P{xi lt epsilon}) = \
= g(epsilon) P{xi gt.eq epsilon} => P{xi gt.eq epsilon} lt.eq (M g(xi))/(g(epsilon))
$

