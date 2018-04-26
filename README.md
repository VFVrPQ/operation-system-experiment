# operation-system-experiment

---

在`workplace`目录下创建了`Makefile`文件，提供了一条龙服务。主要是下列三点：
1. 创建。使用`make wget`可完成下载，解压并复制的功能。
2. 编译并运行qemu。使用`make`或者`make all`可以编译运行qemu。
3. 生成patch文件。使用`make diff`.自动clean`proj2-revise`并生成patch。
只需要修改`PROJ`和`ID`即可完成。

```Makefile
PROJ=proj2
ID=081520122

DIR=$(PROJ)-revise

all:
	cd $(DIR) && make qemu

wget:
	wget http://xzhu.info/os/$(PROJ)-base.zip && \
	unzip $(PROJ)-base && \
	cp -R $(PROJ)-base $(PROJ)-revise
	
clean:
	cd $(DIR) && make clean
	
diff:clean
	diff -uNr  $(PROJ)-base  $(DIR) > $(ID).$(PROJ).patch; [ $$? -eq 1 ]
```