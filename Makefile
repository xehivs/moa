all:
	javac -cp moa.jar *.java
clean:
	cp lib/moa.jar ./
#	find moa -name .DS_Store | xargs rm
install: clean all
	mv EvaluatePrequentialActive.class moa/tasks/
	zip -r moa.jar moa
test: install
	java -Xmx4G -cp moa.jar -javaagent:sizeofag.jar moa.gui.GUI
experiments:
	./experiment.sh
