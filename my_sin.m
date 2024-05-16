function result_sin = my_sin(in_rad, nth)
% in_rad: 输入的角度（弧度）
% nth: 泰勒级数展开的项数
result_sin = 0;
term = in_rad;
for i = 1:nth
    result_sin = result_sin + term;
    term = -term * in_rad^2 / ((2*i)*(2*i+1));
end

end
