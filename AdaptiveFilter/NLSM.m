function [y_sig,e_sig,h] = NLSM(x_sig,d_sig, alpha,N)
%NLSM Summary of this function goes here
%   Detailed explanation goes here
    L= length(x_sig);
    h=zeros(N,1);

    y_sig=zeros(size(x_sig));
    x_sig=[zeros(N-1,1); x_sig];

    for n=1:L-N
        x=x_sig(n:n+N-1);
        x=flipud(x);
        d=d_sig(n);
        y=h'*x;
        e=d-y;
        h=h+alpha*x*e/(x'*x);
        y_sig(n)=y;
    end 
    e_sig=d_sig-y_sig;
end

