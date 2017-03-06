function [out]= logo(T,in)
	for k = 1: 3
		x=0;
		y=0;
		pr=0;
		for i = 1:500
			for j = 1:1000
				if(T(i,j,k)==255)
					if(pr==i)
						y=y+1;
						A(x,y,k)=in(i,j,k);
					end
					if(~(pr==i))
						x=x+1;
						y=1;
						pr=i;
						A(x,y,k)=in(i,j,k);
					end
				end
			end
		end
	end
	out=A;
end
