load pfInfo

xlswrite('companylist.csv',pfInfo.firmList(:,1));

List = pfInfo.firmList;
xlswrite('Companylist_Financial.csv' , List((List(:,7) == 10008),:));
xlswrite('Companylist_Basic_Material.csv' , List((List(:,7) == 10002),:));
xlswrite('Companylist_Communications.csv' , List((List(:,7) == 10003),:));
xlswrite('Companylist_Consumer_cyclical.csv' , List((List(:,7) == 10004),:));
xlswrite('Companylist_noncyclical.csv' , List((List(:,7) == 10005),:));
xlswrite('Companylist_Diversified.csv' , List((List(:,7) == 10006),:));
xlswrite('Companylist_Energy.csv' , List((List(:,7) == 10007),:));
xlswrite('Companylist_Industrial.csv' , List((List(:,7) == 10011),:));
xlswrite('Companylist_Technology.csv' , List((List(:,7) == 10013),:));
xlswrite('Companylist_Utilities.csv' , List((List(:,7) == 10014),:));

