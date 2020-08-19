alter database "G:\net\bookshop\BookShop\BookShopUI\App_Data\mydb.mdf" set single_user with rollback immediate ;
go

alter database "G:\net\bookshop\BookShop\BookShopUI\App_Data\mydb.mdf" collate Chinese_PRC_CI_AS ;
go

alter database "G:\net\bookshop\BookShop\BookShopUI\App_Data\mydb.mdf" set multi_user;
Go
