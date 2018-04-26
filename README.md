# operation-system-experiment

---

在`workplace`目录下创建了Makefile文件，这样就可以直接在`workplace`下直接`make`运行qemu.内容如下:

```makefile
DIR=proj2-revise
all:
	cd $(DIR) && make qemu
	
clean:
	cd $(DIR) && make clean
	
diff:
	diff -uNr  proj2-base  $(DIR) > 081520122.proj2.patch
```