user_answer_int = inputdlg({'Введите значение аргумента для расчета интерполяции'});
if iscell(user_answer_int)
    user_answer_int = cell2mat(user_answer_int);
    if isnan(str2double(user_answer_int))
        answer = menu('Вы ввели нечисловое значение аргумента' , 'Больше такого не повторится');
        if answer == 1
            user_answer_int = inputdlg({'Введите значение аргумента для расчета интерполяции'});
        end
    else
        x1 = str2double(user_answer_int);
    end
end