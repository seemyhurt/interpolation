% Демонстрация работы программы
clc; 
fprintf('Имеется функция, которая представлена в виде следующей таблицы:\n\n')
fprintf('|---------------------------------------------------------------------------------|\n');
fprintf('| Температура, °C |   0   |   10  |   20  |   30  |   40  |  60  |   80  |   100  |\n');
fprintf('|---------------------------------------------------------------------------------|\n');
fprintf('|  Температурный  |       |       |       |       |       |      |       |        |\n');
fprintf('|   коэффициент   | 0.395 | 0.356 | 0.322 | 0.293 | 0.268 | 0.23 |  0.2  |  0.17  |\n');
fprintf('|  вязкости, мПа  |       |       |       |       |       |      |       |        |\n');
fprintf('|---------------------------------------------------------------------------------|\n\n');
fprintf('Найдем значение функции в точке x = 50 °C и построим график функции\n\n') 
x = [0, 10, 20, 30, 40, 60, 80, 100];
y = [0.395, 0.356, 0.322, 0.293, 0.268, 0.23, 0.2, 0.17];
x1 = 50;
int = interp1(x, y, x1, 'spline');
fprintf('Значение функции в точке x = 50 °C равно %.4f мПа \n',int);

x2 = linspace(x(1), x(end));
int1 = interp1(x, y, x2, 'spline');
plot(x2, int1,'-.g', 'LineWidth', 2.5); % Построение кривой интерполяции
hold on;

plot(x1, int, 'dr') % Построение на графике проверочной точки
hold on;
plot(x, y, '-or'); % Построение графика исходной функции по заданным координатам

xlabel('Температура, °C');
ylabel('Температурный коэффициент вязкости');
title('Зависимость динамического коэффициента вязкости ацетона от температуры,  мПа');
legend('Интерполяционная кривая', 'Вычисленное значение интерполяции', 'Исходная функция')
answer = menu('Для возвращения в меню нажмите на кнопку' , 'Вот сюда!'); %Возврат в главное меню
if answer == 1
    close all
    clc
    fprintf('Программа для таблично заданной функции рассчитает значение функции в точке, не заданной в таблице ')
end











