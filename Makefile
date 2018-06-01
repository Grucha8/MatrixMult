all:
	echo ===========zad1==============
	make -C ex1 test
	ex1/test
	echo ===========zad2.1=============
	make -C ex2/ad1 test
	ex2/ad1/test
	echo ===========zad2.2=============
	make -C ex2/ad2 test
	ex2/ad2/test
	echo ===========zad2.3=============
	make -C ex2/ad3 test
	ex2/ad3/test

clean:
	make -C ex1
	make -C ex2/ad1
	make -C ex2/ad2
	make -C ex2/ad3
