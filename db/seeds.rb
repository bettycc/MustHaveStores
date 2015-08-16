# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Store.delete_all
Product.delete_all
Order.delete_all
Orderitem.delete_all
#User.delete_all


store1 = Store.create(:name => "Susan Simonini", :kind => "Crafty", :description => "Modern Hand Made Ceramics", :contact_info => "111@gmail.com", :photourl => "https://img0.etsystatic.com/062/0/6648171/iusb_760x100.15481778_7obx.jpg",:open_date => "June 2015",:is_featured =>1)
store2 = Store.create(:name => "LUSIX", :kind => "Jewlery", :description => "Gemstone Druzy Drusy Jewelry ", :contact_info => "222@gmail.com", :photourl => "https://img1.etsystatic.com/062/0/9239946/iusb_760x100.15516387_apkt.jpg",:open_date => "Mar 2014",:is_featured =>2)
store3 = Store.create(:name => "lilliannamarie", :kind => "Crafty", :description => "", :contact_info => "333@gmail.com", :photourl => "https://img0.etsystatic.com/036/0/9795810/iusb_760x100.14144982_m1pr.jpg",:open_date => "Jan 2015",:is_featured =>2)
store4 = Store.create(:name => "yiyigallary", :kind => "Arts", :description => "Welcome to the world of cuteness! ", :contact_info => "444@gmail.com", :photourl => "https://img1.etsystatic.com/032/0/9357450/iusb_760x100.14335375_lwva.jpg",:open_date => "Dec 2011",:is_featured =>2)
store5 = Store.create(:name => "sord", :kind => "Crafty", :description => "not sure!", :contact_info => "555@gmail.com", :photourl => "https://img1.etsystatic.com/048/0/8657775/iusb_760x100.14663175_kkce.jpg",:open_date => "May 2013",:is_featured =>1)
store6 = Store.create(:name => "SportsVinyl", :kind => "Arts", :description => "Welcome to the greatest sports decal shop in the world! ", :contact_info => "666@gmail.com", :photourl => "https://img0.etsystatic.com/065/0/6179130/iusb_760x100.15698488_hg1p.jpg",:open_date => "April 2014",:is_featured =>1)

#store1's products
#store1.id is equal to store1.store_id
p1 = Product.create(:store_id => store1.id,:name => "Hand Painted Cloud Ceramic Plate ",:kind => "Crafty",:price => 32.85,:designer => "Susan",:in_stock => 10,:sold =>2,:release_date => "Jan 2015", :photourl1 =>"https://img0.etsystatic.com/055/0/6648171/il_570xN.744229492_eo6b.jpg",:photourl2 =>"https://img1.etsystatic.com/060/0/6648171/il_570xN.744355519_2bbs.jpg",:photourl3 => "https://img1.etsystatic.com/058/0/6648171/il_570xN.744355499_gzn9.jpg",:is_featured => 1 )
p2 = Product.create(:store_id => store1.id,:name => "Rustic Heart Platter",:kind => "Crafty",:price => 43.30,:designer => "Susan",:in_stock => 7,:sold => 7,:release_date => "Jan 2015" , :photourl1 => "https://img1.etsystatic.com/056/1/6648171/il_570xN.764072679_l3z7.jpg",:photourl2 => "https://img1.etsystatic.com/054/0/6648171/il_570xN.764072675_trg8.jpg",:photourl3 => "https://img0.etsystatic.com/061/0/6648171/il_570xN.763948656_kfdh.jpg",:is_featured => 2)
p3 = Product.create(:store_id => store1.id,:name => "Ceramic Holder",:kind => "Crafty" ,:price =>30.6,:designer => "Susan",:in_stock => 8 ,:sold => 1 ,:release_date => "Jun 2015" , :photourl1 =>"https://img0.etsystatic.com/069/0/6648171/il_570xN.811436304_ckox.jpg",:photourl2 => "https://img1.etsystatic.com/072/0/6648171/il_570xN.811217575_vueq.jpg",:photourl3 => "https://img0.etsystatic.com/074/0/6648171/il_570xN.811436330_4x35.jpg",:is_featured => 2)
p4 = Product.create(:store_id => store1.id,:name => "Cosmic Black Ceramic Bowl",:kind => "Crafty" ,:price => 26.13,:designer => "Susan",:in_stock => 8,:sold => 0,:release_date => "Jun 2015" , :photourl1 => "https://img0.etsystatic.com/072/0/6648171/il_570xN.812080838_966a.jpg",:photourl2 =>"https://img0.etsystatic.com/070/0/6648171/il_570xN.812080850_tff8.jpg",:photourl3 => "https://img1.etsystatic.com/074/0/6648171/il_570xN.811861739_ftvp.jpg",:is_featured => 2)


order1 = Order.create(:date => "20150811",:ship_day =>"20150813",:name => "betty", :contact_info => "123",:bill_info => "456", :ship_info => "789")
order2 = Order.create(:date => "20150812",:ship_day =>"20150814",:name => "b", :contact_info => "123",:bill_info => "456", :ship_info => "789")
order3 = Order.create(:date => "20150813",:ship_day =>"20150815",:name => "bet", :contact_info => "123",:bill_info => "456", :ship_info => "789")
order4 = Order.create(:date => "20150814",:ship_day =>"20150816",:name => "bett", :contact_info => "123",:bill_info => "456", :ship_info => "789")

Orderitem.create(:product_id => p3.id, :order_id=> order1.id)
Orderitem.create(:product_id => p2.id, :order_id=> order1.id)
Orderitem.create(:product_id => p1.id, :order_id=> order2.id)
Orderitem.create(:product_id => p2.id, :order_id=> order3.id)