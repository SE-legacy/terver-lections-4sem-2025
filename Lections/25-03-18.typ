= Лекция 6. 18 марта 2025.
#set math.equation(numbering: "1.")
=== Пример $X = Y = RR$

$(cal(B)(R), cal(B)(R))$ --- классы множеств --- борелевские $sigma$-алгебры.

Из определения следует, что

Если $b in B$ (когда по контексту понятно, о чём идёт речь), то $b$ можно представить 

$ union, inter $

$(cal(B)(R), cal(B)(R))$ --- называется борелевской функцией

Вернёмся на прямую. Пусть у нас $f(x)$ --- это функция, заданная на $r$


/ Критерий измеримости: Функция $f(x) : X -> Y; space x, y subset RR$ измерима $(cal(B)(R), cal(B)(R)) <=> forall c in RR $

$ {x : f(x) lt c } in B(RR) $

т.е. 

$ f^-1 (b) in B(RR) space space b = (- infinity; c) $

== Глава 2 Случайные виличины

=== Пример:

$ Omega = { (o;o); (o; p); (p; o); (p; p)} $

$ xi, sigma.alt, zeta $

$xi$ --- количество вывавших орлов

$ xi (omega_1) = xi (o; o) = 2 $
$ xi (omega_2) = xi (o; p) = 1 $
$ xi (omega_3) = xi (p; o) = 1 $
$ xi (omega_4) = xi (p; p) = 0 $

// FIX:  #image("imgs/021.png")

$ P{ xi = 2 } = P {(o, o)} = 1/4 $
$ P{ xi = 1 } = P {(o, p) union (p, 0)} = 1/4 + 1/4 = 1/2 $
$ P{ xi = 0 } = P {(p, p)} = 1/4 $

/ Опр.: Пусть $(Omega, cal(F), P)$ --- вероятностное пространство. Случайной величниной $xi$ называется функция $xi: Omega -> RR$, такая что
$ forall x in RR space space { omega : xi (omega) < x } in cal(F) $

Заметим, что $xi$ --- $(cal(F), B)$ --- измеримая функция

$ x = Omega; space Y = RR $

$
	S_x = cal(Gamma) = sigma(Omega) \
	S_y = cal(Beta) = sigma(RR)
$


/ Опр.: Функцией распределения вероятностей случайной величны $xi$ называется:

$ F_xi (x) = R{ omega: xi (omega) lt x } $

Свойства:
1. $ forall x in RR space space 0 lt.eq F_xi (x) lt.eq 1 $
2. $ F_xi (x) #[--- неубывающая непрерывная слева] $
3. $ limits(lim)_(x ->  + infinity) F_xi (x) = 1 space limits(lim)_(x ->  - infinity) F_xi (x) = 0 $<l6:eq3>
4. $ P { a lt.eq xi lt b } = F_xi (b) - F_xi (a) $<l6:eq4>
5. $ P { xi = x_0 } = F(x_0 + 0) - F(x_0) $

Докажем 2 неубывание

Пусть $x_1 lt x_2$

$
	F(x_2) = P { xi lt x_2 } = P {(omega: xi (omega) lt x_1) union (omega: lt.eq xi (omega) lt x_2)} =\
	= P underbracket({xi lt x_1}, gt.eq 0) + underbracket({x_1 lt.eq xi lt x_2}, gt.eq 0) gt.eq P {xi lt x_1} = 
$

т.е. $forall x_1 lt x_2$ 

$ F(x_2) gt.eq F(x_1) $
$ F(x_1) lt.eq F(x_2) $
$omega$ --- случайные события

Положим $x_1 = a$; $x_2 = b$. Тогда

$ F(b) = F(a) + P{ a lt.eq xi lt b } => #[ докажем @l6:eq4] $

Положим, $x_1 = x_0$; $x_2 = x_0 + Delta$
$
F(x_0 + Delta) = F(x_0) + P {x_0 lt.eq xi lt x_0 + Delta}\
limits(lim)_(Delta -> 0 ) = /* ??? */ +	limits(lim)_(Delta -> 0) P { x_0 <= xi < x_0 + Delta } \
F(x_0 + 0) = F(x_0) + P { xi = x_0 } \
$

Докажем 2, непрерывность слева. Пусть ${x_n}^infinity_(n = 1)$, такое что $x_n lt x_(n + 1) $

И $exists limits(lim)_(n -> + infinity) x_n = x$

Требуется показать, что

$ limits(lim)_(n -> + infinity) F(x_n) = F(x) $

$ A_n = {omega : xi (omega) lt x_n} $

$ A_n subset A_(n + 1) $

$ union A_n = A = {omega : xi (omega) < x} $

Тогда по свойству неприрывности вероятностной меры

$
limits(lim)_(n -> infinity) F(x_n) = limits(lim)_(n -> infinity) P { omega : xi (omega) < x_n } = limits(lim)_(n -> infinity) P(A_n) = P(limits(union.big)_(n = 1)^infinity A_n) =\ P(A) = P {omega : xi(omega) < x} = F(x)
$

Тогда множество $A = union A_n =  { omega : xi (omega) < + infinity} = Omega$
$ => limits(lim)_(x -> + infinity) F(x) = P{Omega} = 1$

$=>#[доказано @l6:eq3] $
// FIX:  #image("imgs/022.png")

=== Пример построения функции распределения

$ F_xi (x) = P{xi lt x} $

#table(
	columns: 4,
	[$xi$], [$0$], [$1$], [$2$],
	[$P$], [$1/4$], [$1/2$], [$1/4$],
)

$
F(x) = cases(
	0\, x lt.eq 0,
	1/4\, 0 lt x lt.eq 1,
	3/4\, 1 lt x lt.eq 2,
	1\, x gt 2
)
$

Задача

$ P { xi = 1 } = F(1 + o) - F(1) = 3/4 - 1/4 = 1/2 $

$
	P = {xi = 1.7} = F(1.7 + 0) - F( 1.7) = 3/4 - 3/4 = 0
$

== Виды распределений

/ Опр.: Случайная величниа $xi$ называется дискретной, если ее множество значений кончено или счетно

$x_1, dots, x_n, dots,$ --- значения случайно величны

Д.С.В. задается законом распределения вероятности

$ P { xi = x_i } $

или рядом распределения вероятности

#table(
	columns: 6,
	[$xi$], [$x_1$], [$x_2$], [$dots$], [$x_n$], [$dots$],
	[$P$], [$P_1$], [$P_2$], [$dots$], [$P_n$], [$dots$],
)


$ limits(sum)_(i = 1)^infinity P_i = 1 $
$F(x) $Д.С.В. // TODO:


/ Опр.: случайная величина $xi$ называется непрерывной, если её функция распределения $F(x)$ является непрерывной.

/ Опр: Абсолютно непрервыной случайной величиниой называется случайная величина $xi$ ф. р. к-рой может быть записана:

$ F_xi (x)  = limits(integral)_(- infinity)^x f(t) d t $

/ Опр.: функцией плотности распределения вероятностей называется функция $F(x)$ такая, что
1. $f(x) >= 0 space forall x in RR$ --- функция с неотрицательными значениями
2. $F'(x) limits(=)^"почти всюду" f(x)$
3. $limits(integral)_(-infinity)^infinity f(x) dif x = 1$
4. $P{a <= xi < b} = limits_a^b f(x) dif x$

Для нас по большому счёта это выглядит как функция, у которой функция распределения имеет гладкий вид и которая может быть проинтегрирована нормально.
