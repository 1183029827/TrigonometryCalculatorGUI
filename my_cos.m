function result_cos = my_cos(in_rad, nth)

% 输入参数：
% in_rad: 输入的角度（弧度）
% nth: 泰勒级数展开的项数

result_cos = 0;
term = 1;
for i = 0:nth
    result_cos = result_cos + term;
    term = -term * in_rad^2 / ((2*i+1)*(2*i+2));
end

end