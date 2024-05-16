import matlab.engine
import tkinter as tk
# 启动 MATLAB 引擎
eng = matlab.engine.start_matlab()
# 调用MATLAB部分由宋纯豪同学实现

# GUI界面部分由王禹轩 王财成 彭万同学实现

# 创建 GUI 界面（王禹轩）
root = tk.Tk()
root.title("Trigonometric Function Calculator")
# 计算 arcsin 的部分（王禹轩）
arcsin_frame = tk.Frame(root)
arcsin_frame.pack()

input_label = tk.Label(arcsin_frame, text="Enter input value for arcsin:")
input_label.pack(side=tk.LEFT)
input_entry = tk.Entry(arcsin_frame)
input_entry.pack(side=tk.LEFT)

nth_label = tk.Label(arcsin_frame, text="Enter number of terms:")
nth_label.pack(side=tk.LEFT)
nth_entry = tk.Entry(arcsin_frame)
nth_entry.pack(side=tk.LEFT)

calculate_button_arcsin = tk.Button(root, text="Calculate arcsin", command=calculate_arcsin)
calculate_button_arcsin.pack()

result_label = tk.Label(root, text="")
result_label.pack()

# 计算 cos 的部分（王财成）


# 计算 sin 的部分（王财成）


# 计算 arctan 的部分（彭万）

# 关闭 MATLAB 引擎
eng.quit()
