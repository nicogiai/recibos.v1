require 'csv'
require 'rubygems'
require 'pp'
require 'date'

namespace :populate_db_from_csv do

	task :cliente_task => :environment do |task, args|

		CSV.open("#{Rails.root}/db/csv/BDClientes.csv", "r:ISO-8859-15:UTF-8", {:col_sep => ";", :headers => :first_row}) do |csv|
			csv.each do |row|

				the_date = Date.parse(row['fecha inicio']) if row['fecha inicio'].to_s.strip.length > 0				
				las_notas = "Domicilio_Rentas='#{row['Domicilio Rentas']}' ; Cat_MT='#{row['Cat MT']}' ; AFIP1='#{row['ACT.AFIP 1']}' ; AFIP2='#{row['ACT.AFIP 2']}' ; CBU1='#{row['CBU1']}'; CUITBCO1='#{row['CUIT BCO1']}'; CBU2='#{row['CBU2']}'; CUITBCO2='#{row['CUIT BCO2']}'"

				#puts "Cliente: #{row['Cliente']} notas: #{las_notas}"
				Cliente.create!( \
					:cliente => row['Cliente'], \
					:cuit => row['CUIT'], \
					:clave_fiscal => row['Clave Fiscal'], \
					:clave_muni => row['Clave Muni'], \
					:iibb_cm => row['IIBB / CM'], \
					:fecha_inicio => the_date, \
					:notas => las_notas, \
					:cant_adherentes => 0 \
					) if row['Cliente'].to_s.strip.length > 0
			end	
		end

		#csv_text = File.read("#{Rails.root}/db/csv/BDClientes.csv")
		#csv = CSV.parse(csv_text, :headers => true, :quote_char => '"', encoding: "UTF-8")

		#FasterCSV.foreach("data.csv", :quote_char => '"', :col_sep =>';', :row_sep =>:auto) do |row|
		#  puts row[0]
		#end

		#CSV.open('#{Rails.root}/db/csv/BDClientes.csv', 'r', ';') do |row|
			#CSV.parse(row, {:col_sep => ';', :quote_char => '"' })
		#	pp row
		#end	  	

	end

	task :afip_task => :environment do |task, args|

	  	File.open("#{Rails.root}/db/csv/afip_acts.csv") do |actividades|
	  		actividades.read.each_line do |actividad|
	  			codigo, nombre = actividad.chomp.split(",")
	  			nombre.gsub!(/\A"|"\Z/,'')
	  			AfipAct.create!(:id => codigo, :actividad => nombre)
	  		end
	  	end
	end

end