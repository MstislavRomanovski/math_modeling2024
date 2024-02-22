---
## Front matter
lang: ru-RU
title: Лабораторная работа номер 2
author: Malkov Roman Sergeevich
date: 01.06.2022

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---


# Цель работы

Изучить модели боевых действий Ланчестера. Применить их на практике для решения задания лабораторной работы.

# Теоретическое введение

Рассмотривается три случая ведения боевых действий:

1. Боевые действия между регулярными войсками

2. Боевые действия с участием регулярных войск и партизанских отрядов

3. Боевые действия между партизанскими отрядами

# Задание

Между страной Х и страной У идет война. Численность состава войск исчисляется от начала войны, и являются временными функциями $x(t)$ и $y(t)$. В
начальный момент времени страна Х имеет армию численностью $500000$ человек, а в распоряжении страны У армия численностью в $500000$ человек. Для упрощения модели считаем, что коэффициенты $a$, $b$, $c$, $h$ постоянны. Также считаем $P(t)$ и $Q(t)$ непрерывными функциями.


# Задание

Постройте графики изменения численности войск армии Х и армии У для следующих случаев:

1. Модель боевых действий между регулярными войсками:

$$ {dx\over {dt}} = -0.45x(t)-0.86y(t)+sin(t+1) $$
$$ {dy\over {dt}} = -0.49x(t)-0.73y(t)+cos(t+2) $$

2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов:

$$ {dx\over {dt}} = -0.17x(t)-0.65y(t)+sin(2t) + 2 $$
$$ {dy\over {dt}} = -0.31x(t)y(t)-0.28y(t)+cos(t) + 2 $$

# Задачи

1. Построить модель боевых действий между регулярными войсками на языках Julia и OpenModelica
2. Построить модель ведения боевых действий с участием регулярных войск и
партизанских отрядов на языках Julia и OpenModelica

# Регулярная армия X против регулярной армии Y

Рассмотрим первый случай.
Численность регулярных войск определяется тремя факторами:

1. Cкорость уменьшения численности войск из-за причин, не связанных с боевыми действиями (болезни, травмы, дезертирство);
2. Cкорость потерь, обусловленных боевыми действиями противоборствующих сторон (что связанно с качеством стратегии, уровнем вооружения, профессионализмом солдат и т.п.);
3. Cкорость поступления подкрепления (задаётся некоторой функцией от времени).

# Регулярная армия X против регулярной армии Y


В этом случае модель боевых действий между регулярными войсками описывается следующим образом:

$$ {dx\over {dt}} = -a(t)x(t)-b(t)y(t)+P(t) $$
$$ {dy\over {dt}} = -c(t)x(t)-h(t)y(t)+Q(t) $$

# Регулярная армия X против регулярной армии Y


В первом пункте нами рассматривается как раз такая модель. Она является доработанной моделью Ланчестера, так его изначальная модель учитывала лишь члены $b(t)y(t)$ и $c(t)x(t)$, то есть, на потери за промежуток времени влияли лишь численность армий и "эффективность оружия" (коэффициенты $b(t)$ и $c(t)$).

$$ {dx\over {dt}} = -ax(t)-by(t)+P(t) $$
$$ {dy\over {dt}} = -cx(t)-hy(t)+Q(t) $$

Именно эти уравнения [3] и будут решать наши программы для выполнения первой части задания. В конце мы получим график кривой в декартовых координатах, где по оси $ox$ будет отображаться численность армии государства X, по оси $oy$ будет отображаться соответствующая численность армии Y. По тому, с какой осью пересечётся график, можно определить исход войны. Если ось $ox$ будет пересечена в положительных значениях, победа будет на стороне армии государства X (так как при таком раскладе численность армии Y достигла нуля при положительном значении численности армии X). Аналогичная ситуация для оси $oy$ и победы армии государства Y.

# Регулярная армия X против партизанской армии Y

Для второй части задания, то есть, для моделирования боевых действий между регулярной армией и партизанской армией, необходимо внести поправки в предыдущую модель. Считается, что темп потерь партизан, проводящих свои операции в разных местах на некоторой известной территории, пропорционален не только численности армейских соединений, но и численности самих партизан.

$$ {dx\over {dt}} = -a(t)x(t)-b(t)y(t)+P(t) $$
$$ {dy\over {dt}} = -c(t)x(t)y(t)-h(t)y(t)+Q(t) $$

# Регулярная армия X против партизанской армии Y

Коэффициенты $a$, $b$, $c$ и $h$ всё так же будут положительными десятичными числами:

$$ {dx\over {dt}} = -ax(t)-by(t)+P(t) $$
$$ {dy\over {dt}} = -cx(t)y(t)-hy(t)+Q(t) $$


# Программный код решения на Julia

Случай сражения регулярная армия против регулярной армии.
!["Код для первого случая на Julia"](Screens/1.png){#fig:001}

# Программный код решения на Julia

Случай сражения регулярной армии против партизан.
!["Код для второго случая на Julia"](Screens/2.png){#fig:002}
# Результаты работы кода на Julia

!["График в Julia. Первый случай"](Screens/lab03_1.png){#fig:003}

# Результаты работы кода на Julia

!["График в Julia. Второй случай"](Screens/lab03_2.png){#fig:004}

# Программный код решения на OpenModelica 

Случай сражения регулярная армия против регулярной армии.
!["Код для первого случая на OpenModelica"](Screens/3.png){#fig:005}

# Программный код решения на OpenModelica

Случай сражения регулярной армии против партизан.
!["Код для второго случая на OpenModelica"](Screens/4.png){#fig:005}

# Результаты работы кода на OpenModelica

!["График в OpenModelica. Первый случай"](Screens/modelica1.png){#fig:006}

# Результаты работы кода на OpenModelica

!["График в OpenModelica. Второй случай"](Screens/modelica2.png){#fig:007}

# Анализ полученных результатов. Сравнение языков.

Графики для всех случаев в OpenModelica и в Julia индентичны в своей сути. Единственное отличие заключается в различии масштаба для графиков характеризующие боевые действия между регулярной армией и партизанами.


# Вывод

Были изучены модели боевых действий Ланкастера. В результате были получены графики для двух случаев боевых действий.

# Список литературы. Библиография

[1] Документация по Julia: https://docs.julialang.org/en/v1/

[2] Документация по OpenModelica: https://openmodelica.org/

[3] Решение дифференциальных уравнений: https://www.wolframalpha.com/

[4] Законы Ланчестера: https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BE%D0%BD%D1%8B_%D0%9E%D1%81%D0%B8%D0%BF%D0%BE%D0%B2%D0%B0_%E2%80%94_%D0%9B%D0%B0%D0%BD%D1%87%D0%B5%D1%81%D1%82%D0%B5%D1%80%D0%B0