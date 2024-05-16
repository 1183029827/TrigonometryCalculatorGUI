
%% arctan 计算器
% @输入参数：
% in_val 需要计算 arctan 值的数，为(-inf, inf)内的实数
% nth 泰勒展开级数
% @返回参数：
% result_arctan 返回的 arctan 值

function [result_arctan] = my_arctan(in_val, nth)
    
    temp_nth = nth;
    
    if(~isreal(in_val))
        disp("输入计算值错误，请输入(-inf, inf)内的实数");
        result_arctan = 0;
        return;
    end
    
    % 判断x是否在收敛域以内，若在收敛域以内，正常泰勒展开
    if( in_val >= -1 && in_val <= 1)
        negation = 1;% 取反标志
        index = in_val;% 输入指数
        Denominator = 1;% 泰勒展开项分母
        result_arctan = in_val;
        while(temp_nth > 0)
            % 分母规律：1 + 2*n
            Denominator = Denominator + 2;   
            % 分子规律: 每次多 in_val 的平方
            index = index * in_val * in_val;     
            % 每次增加新项时取反
            negation = -negation;         
            % 求和
            sum = index / Denominator * negation;        
            result_arctan = sum + result_arctan;
            temp_nth =  temp_nth - 1;
        end
        
     % 若不在收敛域以内，通过
     % arctan(x) + arctan(1/x) = pi/2 求解
    elseif(in_val < -1 || in_val > 1)   
        
        in_val = 1 / in_val;                                            
        negation = 1;
        index = in_val;   
        Denominator = 1;
        result_arctan = in_val;
        
        while(temp_nth > 0)
            Denominator = Denominator + 2;               
            index = index * in_val * in_val;             
            negation = -negation;                        
            sum = index / Denominator * negation;        
            result_arctan = sum + result_arctan;
            temp_nth =  temp_nth - 1;
        end
        
        if(in_val > 0)
            result_arctan = pi/2 - result_arctan;
        elseif(in_val < 0)
            result_arctan = -pi/2 - result_arctan;
        end
        
    else
        disp("输入计算值错误，请输入(-inf, inf)内的实数");
    end
end