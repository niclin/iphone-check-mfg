class SearchController < ApplicationController

  def index
    if params.has_key?(:imei)

      if params[:imei].length != 12
        render :text => "輸入錯誤的序號"
      else
        location = params[:imei][0]
        result = []

        case location
        when 'C'
          result << "深圳"
        when 'D'
          result << "成都"
        when 'F'
          result << "鄭州"
        end

        year = params[:imei][3]

        case year
        when 'P'
          result << "2015年上半年"
        when 'Q'
          result << "2015年下半年"
        when 'R'
          result << "2016年上半年"
        when 'S'
          result << "2016年下半年"
        end

        week = params[:imei][4]

        case week
        when '1'
          result << ['0701','0707']
        when '2'
          result << ['0708','0714']
        when '3'
          result << ['0715','0721']
        when '4'
          result << ['0722','0728']
        when '5'
          result << ['0729','0804']
        when '6'
          result << ['0805','0811']
        when '7'
          result << ['0812','0818']
        when '8'
          result << ['0819','0825']
        when '9'
          result << ['0826','0901']
        when 'C'
          result << ['0902','0908']
        when 'D'
          result << ['0909','0915']
        when 'F'
          result << ['0916','0922']
        when 'G'
          result << ['0923','0929']
        when 'H'
          result << ['0930','1006']
        when 'J'
          result << ['1007','1013']
        when 'K'
          result << ['1014','1020']
        when 'L'
          result << ['1021','1027']
        when 'M'
          result << ['1028','1103']
        when 'N'
          result << ['1104','1110']
        when 'P'
          result << ['1111','1117']
        when 'Q'
          result << ['1118','1124']
        when 'R'
          result << ['1125','1201']
        when 'T'
          result << ['1202','1208']
        when 'V'
          result << ['1209','1215']
        when 'W'
          result << ['1216','1222']
        when 'X'
          result << ['1223','1229']
        when 'Y'
          result << ['1230','1231']
        end

        @location = result[0]
        @day_begin = Date.parse(result[1][0..3] + result[2][0])
        @day_end = Date.parse(result[1][0..3] + result[2][1])

      end
    end
  end

end
