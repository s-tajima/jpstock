# coding: utf-8
require 'date'

module JpStock
  
  # 株価データ
  class PriceData
    attr_accessor :date, :open, :high, :low, :close, :volume
    
    def initialize(date, open, high, low, close, volume, adj_close)
      @date = to_date(date)
      @open = to_int(open)
      @high = to_int(high)
      @low = to_int(low)
      @close = to_int(close)
      @volume = to_int(volume)
      @adj_close = to_int(adj_close)
      adjust()
    end
    
    private 
    def adjust()
      rate = @close / @adj_close
      if rate > 1
          @open /= rate
          @high /= rate
          @low /= rate
          @close /= rate
          @volume *= rate
      end
    end
    
    def to_date(val)
      if val.instance_of?(Date)
        return val
      end
      begin
        return Date.strptime(val, '%Y年%m月%d日')
      rescue
        return Date.strptime(val, '%Y年%m月')
      end
    end
    
    def to_int(val)
      if val.instance_of?(String)
        val.gsub!(',', '')
      end
      return val.to_i
    end
    
  end
  
end