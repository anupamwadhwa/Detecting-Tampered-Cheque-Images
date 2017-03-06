function [name,digit,amount]= fieldex(i,in)
	a=int2str(i);
	a1='n.tif';
	a2='d.tif';
	a3='a.tif';

	s=strcat(a,a1);
	T=imread(s);
	name=fieldextraction(T,in);

	s=strcat(a,a2);
	T=imread(s);
	digit=fieldextraction(T,in);

	s=strcat(a,a3);
	T=imread(s);
	amount=fieldextraction(T,in);

end