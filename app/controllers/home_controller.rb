class HomeController < ApplicationController

def index 
    @option=params[:kind]
	end

  def search
    
  end

	
    def gender
       colors=['#F7464A','#46BFBD']
       @data=[] 
       Paxdata.data_count2.each_with_index do|d,idx|
       @data<<[d[:name],d[:count]]
     end

       colors=['#F7464A','#46BFBD']
       @data1=[] 
       Paxdata.data_count21.each_with_index do|d,idx|
       @data1<<[d[:name],d[:count]]
   end
    end
    
	def age
       @data=[] 
       Paxdata.data_count3.each_with_index do|d,idx|
       @data<<[d[:count]]
     end
       @data2=[] 
       Paxdata.data_count4.each_with_index do|d,idx|
       @data2<<[d[:count]]
     end
       @data3=[] 
       Paxdata.data_count5.each_with_index do|d,idx|
       @data3<<[d[:count]]
     end
       @data4=[] 
       Paxdata.data_count6.each_with_index do|d,idx|
       @data4<<[d[:count]]
     end
       @data5=[] 
       Paxdata.data_count7.each_with_index do|d,idx|
       @data5<<[d[:count]]
     end
       @data6=[] 
       Paxdata.data_count31.each_with_index do|d,idx|
       @data6<<[d[:count]]
     end
       @data7=[] 
       Paxdata.data_count41.each_with_index do|d,idx|
       @data7<<[d[:count]]
     end
       @data8=[] 
       Paxdata.data_count51.each_with_index do|d,idx|
       @data8<<[d[:count]]
     end
       @data9=[] 
       Paxdata.data_count61.each_with_index do|d,idx|
       @data9<<[d[:count]]
     end
       @data10=[] 
       Paxdata.data_count71.each_with_index do|d,idx|
       @data10<<[d[:count]]
     end
	end
	def age_n
       
	end

	def type
       colors=['#F7464A','#46BFBD','#FDB45C','#FDB42C','#FDB41C','#FDB35C']
       @data=[] 
       Paxdata.data_count.each_with_index do|d,idx|
       @data<<[d[:name],d[:count]] 
   end
       colors=['#F7464A','#46BFBD','#FDB45C','#FDB42C','#FDB41C','#FDB35C']
       @data1=[] 
       Paxdata.data_count1.each_with_index do|d,idx|
       @data1<<[d[:name],d[:count]] 
   end
	end
	def type_n
       
   
	end
  def test

  end

end