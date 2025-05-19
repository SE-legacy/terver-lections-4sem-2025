= Лекция ... 13 мая 2025.

== 2. Биномиальное распределение

$xi ~ B i n (n,p)$ , где
- $n$ --- количество испытаний Бернулли,
- $p$ --- количество успешных испытаний.

Закон распределения:
$
P{xi = k} = C^k_n p^k q^(n - k); space k = overline(0 \, n)
$

=== 1 способ

$
M xi = limits(sum)_(k = 0)^n k dot C^k_n dot p^k dot q^(n - k) = limits(sum)_(k = 1)^n k dot (n!)/(k! (n - k)!) p dot p^(k - 1) dot q^((n - 1) - (k - 1)) =\
= n p limits(sum)_(k = 1)^n ((n - 1)!)/((k - 1)! (n - k)!) p^(k - 1) dot q^((n - 1) - (k - 1)) = [ m = k - 1 ] =\
= n dot p dot limits(sum)_(m = 0)^(n - 1) C^m_(n - 1) p^m dot q^((n - 1) - m) = n p (p + q)^(n - 1) = n p
$

Обратим внимание, что нулевое слагаемое тождественно равно нулю, поэтому сумму можно считать с единицы. Разделим $p^k$ на два множителя. После элементарных преобразований с $q$ и $n$ Перейдём к новой переменной $m$, которая равна $k - 1$. Не забывая, что сумма вероятностей равна единице, $(p + q)^(n - 1) = 1$

=== II способ

Предположим случайную величину $xi = epsilon_1 + epsilon_2 + dots + epsilon_n$, $epsilon_i ~ "Bern"(p)$.

$M_xi = M(epsilon_1 + epsilon_2 + dots + epsilon_n) = M xi_1 + dots + M xi_n = p + p + dots + p = n p$


$
D xi_1 + dots + D xi_n = p q + dots + p q = n p q
$

Таким образом $xi ~ B i n(n, p)$

$
M xi = n p;\
D xi = n p q;\
sigma = sqrt(n p q);
$

Следующее распределение, которое мы посмотрим, --- это распределение Пуассона.

== 3. Распределение Пуассона

$xi ~ P o i s (lambda);$, $xi$ --- количество успехов в большом.


Закон распределения

$
P{xi = k} = (e^(-lambda) lambda^k)/(k!) ; space k = 0, 1, dots
$
$M_xi = limits(sum)_(k = 0)^infinity k frac(e^(-lambda) dot lambda^k, k!) - e^(-lambda) dot lambda limits(sum)_(k = 1)^infinity frac(lambda^(k - 1), (k - 1)!) = e^(-lambda) limits(sum)_(m = 0)^infinity frac(lambda^m, m!) = e^(-lambda) dot lambda dot e^lambda = lambda$ ($lambda = n p$ из т. Пуассона)

$limits(sum)_(k = 0)^infinity frac(x^k, k!) = e^lambda$

$
M xi^2 = limits(sum)_(k = 0)^infinity = k^2 frac(e^(-lambda) lambda^k, k!) = e^(-lambda) limits(sum)_(k = 1) frac(k dot k dot lambda^(k - 1) lambda, k dot (k - 1)!) = lambda e^(-lambda) limits(sum)_(k = 0)^infinity frac(k lambda^k - 1, (k - 1)!) limits(=)^(m = k - 1)_(k = m + 1) =\
= lambda e^(- lambda) limits(sum)_(m = 0)^infinity (m + 1) (lambda^m)/(m!) = lambda e^(- lambda) (limits(sum)_(m = 0)^infinity (m lambda^m)/(m!) + limits(sum)_(m = 0)^infinity (lambda^m)/(m!)) = \
= lambda e^(- lambda) (lambda e^(lambda) + e^(lambda)) = lambda^2 + lambda
$

$D xi = M (xi^2) - (M xi)^2 = lambda^2 + lambda - lambda^2 = lambda$

$xi ~ "Pois"(lambda), M xi = lambda, D xi = lambda, sigma = sqrt(lambda)$

== 4. Геометрическое распределение

$
xi ~ G (p) space xi = 1, 2, dots space xi #[--- количество проведенных испытаний\ Бернули до пявления первого успеха]
$

Тогда закон распределения у нас имеет следующий вид:

$P {xi = k} = p dot q^(k - 1)$

$
M xi = limits(sum)_(k = 1)^infinity k dot p dot q^(k - 1) = p limits(sum)_(k = 1)^infinity (q^k)' =\
= p (limits(sum)_(k = 1)^infinity q^k)' = p ((q)/(1 - q))' = p((1 - q + q)/((1 - q)^2)) = p dot 1/(p^2) = 1/p
$
// тут мат ожидание

Следует обратить внимание, математическое ожидание вычисляется сразу как сумма с единицы, а не с нуля. Интересный финт ушами: $k dot q^(k - 1) = (q^k)'$. Ну а сумма производных в то же время есть производная суммы, так что выносим черту за сигму. Дальше дело арифметики.

$D xi = q/(p^2), sigma = sqrt(q/(p^2))$

*Примечание.* В задачах, где дана случайная величина, эквивалентная распределению, и требуется вычислить мат ожидание, как правило, достаточно ограничиться написанием формулы, вывод не нужен. Например:

$Chi ~ G(0, 3) \
M Chi = 1/0.3 = 10/3$

== Характеристики непрерывных случайных величин

=== Нормальное распределение (Гаусса)
- $xi ~ N(a, sigma^2)$ #h(5pt) $f(x) = 1/(sqrt(2 pi) sigma) e^(frac(-(x-a)^2, 2 sigma^2))$

