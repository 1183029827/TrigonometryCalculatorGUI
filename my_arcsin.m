function result_arcsin = my_arcsin(in_val, nth)
    % Check if input value is within the valid domain [-1, 1]
    if in_val < -1 || in_val > 1
        error('Input value must be within the domain [-1, 1]');
    end

    % Initialize the result variable
    result_arcsin = 0;

    % Compute the Taylor series expansion of arcsin
    for n = 0:nth
        % Compute the coefficient for the nth term
        coeff = factorial(2*n) / (2^(2*n) * factorial(n)^2 * (2*n + 1));
        
        % Compute the value of the nth term
        term = coeff * in_val^(2*n + 1);
        
        % Add the nth term to the result
        result_arcsin = result_arcsin + term;
    end
end