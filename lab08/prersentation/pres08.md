---
## Front matter
lang: ru-RU
title: Лабораторная работа номер 8
author: Malkov Roman Sergeevich
date: 29.03.2024

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

Изучить и построить модель конкуренции двух фирм.

# Задание

**Вариант 59**

>Случай 1
$$\frac{dM_1}{d\Theta} = M_1 - \frac{b}{c_1}M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2$$
где 

$$ a_1 = \frac{p_{cr}}{\tau_1^2 \widetilde{p}_1^2 Nq } $$
$$ a_2 = \frac{p_{cr}}{\tau_2^2 \widetilde{p}_2^2 Nq } $$ 
$$ b = \frac{p_{cr}}{\tau_1^2 \widetilde{p}_1^2 \tau_2^2 \widetilde{p}_2^2 Nq} $$
$$ c_1 = \frac{p_{cr} - \widetilde{p}_1}{\tau_1 \widetilde{p}_1} $$
$$ c_2 = \frac{p_{cr} - \widetilde{p}_2}{\tau_2 \widetilde{p}_2} $$

также введена нормировка $t = c_1 \Theta$

# Задание

>Случай 2

$$\frac{dM_1}{d\Theta} = M_1 - (\frac{b}{c_1} + 0.00049)M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2$$

Для обоих случаев рассмотрим задачу со следующими начальными условиями и параметрами

$$ M_0^1=8.8 \: M_0^2=9.9 $$
$$ p_{cr}=30 \: N=80 \: q=1 $$
$$ \tau_1=10.1 \: \tau_2=11.5 $$
$$ \widetilde{p}_1=10.1 \: \widetilde{p}_2=11.5 $$

# Задачи

1.	Изучить модель конкуренции двух фирм

2.	Построить графики изменения оборотных средств двух фирм для обоих случаев

# Выполнение лабораторной работы

Код программы для первого случая:

![Реализация на языке Julia](Screens/1.PNG){ #fig:001 width=70% height=70% }

# Выполнение лабораторной работы

Код программы для второго случая:

![Реализация на языке Julia](Screens/2.PNG){ #fig:002 width=70% height=70% }

# Выполнение лабораторной работы

![График конкуренции двух фирм фирм для первого случая, построенный на языке Julia](Screens/jl1.PNG){ #fig:003 width=70% height=70% }


# Выполнение лабораторной работы

![График конкуренции двух фирм для второго случая, построенный на языке Julia](Screens/jl2.PNG){ #fig:004 width=70% height=70% }

# Выполнение лабораторной работы

Код программы для первого случая:

![Реализация на языке Modelica](Screens/3.PNG){ #fig:005 width=70% height=70% }

# Выполнение лабораторной работы

Код программы для второго случая:

![Реализация на языке Modelica](Screens/4.PNG){ #fig:006 width=70% height=70% }

# Выполнение лабораторной работы

![График конкуренции двух фирм для первого случая, построенный с помощью OpenModelica](Screens/mo1.PNG){ #fig:007 width=70% height=70% }

# Выполнение лабораторной работы

![График конкуренции двух фирм для второго случая, построенный с помощью OpenModelica](Screens/mo2.PNG){ #fig:008 width=70% height=70% }

# Анализ полученных результатов. Сравнение языков.

В итоге проделанной работы на языках Julia и OpenModelica мы построили графики изменения оборотных средств для двух фирм для случаев, когда конкурентная борьба ведётся только рыночными методами и когда, помимо экономического фактора влияния, используются еще и социально-психологические факторы. 

Построение модели конкуренции двух фирм на языке OpenModelica занимает значительно меньше строк кода, чем аналогичное построение на Julia.

# Вывод

В ходе выполнения лабораторной работы была изучена модель конкуренции двух фирм и в дальнейшем построена модель на языках Julia и Open Modelica.

# Список литературы. Библиография.

[1] Документация по Julia: https://docs.julialang.org/en/v1/

[2] Документация по OpenModelica: https://openmodelica.org/

[3] Решение дифференциальных уравнений: https://www.wolframalpha.com/

[4] Мальтузианская модель роста: https://www.stolaf.edu//people/mckelvey/envision.dir/malthus.html

[5] Математические модели конкурентной среды: https://dspace.spbu.ru/bitstream/11701/12019/1/Gorynya_2018.pdf

[6] Разработка математических моделей конкурентных процессов: https://www.academia.edu/9284004/Наумейко_РАЗРАБОТКА_МАТЕМАТИЧЕСКОЙ_МОДЕЛИ_КОНКУРЕНТНЫХ_ПРОЦЕССОВ 