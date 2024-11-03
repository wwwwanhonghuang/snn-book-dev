BOOK_FILENAME=snn-book
pdf:
	pdflatex ${BOOK_FILENAME}.tex
	makeindex ${BOOK_FILENAME}.idx -s StyleInd.ist
	biber ${BOOK_FILENAME}
	pdflatex ${BOOK_FILENAME} x 2
clean:
	rm ${BOOK_FILENAME}.log
	rm ${BOOK_FILENAME}.aux
	rm ${BOOK_FILENAME}.toc
	 
