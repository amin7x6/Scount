# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#

["BULK", "PAILS", "DRUMS", "CASES(1Qtx12)", "CASES(5Qtx4)"].each do |n|
  Category.create(name: n)
end

puts "Category created!"

items_list = [
["","LITRES", "10W30 SN","BULK", "M-0201", 2000,0, 1],
["","LITRES", "5W30 SN","BULK", "M-0054", 50150, 38000, 1],
["","LITRES", "5W20 SN","BULK", "M-0058", 2006, 14000, 1],
["","LITRES", "15W40 CJ4","BULK", "M-0062", 12218, 2000, 1],
["","LITRES", "AW32 HYD","BULK", "M-0090", 1203, 2000, 1],
["","LITRES", "AW46 HYD","BULK", "M-0085", 3459, 3000, 1],
["","LITRES", "AW68 HYD","BULK", "M-0152", 584, 208, 1],
["","LITRES", "ATF DEX III","BULK", "M-0066", 2898, 300, 1],
["","LITRES", "80W90 GL5 GEAR","BULK", "M-0113", 1200, 650, 1],
["","LITRES", "TRACTOR OIL","BULK", "M-0205", 715, 500, 1],
["","LITRES", "5W30 FULL SYN","BULK", "M-0088", 1384, 100, 1],
["","LITRES", "5W20 FULL SYN","BULK", "M-0099", 1400, 500, 1],
["","LITRES", "0W20 FULL SYN","BULK", "M-0086", 3198, 500, 1],
["","LITRES", "5W40 FULL SYN","BULK", "M-0112", 773, 1800, 1],
["","LITRES", "ATF FULL SYN","BULK", "M-0087", 439, 1800, 1],
["","LITRES", "75W90 FULL SYN GEAR","BULK", "M-0206", 622, 1000, 1],
["","LITRES", "75W140 FULL SYN GEAR","BULK", "M-0207", 944, 1000, 1],

["0636173872009","DRUMS", "10W30 SN", "208/DRUM", "M-0200", 9776/208, 2100, 3],
["0636173872023","DRUMS", "5W30 SN", "208/DRUM", "M-0202", 9776/208, 5600, 3],
["0636173872016","DRUMS", "5W20 SN", "208/DRUM", "M-0057", 9568/208, 4000, 3],
["0636173872108","DRUMS", "15W40 CJ4", "208/DRUM", "M-0061", 4368/208, 2200, 3],
["0636173872115","DRUMS", "80W90 GL5 GEAR", "208/DRUM", "M-0091", 1040/208, 300, 3],
["0636173872078","DRUMS", "AW32 HYD", "208/DRUM", "M-0078", 43680/208, 1000, 3],
["0636173872085","DRUMS", "AW46 HYD", "208/DRUM", "M-0089", 43680/208,624, 3],
["0636173872214","DRUMS", "20W50", "208/DRUM", "M-0092", 43680/208,208, 3],
["0636173872122","DRUMS", "ATF DEX III", "208/DRUM", "M-0065",624/208,832, 3],
["0636173872092","DRUMS", "TRACTOR OIL", "208/DRUM", "M-0114", 1040/208,0, 3],
["0636173872139","DRUMS", "ATF FULL SYN", "208/DRUM", "M-0067", 12688/208, 2900, 3],
["0636173872030","DRUMS", "0W20 FULL SYN", "208/DRUM", "M-0080", 1040/208,750, 3],
["0636173872047","DRUMS", "5W20 FULL SYN", "208/DRUM", "M-0059", 97760/208,208, 3],
["0636173872061","DRUMS", "5W30 FULL SYN", "208/DRUM", "M-0055", 97760/208,624, 3],
["0636173872054","DRUMS", "5W40 EURO FULL SYN", "208/DRUM", "M-0072",624/208, 900, 3],
["0636173872207","DRUMS", "15W40 FULL SYN", "208/DRUM", "M-0116", 6240/208, 50, 3],
["","DRUMS", "ATF DEX 6", "208/DRUM", "M-0217", 6240/208, 0, 3],
["","DRUMS", "75W90 FULL SYN GEAR", "208/DRUM", "M-0149", 624/208, 0, 3],


["0636173871804","CASES", "10W30 SN",	"CASES(1Qtx12)",	"M-0047", 763, 300, 4],
["0636173871798","CASES", "5W30 SN",	"CASES(1Qtx12)",	"M-0046", 580, 300, 4],
["0636173871781","CASES", "5W20 SN",	"CASES(1Qtx12)",	"M-0015", 294, 260, 4],
["0636173871774", "CASES", "15W40 CJ4",	"CASES(1Qtx12)",	"M-0021", 300, 60, 4],
["0636173871897","CASES", "ATF DEX III",	"CASES(1Qtx12)",	"M-0023", 270, 128, 4],
["0636173871859","CASES", "10w30 FULL SYN",	"CASES(1Qtx12)",	"M-0040", 203, 28, 4],
["0636173871842","CASES", "5W30 FULL SYN",	"CASES(1Qtx12)",	"M-0010", 133, 100, 4],
["0636173871828", "CASES", "5W20 FULL SYN",	"CASES(1Qtx12)",	"M-0016", 331, 100, 4],
["0636173871811","CASES", "0W20 FULL SYN",	"CASES(1Qtx12)",	"M-0014", 286, 150, 4],
["0636173871903","CASES", "ATF FULL SYN",	"CASES(1Qtx12)",	"M-0024", 529, 118, 4],
["0636173871835","CASES", "5W40 EURO FULL SYN",	"CASES(1Qtx12)",	"M-0012", 251, 50, 4],
["0636173871767","CASES", "10W30 CJ4", "CASES(1Qtx12)",	"M-0050", 20, 1, 4],
["0636173871866","CASES", "80W90 FS GEAR",	"CASES(1Qtx12)",	"M-0051", 30, 1, 4],
["0636173871873","CASES", "75W90 FS GEAR",	"CASES(1Qtx12)",	"M-0052", 30, 1, 4],
["0636173871880","CASES", "75W140 FS GEAR",	"CASES(1Qtx12)",	"M-0053", 30, 1, 4],

["0845334000308","CASES", "10W30 BLEND",	"CASES(5Qtx4)",	"M-0030", 121, 54, 5],
["0636173871934","CASES", "5W30 BLEND",	"CASES(5Qtx4)",	"M-0029", 62, 54, 5],
["0636173871927","CASES", "5W20 BLEND",	"CASES(5Qtx4)",	"M-0028", 203, 108, 5],
["0636173871958","CASES", "0W40 FULL SYN","CASES(5Qtx4)","M-0032", 113, 108, 5],
["0636173871385","CASES", "0W20 FULL SYN","CASES(5Qtx4)",	"M-0138", 166, 108, 5],
["0636173871972","CASES", "5W30 FULL SYN", "CASES(5Qtx4)",	"M-0043", 130, 108, 5],
["0636173871965","CASES", "5W40 EURO FULL SYN",	"CASES(5Qtx4)",	"M-0042", 179, 108, 5],
["0636173871910","CASES", "15W40 CJ4",	"CASES(5Qtx4)",	"M-0044", 276, 65, 5],
["0636173871750","CASES", "15W40  CJ4 FULL SYN",	"CASES(5Qtx4)",	"M-0031", 120,	60, 5],
["0636173871378","CASES", "10W30  CJ4 FULL SYN", "CASES(5Qtx4)",	"M-0137", 120,	60, 5],

["0636173872276","PAILS", "10W30 SN",	"PAILS", "M-0082", 224, 144, 2],
["0636173872269","PAILS", "5W30 SN",	"PAILS", "M-0083", 230, 144, 2],
["0636173872252","PAILS", "5W20 SN",	"PAILS", "M-0084", 231, 144, 2],
["0636173872320","PAILS", "80W90 GL5 GEAR",	"PAILS",	"M-0075", 161, 144, 2],
["0636173872238","PAILS", "10W30 CJ4"	,"PAILS",	"M-0100", 201, 144, 2],
["0637665973457","PAILS", "20W50",	"PAILS", "M-0093", 62, 48 , 2],
["0636173872337","PAILS", "ATF DEX III", "PAILS", "M-0064", 144, 144, 2],
["0636173872313","PAILS", "5W30 FULL SYN", "PAILS", "M-0056", 200, 144, 2],
["0636173872290","PAILS", "5W20 FULL SYN", "PAILS", "M-0060", 149, 144, 2],
["0636173872283","PAILS", "0W20 FULL SYN", "PAILS", "M-0079", 230, 144, 2],
["0636173872344","PAILS", "ATF FULL SYN",	"PAILS", "M-0068", 201, 144, 2],
["0636173872306","PAILS", "5W40 FULL SYN", "PAILS", "M-0071", 224, 144, 2],
["0636173871989","PAILS", "75W90 FS GEAR", "PAILS", "M-0073", 225, 144, 2],
["0636173871996","PAILS", "75W140 FS GEAR", "PAILS", "M-0074", 305, 144, 2],
["0636173872245","PAILS", "15W40 CJ4", "PAILS","M-0063", 210, 200, 2],
["0636173872146","PAILS", "AW32 HYD", "PAILS","M-0076", 160, 144, 2],
["0637665973266","PAILS", "MV36 HYD", "PAILS","M-0249", 196, 144, 2],
["0636173872153","PAILS", "AW46 HYD", "PAILS","M-0077", 172, 720, 2],
["0636173872160","PAILS", "AW68 HYD", "PAILS","M-0097", 121, 144, 2],
["0636173872221","PAILS", "TRACTOR OIL","PAILS","M-0094", 130, 84, 2]
]

items_list.each do |barcode ,unit, name, pkg, po_number, quantity, reorderLevel, category_id|
  Item.new(barcode: barcode,unit: unit, name: name, pkg: pkg, po_number: po_number,
  quantity: quantity, reorderLevel: reorderLevel, category_id: category_id)
  .save(validate: false)
end

puts "Items created!"
