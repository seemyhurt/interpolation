if isvector(x) && isvector(y) && isempty(x1) == false
    sorted %Скрипт сортировки значений аргумента
    int = interp1(x, y, x1, 'nearest');
    if x1 > x(end) % Определение пределов интерполяционной кривой
        x2 = linspace(x(1), x1);
    elseif x1 < x(1)
        x2 = linspace(x1, x(end));
    else
        x2 = linespace(x(1), x(end));
    end
    
    fprintf('Значение функции в точке x = %.3f равно %.3f \n',x1, int);
    int1 = interp1(x, y, x2, 'nearest');
    plot(x2, int1,'-.g', 'LineWidth', 2.5);
    hold on;
    plot(x1, int, 'dr')
    hold on;
    
    plot(x, y, '-or');
    % Пользовательский ввод названия осей и графика
    label_x = inputdlg({'Введите название оси x'});
    xlabel(label_x);
    label_y = inputdlg({'Введите название оси y'});     
    ylabel(label_y');
    user_title = inputdlg({'Введите название графика функции'});
    title(user_title);
    legend('Интерполяционная кривая', 'Вычисленное значение интерполяции', 'Исходная функция')
    answer = menu('Для возвращения в меню нажмите на кнопку' , 'Вот сюда!');
    if answer == 1
        x = [];
        y = [];
        x1 = [];
        i = 1;
        close all
    end
else
    answer = menu('Ошибка в вводе данных. Попробуйте снова' , 'Ладно...');
    if answer == 1
        x = [];
        y = [];
        x1 = [];
        i = 1;
        close all
    end
end