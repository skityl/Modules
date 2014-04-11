COMP = pdflatex
READ = evince
NUM = 1

ass$(NUM).pdf: ass$(NUM).tex
	$(COMP) $<
	
read: ass$(NUM).pdf
	$(READ) $<
	
clean:
	rm -f *~ *.log *.aux
	
tea:
	@echo "Make it yourself."
