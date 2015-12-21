class Paxdata < ActiveRecord::Base
	
	self.table_name = "a05b01_paxdata"

   def self.data_count 
      query = <<-SQL 
      select count(a05b01_paxdata.Pax_No) paxcount , a03a3_group.Tour_Type
       from(select Tour_Code,count(Order_No),Pax_No from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0
        group by Pax_No having count(Order_No)>3 limit 2000) a05b01_paxdata,a03a3_group where a05b01_paxdata.Tour_Code = a03a3_group.Tour_Code 
        group by a03a3_group.Tour_Type limit 2000; 
      SQL

      data=Paxdata.find_by_sql(query)#.pluck("Service_id") 
      data.map{|d| {name:d.Tour_Type.strip,count:d.paxcount}} 
  end
  def self.data_count1 
      query = <<-SQL 
      select count(paxdata.Pax_No) paxcount , a03a3_group.Tour_Type from 
      (select * from a05b01_paxdata limit 1000) as paxdata ,a03a3_group 
      where paxdata.Tour_Code = a03a3_group.Tour_Code 
      group by a03a3_group.Tour_Type limit 2000;
      SQL

      data=Paxdata.find_by_sql(query)#.pluck("Service_id") 
      data.map{|d| {name:d.Tour_Type.strip,count:d.paxcount}} 
  end
   def self.data_count2
   	query = <<-SQL
       select count(Pax_Gender) paxcount ,Pax_Gender 
       from(select count(Order_No),Pax_Gender,Pax_No 
        from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0
        group by Pax_No having count(Order_No)>6) a05b01_paxdata 
        where Pax_No>0 group by Pax_Gender ;
       SQL
      data=Paxdata.find_by_sql(query)#.pluck("Service_id") 
      data.map{|d| {name:d.Pax_Gender.strip,count:d.paxcount}} 
   end
   def self.data_count21
    query = <<-SQL
       select count(Pax_Gender) paxcount ,Pax_Gender 
       from a05b01_paxdata 
        where Pax_No>0 group by Pax_Gender ;
       SQL
      data=Paxdata.find_by_sql(query)#.pluck("Service_id") 
      data.map{|d| {name:d.Pax_Gender.strip,count:d.paxcount}} 
   end
   def self.data_count3 #0~20
    query = <<-SQL
    select count(Pax_Age) paxcount , Pax_Age from 
    (select count(Order_No),Pax_Age,Pax_No from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0 group by Pax_No having count(Order_No)>3 limit 5000)
    a05b01_paxdata where Pax_Age between "0"and"20" and Pax_No>0 limit 5000
    ; 
    SQL
    data=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data.map{|d| {count:d.paxcount}} 
  end
  def self.data_count4
    query = <<-SQL #20~40
    select count(Pax_Age) paxcount , Pax_Age from 
    (select count(Order_No),Pax_Age,Pax_No from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0 group by Pax_No having count(Order_No)>3 limit 5000)
    a05b01_paxdata where Pax_Age between "20"and"40" and Pax_No>0  limit 5000 
    ; 
    SQL
    data2=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data2.map{|d| {count:d.paxcount}} 
  end
 def self.data_count5
    query = <<-SQL #40~60
    select count(Pax_Age) paxcount , Pax_Age from 
    (select count(Order_No),Pax_Age,Pax_No from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0 group by Pax_No having count(Order_No)>3 limit 5000)
    a05b01_paxdata where Pax_Age between "40"and"60" and Pax_No>0  limit 5000 ; 
    SQL
    data3=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data3.map{|d| {count:d.paxcount}} 
  end
  def self.data_count6
    query = <<-SQL #60~80
    select count(Pax_Age) paxcount , Pax_Age from 
    (select count(Order_No),Pax_Age,Pax_No from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0 group by Pax_No having count(Order_No)>3 limit 5000)
    a05b01_paxdata where Pax_Age between "60"and"80" and Pax_No>0  limit 5000 ; 
    SQL
    data4=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data4.map{|d| {count:d.paxcount}} 
  end
  def self.data_count7
    query = <<-SQL #80~100
    select count(Pax_Age) paxcount , Pax_Age from 
    (select count(Order_No),Pax_Age,Pax_No from a05b01_paxdata where Pax_No>0 and Cancel_Mark=0 group by Pax_No having count(Order_No)>3 limit 5000)
    a05b01_paxdata where Pax_Age between "80"and"100" and Pax_No>0  limit 5000 ; 
    SQL
    data5=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data5.map{|d| {count:d.paxcount}} 
  end

  def self.data_count31 #0~20
    query = <<-SQL
    select count(Pax_Age) paxcount , Pax_Age from 
    a05b01_paxdata where Pax_Age between "0"and"20" and Pax_No>0  ;
    ; 
    SQL
    data=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data.map{|d| {count:d.paxcount}} 
  end
  def self.data_count41
    query = <<-SQL #20~40
    select count(Pax_Age) paxcount , Pax_Age from 
    a05b01_paxdata where Pax_Age between "20"and"40" and Pax_No>0   ;
    ; 
    SQL
    data2=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data2.map{|d| {count:d.paxcount}} 
  end
 def self.data_count51
    query = <<-SQL #40~60
    select count(Pax_Age) paxcount , Pax_Age from 
    a05b01_paxdata where Pax_Age between "40"and"60" and Pax_No>0   ; 
    SQL
    data3=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data3.map{|d| {count:d.paxcount}} 
  end
  def self.data_count61
    query = <<-SQL #60~80
    select count(Pax_Age) paxcount , Pax_Age from 
    a05b01_paxdata where Pax_Age between "60"and"80" and Pax_No>0   ; 
    SQL
    data4=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data4.map{|d| {count:d.paxcount}} 
  end
  def self.data_count71
    query = <<-SQL #80~100
    select count(Pax_Age) paxcount , Pax_Age from 
    a05b01_paxdata where Pax_Age between "80"and"100" and Pax_No>0   ; 
    SQL
    data5=Paxdata.find_by_sql(query)#.pluck("Service_id") 
    data5.map{|d| {count:d.paxcount}} 
  end

end