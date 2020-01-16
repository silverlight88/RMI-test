clear all
load firmSpecific
load firmList
[a b c] = size(firmSpecific);
firmSpecific_extra = zeros(a,b+2,c);
for i = 1 : a
    for j = 1: b 
        for k = 1 : c
            firmSpecific_extra(i,j,k) = firmSpecific(i,j,k);
        end
    end
end
for k = 1:c
    number = 0;
    total = 0;
    if firmList(k,2) == 10008
        for i = 1:a
            firmSpecific_extra(i,14,k) = NaN;
        
            if(~isnan(firmSpecific(i,6,k)))
                total = total + firmSpecific(i,6,k);
                number = number + 1;
            end
        end
        count = total/number;
        for i = 1:a
            firmSpecific_extra(i,13,k) = count;
        end
    else 
        for i = 1:a
            firmSpecific_extra(i,13,k) = NaN;
            
            if(~isnan(firmSpecific(i,6,k)))
                total = total + firmSpecific(i,6,k);
                number = number + 1;
            end
        end
        count = total/number;
        for i = 1:a
            firmSpecific_extra(i,14,k) = count;
        end
        
    end
end
