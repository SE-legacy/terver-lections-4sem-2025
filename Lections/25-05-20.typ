#set math.equation(numbering: "1.")
= Лекция
== Пример
Построить характеристическую функцию случ. в. $xi ~ N(0, 1)$

$
f(x) = 1/(2 pi) e^(- (x^2)/2)
$

$
phi (t) = M e^(i t xi) = limits(integral)^(infinity)_(-infinity) e^(i t x) dot 1/sqrt(2 pi) e^(- (x^2)/2) d x = 1/(sqrt(2 pi)) limits(integral)_(- infinity)^(infinity) e^(- 1/2 (x^2 - 2 i t x)) d x = (x - i t)
$ // TODO: не успел дописать 


$
= 1/sqrt(2 pi) limits(integral)_(-infinity)^infinity e^(- frac((x - i t)^2, 2) + ((i t)^2) / 2) dif x = 1/sqrt(2 pi) dot e^(-t^2/2) limits(integral)_(-infinity)^infinity e^(-((x - i t)^2) / 2) dif x = e^(-t^2 / 2) // TODO: дописатть
$

Таким образом, $xi ~ N(0, 1)$ \
Характеристическая фукнция $phi(t) = e^(-(t^2)/2)$; $t in RR$

== Свойства характеристической функции

1. $|phi(t)| lt.eq 1; space phi(0) = 1$

	$|phi(t)| = |M e^(i t xi)| lt.eq M |e^(i t xi)| = M 1 = 1$

	$phi(0) = M e^(i t 0) = M 1 = 1$
2. $phi(- t) = overline(phi(t))$ $z = a + i b; space overline(z) = a - i b$

	$M e^(- i t xi) = M (cos(t xi) - i sin (t xi)) = overbrace(M cos (t xi), R e z) - i overbrace(M sin (t xi), I m z) =\
	= overline(M cos t xi + i M sin t xi) = overline(M (cos t xi + i sin t xi)) = overline(phi (t))$

3. Характеристическая функция --- равномерно непрерывная функция.

	Доказательство:

	По определению требуется показать, что $forall epsilon > 0 exists delta > 0 : space forall |t_1 - t_2| < delta space |phi(t_1) - phi(t_2)| < epsilon$.

	$
		|phi(t_1) - phi(t_2)| limits(=)^"через функцию распределения" |limits(integral)_(-infinity)^infinity e^(i t_2 x) dif F(x) - limits(integral)_(-infinity)^infinity e^(n t_2 x) dif x dif F(x) | = \
		limits(integral)_(-infinity)^infinity e^(i t_2 x) (e^(i (t_1 - t_2) x) - 1) dif F(x)  <= limits(integral)_(-infinity)^infinity underbrace(| e^(i t_2 x) |,j = 1)  dot underbrace(| e^(i(t_1 - t_2) x) - 1 |, <= 2)) dif F(x) =
	$ <l0520:eq1>

	_Примечание: $e^(t_1) - e^(t_2) = e^(t_2) (e^(t_1 - t_2) - 1)$_

	$= |e^(i z) - 1| = | cos z + i sin z - 1| = | overbrace(cos z - 1, R e z) + i overbrace(sin z, I m z) | =\
	= sqrt((cos z - 1)^2 + sin^2 z) = sqrt(cos^2 z - 2 cos z + 1 sin^2 z) = sqrt(2 - 2 cos z) = sqrt(2 overbrace((1 - cos z),0 lt.eq dot lt.eq 2)) lt.eq 2$

	// TODO: рисунок
	$
	= overbrace(limits(integral)_(|x| lt.eq A) |e^(i (t_1 - t_2)x) - 1| d F(x), I_1) + overbrace( limits(integral)_(|x| gt A) |e^(i (t_1 - t_2)x) - 1| d F(x), I_2) 
	$
	@l0520:eq1 $ = $

	$
		I_2 <= limits(integral)_(| x | > A) 2 dif F(x) = 2(limits(integral)_(-infinity)^(-A) dif F(x) + limits(integral)_A^(+infinity) dif F(x)) = \
		= 2 [ F(-A) - limits(lim)_(x -> +infinity) F(x) + (limits(lim)_(x -> +infinity)) F(x) - F(A))] = \
		= 2 [ P { xi < -A} + (1 - P { xi < A})] = 2(underbrace(P{xi < -A} + P{xi >= A}, P{|xi| > A}))
	$

	Зададим $epsilon > 0$ и выберем $A$ такой , чтобы $I_2 <= epsilon / 2$. Зафиксируем найденное $A$.

	Заметим, что в $I_1$ функция $g(x) = e^(i (t_1 - t_2) x) - 1$ является непрерывной по $x$ множество $|x| lt.eq A$ ограничено $=>$ т. Кантора $g(x)$ равном непрерывна на $|x| lt.eq A$ $=>$ Для заданного $epsilon$ $exists delta = delta (xi/2)$. такого что $forall |x_1 - x_2} lt delta |g(x_1) - g(x_2)| lt xi/2$

	$
		I_1 = limits(integral)_(|x| <= A) |e^(i (t_1 - t_2) x - 1| dif F(x) < limits(integral)_(|x| <= A) xi / 2 dif F(x) = \
		= epsilon/2 limits(integral)_(|x| <= A) dif F(x) = epsilon / 2 P{|xi| <= A} <= epsilon/2 dot 1 = epsilon/2
	$

	Таким образом $forall epsilon > 0 space exists delta = delta(epsilon)$ такой что $forall |t_1 - t_2| < delta$

4. Если $xi_1, xi_2, dots, xi_n$ --- независ. случ. вел., то характеристическая функция $eta= xi_1 + xi_2 + dots + xi_n$ равна

	$
	phi_eta (t) = phi_xi_1 (t) dot phi_xi_2 (t) dot dots dot phi_xi_n (t)
	$

	Действит.:
	$
	phi_eta (t) = M e^(i t(xi_1 + dot + xi_n)) = M e^(i t xi_1) dot e^(i t xi_2) dot dots dot e^(i t xi_n) = M e^(i t xi_1) dot M e^(i t xi_2) dot dots dot M e^(i t xi_n) = phi_xi_1 (t) dots phi_xi_n (t)
	$

5. Пусть случайная величина $xi$ иммет $n$ первых начальных моментов распределения, т. е. $M | xi^k | < + infinity, k = overline(1\,n)$.

	Тогда характеристическая функция $phi_xi (t)$ имеет первые $n$ производных, $phi^((k)) (0) = i^k M xi^k$.

	В частности,

	$phi^((1)) (0) = i M xi $ \
	$phi^((2)) (0) = i^2 M xi^2$

6. Пусть $xi$ --- случайная величина с характеристической фукнкцией $phi_xi (t)$

	Тогда случайная величина $eta = a xi + b$ имеет характеристическую функцию $phi_2 (t) = e^(i t b) phi (t a)$

	Действительно:
	$
	phi_eta (t) = M e^(i t eta) = M e^(i t(a xi +b)) = M e^(i t b) dot e^(i t a xi) =\
	e^(i t b) M e^(i (t a) xi) = e^(i t b) phi (t a)
	$

Тогда для $xi ~ N(a; sigma)$ по свойствам $xi = sigma xi_0 + a$ $=>$ по 6 свойству $phi_xi (t) e^(i t a) dot phi_xi_0 (sigma t) = e^(i t a) dot e^(-(sigma^2 t^2) / 2) = e^(-(sigma^2 t^2)/2) + i t a$
