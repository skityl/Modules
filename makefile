COMP = pdflatex
READ = evince
NUM = 1

ass$(NUM).pdf: ass$(NUM).tex
	$(COMP) $<
	
read: ass$(NUM).pdf
	$(READ) $<
	
clean:
	rm -f *~ *.log *.aux
	
spell: ass$(NUM).tex
	ispell $<
	
class_update:
	cd ..;
	git submodule update --init --recursive;
	cp -r ../UNSW_Latex/artwork artwork;
	cp -r ../UNSW_Latex/unswmaths.cls unswmaths.cls
	
tea:
	@echo "Make it yourself."
