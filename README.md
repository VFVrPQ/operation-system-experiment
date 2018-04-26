# operation-system-experiment

---

在`workplace`目录下创建了`Makefile`文件，这样就可以直接在`workplace`下直接`make`运行qemu,直接使用`diff`产生patch.内容如下:

```makefile
DIR=proj2-revise
all:
	cd $(DIR) && make qemu
	
clean:
	cd $(DIR) && make clean
	
diff:clean
	diff -uNr  proj2-base  $(DIR) > 081520122.proj2.patch; [ $$? -eq 1 ]
```