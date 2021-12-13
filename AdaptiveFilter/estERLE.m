function [ERLE] = estERLE(d,e,L)
%estERLE estimates the echo return loss enhancement
%   Detailed explanation goes here
ERLE=zeros(length(d),1);
for n=1:length(d)-L
    d_vec=d(n:n+L-1);
    e_vec=e(n:n+L-1);

    ERLE(n) = 10*log10(d_vec.' * d_vec/(e_vec.' * e_vec));
end

