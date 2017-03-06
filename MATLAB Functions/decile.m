function [v] = decade (in,i)
	r=in(:,:,1);
	g=in(:,:,2);
	b=in(:,:,3);
	v1=histcounts(r,10);
	v2=histcounts(g,10);
	v3=histcounts(b,10);
	v=[v1;v2;v3];
	v(:,1)=0;
	str = int2str(i);
	s = '.txt';
	s=strcat(str,s);
	V=importdata(s);
	v=abs(V-v);
end
