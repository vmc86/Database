﻿USE [Sklad]

DELETE Sale WHERE ProductId = '1';
DELETE Sale WHERE Quantity = 3;
DELETE Sale WHERE DateSale > '2019.09.25' AND ManagerId = 3;
