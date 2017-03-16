function [N,D,A] =  chequedetect (in)
	minv=100000000000;
	minindex=0;
	for x = 1:4
		a=int2str(x);
		a1='.tif';
		a=strcat(a,a1);
		T=imread(a);
		t=logo(T,in);
		d=decile(t,x);
		s(1)=0;s(2)=0;s(3)=0;
		total=0;
		for i = 1:3
			temp=0;
			for j= 1:10
				temp = temp + d(i,j);
				temp = temp/10;
			end
			for j= 1:10
				s(i)=s(i)+(d(i,j)-temp).^2;
			end
			s(i)=s(i)/10;
			s(i)=s(i).^(0.5);
			if(~(temp==0)) s(i)=s(i)/temp;
			end
		end
		total=s(1)+s(2)+s(3);
		if(minv>total)
			minv=total;
			minindex=x;
		end
	end
	[N,D,A]=fieldex(minindex,in);
end
