user_answer = inputdlg({'Вводите по одному значения аргумента','Введите соответствующее значение функции'});
while isempty(user_answer) == false && length(x) ~= 100
    if iscell(user_answer)
        user_answer_x = cell2mat(user_answer(1));
        user_answer_y = cell2mat(user_answer(2));
        if isnan(str2double(user_answer_x)) || isnan(str2double(user_answer_y)) || contains(num2str(x), string(user_answer_x))
            answer = menu('Вы ввели неверное значение функции или аргумента' , 'Больше такого не повторится');
            if answer == 1
                user_answer = inputdlg({'Вводите по одному значения аргумента','Введите соответствующее значение функции'});
            end
        else
            x(i) = str2double(user_answer_x);
            y(i) = str2double(user_answer_y);
            i = i+1;
            user_answer = inputdlg({'Вводите по одному значения аргумента','Введите соответствующее значение функции'});
        end
    end
end