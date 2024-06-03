xelatex --shell-escape main.tex

# # 查找并删除临时文件
# find . -type f -name "*.aux" -o -name "*.bbl" -o -name "*.blg" -o -name "*.idx" -o -name "*.ind" -o -name "*.lof" -o -name "*.log" -o -name "*.out" -o -name "*.sync" -exec rm -rf {} +
