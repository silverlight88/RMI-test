clear all
% load firmSpecific
% load firmList
load dtd_mle_2000
[row col] = size(firmDtd);
dtd_mle_2000_monthly = [];
k = 1;
for i = 1:row
    data = firmDtd(i,2);
    day = mod(data,100);
    month = (mod(data,1000) - day)/100;
    year = fix(data/10000);
    if i == row
        dtd_mle_2000_monthly(k,1) = year * 100 + month;
        j = i;
        while(1)
            if(~isnan(firmDtd(j,3)))
                dtd_mle_2000_monthly(k,2) = firmDtd(j,3);
                break;
            end
            if(j == 0)
                dtd_mle_2000_monthly(k,2) = NaN;
                break;
            end
            j = j - 1;
        end
        return;
    end
    data_next = firmDtd(i+1,2);
    day_next = mod(data_next,100);
    month_next = (mod(data_next,1000) - day_next)/100;
    year_next = fix(data_next/10000);
    if month ~= month_next
        dtd_mle_2000_monthly(k,1) = year * 100 + month;
        k = k + 1;
        j = i;
        while(1)
            if(j == 0)
                dtd_mle_2000_monthly(k-1,2) = NaN;
                break;
            end
            if(~isnan(firmDtd(j,3)))
                dtd_mle_2000_monthly(k-1,2) = firmDtd(j,3);
                break;
            end
            j = j - 1;
        end
    end
end
save ('dtd_mle_2000_monthly.dat',dtd_mle_2000_monthly);