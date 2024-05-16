function GUI_control()
    % 创建图形窗口和控件
    fig = figure('Name', 'Trigonometric Calculator', 'Position', [100, 100, 600, 400]);
    
    % 输入项数的文本和编辑框
    uicontrol('Style', 'text', 'String', 'Terms for Taylor Series:', 'Position', [20, 350, 150, 20]);
    term_edit = uicontrol('Style', 'edit', 'Position', [180, 350, 50, 20]);
    
    % sin 输入和输出文本和编辑框
    uicontrol('Style', 'text', 'String', 'sin Input (radians):', 'Position', [20, 300, 150, 20]);
    sin_input_edit = uicontrol('Style', 'edit', 'Position', [180, 300, 100, 20]);
    uicontrol('Style', 'text', 'String', 'sin Output:', 'Position', [300, 300, 100, 20]);
    sin_output_text = uicontrol('Style', 'text', 'String', '', 'Position', [400, 300, 100, 20]);
    % sin 计算按钮和清零按钮
    sin_calculate_btn = uicontrol('Style', 'pushbutton', 'String', 'Calculate', 'Position', [20, 270, 100, 20], 'Callback', @sin_calculate_callback);
    sin_clear_btn = uicontrol('Style', 'pushbutton', 'String', 'Clear', 'Position', [130, 270, 100, 20], 'Callback', @sin_clear_callback);

    % cos 输入和输出文本和编辑框
    uicontrol('Style', 'text', 'String', 'cos Input (radians):', 'Position', [20, 250, 150, 20]);
    cos_input_edit = uicontrol('Style', 'edit', 'Position', [180, 250, 100, 20]);
    uicontrol('Style', 'text', 'String', 'cos Output:', 'Position', [300, 250, 100, 20]);
    cos_output_text = uicontrol('Style', 'text', 'String', '', 'Position', [400, 250, 100, 20]);
    % cos 计算按钮和清零按钮
    cos_calculate_btn = uicontrol('Style', 'pushbutton', 'String', 'Calculate', 'Position', [20, 220, 100, 20], 'Callback', @cos_calculate_callback);
    cos_clear_btn = uicontrol('Style', 'pushbutton', 'String', 'Clear', 'Position', [130, 220, 100, 20], 'Callback', @cos_clear_callback);

    % arcsin 输入和输出文本和编辑框
    uicontrol('Style', 'text', 'String', 'arcsin Input:', 'Position', [20, 200, 150, 20]);
    arcsin_input_edit = uicontrol('Style', 'edit', 'Position', [180, 200, 100, 20]);
    uicontrol('Style', 'text', 'String', 'arcsin Output:', 'Position', [300, 200, 100, 20]);
    arcsin_output_text = uicontrol('Style', 'text', 'String', '', 'Position', [400, 200, 100, 20]);
    % arcsin 计算按钮和清零按钮
    arcsin_calculate_btn = uicontrol('Style', 'pushbutton', 'String', 'Calculate', 'Position', [20, 170, 100, 20], 'Callback', @arcsin_calculate_callback);
    arcsin_clear_btn = uicontrol('Style', 'pushbutton', 'String', 'Clear', 'Position', [130, 170, 100, 20], 'Callback', @arcsin_clear_callback);

    % arctan 输入和输出文本和编辑框
    uicontrol('Style', 'text', 'String', 'arctan Input:', 'Position', [20, 150, 150, 20]);
    arctan_input_edit = uicontrol('Style', 'edit', 'Position', [180, 150, 100, 20]);
    uicontrol('Style', 'text', 'String', 'arctan Output:', 'Position', [300, 150, 100, 20]);
    arctan_output_text = uicontrol('Style', 'text', 'String', '', 'Position', [400, 150, 100, 20]);
    % arctan 计算按钮和清零按钮
    arctan_calculate_btn = uicontrol('Style', 'pushbutton', 'String', 'Calculate', 'Position', [20, 120, 100, 20], 'Callback', @arctan_calculate_callback);
    arctan_clear_btn = uicontrol('Style', 'pushbutton', 'String', 'Clear', 'Position', [130, 120, 100, 20], 'Callback', @arctan_clear_callback);

    % 计算按钮回调函数
    function sin_calculate_callback(~, ~)
        % 获取输入的项数
        nth = str2double(get(term_edit, 'String'));
        % 计算 sin
        sin_input = str2double(get(sin_input_edit, 'String'));
        result_sin = my_sin(sin_input, nth);
        set(sin_output_text, 'String', num2str(result_sin));
    end

    function cos_calculate_callback(~, ~)
        % 获取输入的项数
        nth = str2double(get(term_edit, 'String'));
        % 计算 cos
        cos_input = str2double(get(cos_input_edit, 'String'));
        result_cos = my_cos(cos_input, nth);
        set(cos_output_text, 'String', num2str(result_cos));
    end

    function arcsin_calculate_callback(~, ~)
        % 获取输入的项数
        nth = str2double(get(term_edit, 'String'));
        % 计算 arcsin
        arcsin_input = str2double(get(arcsin_input_edit, 'String'));
        result_arcsin = my_arcsin(arcsin_input, nth);
        set(arcsin_output_text, 'String', num2str(result_arcsin));
    end

    function arctan_calculate_callback(~, ~)
        % 获取输入的项数
        nth = str2double(get(term_edit, 'String'));
        % 计算 arctan
        arctan_input = str2double(get(arctan_input_edit, 'String'));
        result_arctan = my_arctan(arctan_input, nth);
        set(arctan_output_text, 'String', num2str(result_arctan));
    end

    % 清零按钮回调函数
    function sin_clear_callback(~, ~)
        set(sin_input_edit, 'String', '');
        set(sin_output_text,  'String', '');
    end

    function cos_clear_callback(~, ~)
        set(cos_input_edit, 'String', '');
        set(cos_output_text, 'String', '');
    end

    function arcsin_clear_callback(~, ~)
        set(arcsin_input_edit, 'String', '');
        set(arcsin_output_text, 'String', '');
    end

    function arctan_clear_callback(~, ~)
        set(arctan_input_edit, 'String', '');
        set(arctan_output_text, 'String', '');
    end
end