Воспользуемся совйством:
$
xi_0 ~ N (0; 1); space xi ~ N (a, sigma^2)\
xi = sigma xi_0 + a\

M xi = M(sigma)
$

$M xi = M (sigma xi_0 + a) =  sigma M xi_0 + a\
D xi = sigma^2 D xi_0$


$
M xi_0 = limits(integral)^infinity_(- infinity) x 1/(sqrt(2 pi)) dot e^(- (x^2)/2) d x =\
  mat(delim: "[",
    t = (x^2)/2, space, dif t = x dif x;
    x |_(infinity)^infinity, ->^t, |_infinity^infinity ?
  ) =
= 1/(sqrt(2 pi)) (limits(integral)^0_(-infinity) x e^(- (x^2)/2) + limits(integral)_0^(infinity) x e^(- (x^2)/2) d x)=\
= 1/(sqrt(2 pi)) (limits(integral)^0_(-infinity) e^(-t) d t + limits(integral)_0^(infinity) e^(-t) d t)=\
= 1/sqrt(2 pi) (-(-e^(-t)))|_0^infinity + (-e^(-t))|_0^infinity
= 1/sqrt(2 pi) (limits(lim)_(t -> + infinity) e^(-t) - e^0 - (limits(lim)_(t -> +infinity 1/(e^t) -e^0))) =\
= 1/(sqrt(2 pi)) (0 - 1 - (0 - 1)) = 1/(sqrt(2 pi)) dot 0 = 0
$

Интегрируем по частям. Переходим к пределам, пределы равны нулю, остаётся интеграл Пуассона.
$
M xi_0^2 = 1/(sqrt(2 pi)) limits(integral)^(infinity)_(- infinity) x^2 e^(- (x^2)/2) d x =\
  mat(delim: "[",
    x = u, dif u - dif x;
    x e^((-x^2)/2 dif x = dif v), v  -e^((-x^2)/2)
  ) =\

= 1/(sqrt(2 pi)) (- x e^(- (x^2)/2) |^(infinity)_(- infinity) + limits(integral)^(infinity)_(- infinity) e^(- (x^2)/2) d x) =\
= 1/(sqrt(2 pi)) (- limits(lim)_(x -> + infinity) x/(e^((x^2)/2)) + limits(lim)_(x -> - infinity) x/(e^((x^2)/2)) + limits(integral)^(infinity)_(-infinity) e^(- (x^2)/2) d x) =\
= 1/(sqrt(2 pi)) dot sqrt(2 pi) = 1
$

*Примечание*: обозначение $xi_0$ --- собственное изобретение Агафоновой.

*Интеграл Пуассона*: _был выведен в процессе изучения расширения шара под воздействием температуры_

$limits(integral)_(-infinity)^infinity e^((-x^2)/2) dif x= sqrt(2 pi)$

Таким образом

$
D xi_0 = M xi_0^2 - (M xi_0)^2 = 1 - 0 = 1
$

- $xi_0 ~ N(0, 1)$ #h(5pt) $M xi_0  0, D xi_0 = 1, sigma = 1$
- $xi ~ N (a, sigma^2) space M xi = a; D xi = sigma^2; space space sigma = sigma$

=== 2.
$xi ~ R(a; b)$ #h(5pt) $f_xi = cases(
	1/(b - a)\; x in [a\; b],
	0\; x in.not [a\; b]
)$

$M xi = limits(integral)_(infinity)^infinity x f(x) dif x = limits(integral)_a^b 1/(b - a) dif  = 1/(b - a) (x^2)2 |_a^b  frac(b^2 - a^2, 2(b - a) = frac(b + a, 2))$

$
M xi^2 = limits(integral)^b_a x^2 1/(b - a) d x =\
= 1/(b - a) (x^3)/3 |^b_a = 1/(b - a) dot (b^3 - a^3)/3 =\
= (b^2 + a b + a^2)/3
$

$D xi = frac(b^2 + a b + a^2, 3) - frac((b + a)^2, 4) = dots = frac((b - a)^2, 12)$

*Примечание.* Опущенный в лекции вывод дисперсии потребуется воспроизвести на зачёте, если такой вопрос выпадет.

=== 3.
$
xi ~ П(lambda) #[--- самостоятельно + Ипсилон]
$

== Характеристические функции (х. ф.)

Пусть $xi_1$ и $xi_2$ --- случайные величины заданные на одном вероятностном пространстве $(Omega; cal(F); P)$

Тогда Комплексной случайно величиной назовем:
$
eta = xi_1 + i xi_2\
i^2 = - 1
$

/ Комплексная случайная величина: $eta = xi_1 + i xi_2$ ($i^2 = -1$)

/ Математическим ожиданием коплексной случайной величины: называется величина $M eta = M xi_1 + i M xi_2$

Рассмотрим случайную величину $eta = e^(i t xi) = cos t xi + i sin t xi$, где $t in RR$

$
|eta| = sqrt(cos^2 t xi + sin^2 t xi) = sqrt(1) = 1
$

/ Характеристическая функция случайной величины $xi$: --- функция $phi(t) = M e^(i t xi)$, где $t in RR$

В частности: $phi(t) = limits(sum)_(k = 0)^infinity e^(i t x_k) dot p_k,$ для дискретной случайных величины $P{xi = x_k} = p_k$

$
phi(t) = limits(integral)_(- infinity)^infinity e^(i t x) f(x) d x, #[ для абсолютной непрерывной случайной величины]
$

$f(x)$ --- функция плотности
*Пример:* // HACK: которого нет
