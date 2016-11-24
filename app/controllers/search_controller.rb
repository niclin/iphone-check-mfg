class SearchController < ApplicationController

  def index
    if params.has_key?(:imei)

      result = {}
      @bingo = false

      location = params[:imei][0]
      case location
      when 'C'
        result[:location] = "深圳"
      when 'D'
        result[:location] = "成都"
      when 'F'
        result[:location] = "鄭州"
      end

      year = params[:imei][3]
      case year
      when 'P'
        result[:year] = "2015年上半年"
      when 'Q'
        result[:year] = "2015年下半年"
      when 'R'
        result[:year] = "2016年上半年"
      when 'S'
        result[:year] = "2016年下半年"
      end

      week = params[:imei][4]
      case week
      when '1'
        result[:week] = ['0701','0707']
      when '2'
        result[:week] = ['0708','0714']
      when '3'
        result[:week] = ['0715','0721']
      when '4'
        result[:week] = ['0722','0728']
      when '5'
        result[:week] = ['0729','0804']
      when '6'
        result[:week] = ['0805','0811']
      when '7'
        result[:week] = ['0812','0818']
      when '8'
        result[:week] = ['0819','0825']
      when '9'
        result[:week] = ['0826','0901']
        @bingo = true
      when 'C'
        result[:week] = ['0902','0908']
        @bingo = true
      when 'D'
        result[:week] = ['0909','0915']
        @bingo = true
      when 'F'
        result[:week] = ['0916','0922']
        @bingo = true
      when 'G'
        result[:week] = ['0923','0929']
        @bingo = true
      when 'H'
        result[:week] = ['0930','1006']
        @bingo = true
      when 'J'
        result[:week] = ['1007','1013']
        @bingo = true
      when 'K'
        result[:week] = ['1014','1020']
        @bingo = true
      when 'L'
        result[:week] = ['1021','1027']
        @bingo = true
      when 'M'
        result[:week] = ['1028','1103']
        @bingo = true
      when 'N'
        result[:week] = ['1104','1110']
      when 'P'
        result[:week] = ['1111','1117']
      when 'Q'
        result[:week] = ['1118','1124']
      when 'R'
        result[:week] = ['1125','1201']
      when 'T'
        result[:week] = ['1202','1208']
      when 'V'
        result[:week] = ['1209','1215']
      when 'W'
        result[:week] = ['1216','1222']
      when 'X'
        result[:week] = ['1223','1229']
      when 'Y'
        result[:week] = ['1230','1231']
      end

      @location = result[:location]

      if year == "Q" and @bingo = true
        @bingo = true
      else
        @bingo = false
      end

      @day_begin = Date.parse(result[:year][0..3] + result[:week][0])
      @day_end = Date.parse(result[:year][0..3] + result[:week][1])

    end
  end

end
