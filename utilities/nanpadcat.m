function c=nanpadcat(a,b,d)

%Performs horzcat on matrices that might have different lengths by filling
%the empty places with NaNs.
%  20120313 adjusted to do either horz- and vertcat, using a third variable
%  the dimension. Dimension can be 'v' or 'h'.


% % for testing--------------------
% clear
% clc
% b=magic(7)'
% a=zeros(3,5)
% d='h';
% % end testing--------------------


sa=size(a);
sb=size(b);

ds1=sa(1)-sb(1);
ds2=sa(2)-sb(2);


if d=='h'
    pad=nan(abs(ds1), 1);
    
    if ds1<0
        pad=repmat(pad, 1, sa(2));
        a=vertcat(a, pad);
    elseif ds1>0
        pad=repmat(pad, 1, sb(2));
        b=vertcat(b, pad);
    else
    end
    
    c=horzcat(a, b);
    
elseif d=='v'
    pad=nan( 1, abs(ds2));
    
    if ds2<0
        pad=repmat(pad, sa(1), 1);
        a=horzcat(a, pad);
    elseif ds2>0
        pad=repmat(pad,  sb(1), 1);
        b=horzcat(b, pad);
    else
    end
    c=vertcat(a, b);
    
end