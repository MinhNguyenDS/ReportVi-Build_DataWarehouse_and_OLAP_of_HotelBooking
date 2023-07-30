alter table Fact 
add constraint fk_F_HT 
foreign key (id_hotel) references [dbo].[Dim-Hotel-Type] (id_hotel_type); 
alter table Fact 
add constraint fk_F_RS 
foreign key (id_reservation_status) references [dbo].[Dim-Reservation-Status] (id_reservation_status); 
alter table Fact 
add constraint fk_F_MK 
foreign key (id_market_segment) references  [dbo].[Dim-Market-Segment] (id_market_segment); 
alter table Fact 
add constraint fk_F_DC 
foreign key (id_distribution_channel) references [dbo].[Dim-Distribution-Channel] (id_distribution_channel); 
alter table Fact 
add constraint fk_F_DT 															  ádasdas
foreign key (id_deposit_type) references [dbo]. [Dim-Deposit-Type] (id_deposit_type); 
alter table Fact 
add constraint fk_F_C 
foreign key (id_customer) references [dbo].[Dim-Cus tomer]  (id_customer); 
alter table [dbo].[Dim-Customer]
add constraint fk_C_CT 
foreign key (id_customer_type) references [dbo].[Dim-Customer-Type] (id_customer_type); 
alter table [dbo].[Dim-Customer]
add constraint fk_C_C 
foreign key (id_country) references [dbo].[Dim-Country] (id_country); 
alter table Fact 
add constraint fk_F_AT 
foreign key (id_arrival_time) references [dbo]. [Dim-Arrival-Time] (id_arrival_time);
alter table Fact
add constraint fk_F_RT
foreign key (id_reservation_date) references [dbo].[Dim-Reservation-Time] (id_reservation_time);
alter table [dbo].[Dim-Arrival-Time]
add constraint fk_AT_Y
foreign key (id_arrival_year) references [dbo].[Dim-Year] (id_year);
alter table [dbo].[Dim-Reservation-Time]
add constraint fk_RT_Y
foreign key (id_reservation_year) references [dbo].[Dim-Year] (id_year);
alter table [dbo].[Dim-Arrival-Time]
add constraint fk_AT_M
foreign key (id_arrival_month_number) references [dbo].[Dim-Month] (id_month_number);
alter table [dbo].[Dim-Reservation-Time]
add constraint fk_RT_M
foreign key (id_reservation_month_number) references [dbo].[Dim-Month] (id_month_number);
alter table [dbo].[Dim-Arrival-Time]
add constraint fk_AT_Q
foreign key (id_arrival_quarter) references [dbo].[Dim-Quarter] (id_quarter);
alter table [dbo].[Dim-Reservation-Time]
add constraint fk_RT_Q
foreign key (id_reservation_quarter) references [dbo].[Dim-Quarter] (id_quarter);
alter table [dbo].[Dim-Arrival-Time]
add constraint fk_AT_D
foreign key (id_arrival_day) references [dbo].[Dim-Day] (id_day);
alter table [dbo].[Dim-Reservation-Time]
add constraint fk_RT_D
foreign key (id_reservation_day) references [dbo].[Dim-Day] (id_day);