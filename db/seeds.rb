bob = Carpenter.create(name: "Bob Vila", company: "Finishing Cut", email: "bob@hotmail.com", phone_number: "1231231234", city: "Leesburg", state: "Virginia", zipcode: "20004")
sandy = Carpenter.create(name: "Sandy Wood", company: "Wood Times", email: "sandy@gmail.com", phone_number: "1231235555", city: "Fairfax", state: "Virginia", zipcode: "21014")
jack = Carpenter.create(name: "Jack Rogers", company: "Roger Designs", email: "roger@aol.com", phone_number: "1235551234", city: "Washington", state: "D.C.", zipcode: "20009")
nicole = Carpenter.create(name: "Nicole Curtis", company: "Between Two Furns", email: "nicole@gmail.com", phone_number: "2452455555", city: "Baltimore", state: "Maryland", zipcode: "22445")

bob.goods.create(make: "Desk", price: 350, photo_url: "https://img0.etsystatic.com/012/0/7941757/il_fullxfull.460617782_f98i.jpg")
bob.goods.create(make: "Sofa", price: 500, photo_url: "https://shard4.1stdibs.us.com/archivesE/upload/8885/1336/XXX_8885_1317076125_1.jpg")
bob.goods.create(make: "Table", price: 2500, photo_url: "http://www.dumonds.com/images/tables/table_rustic_slab_claro_tapered.jpg")

sandy.goods.create(make: "Desk", price: 530, photo_url: "http://cliffyoungltd.com/images/product-detail-large-1.jpg")
sandy.goods.create(make: "Sofa", price: 475, photo_url: "http://www.classicdesignla.com/data/photos/224_1ford1.jpg")
sandy.goods.create(make: "Table", price: 5200, photo_url: "http://static1.squarespace.com/static/53ac9883e4b087682313c113/53b5adcbe4b0e3bc2ac88d86/53b5ce05e4b0f56649f60a0d/1404832935264/custom_table_and_chairs.jpg")

jack.goods.create(make: "Desk", price: 370, photo_url: "http://www.cnbhomes.com/wp-content/uploads/2014/11/great-wood-desk-office-furniture-LbgJG.jpg")
jack.goods.create(make: "Sofa", price: 350, photo_url: "https://eclecticlivinghome.files.wordpress.com/2012/04/11399706_1_x.jpg")
jack.goods.create(make: "Table", price: 3020, photo_url: "http://hammerandhand.com/wp-content/uploads/2014/09/custom-live-edge-table-01.jpg")

nicole.goods.create(make: "Desk", price: 300, photo_url: "https://img0.etsystatic.com/043/0/7159121/il_fullxfull.604184116_s4nq.jpg")
nicole.goods.create(make: "Sofa", price: 500, photo_url: "http://www.classicdesignla.com/data/photos/225_1morton2.jpg")
nicole.goods.create(make: "Table", price: 2400, photo_url: "http://www.mntimeworn.com/files/7013/6918/3541/Texas_Trestle_3_Edited.JPG")

# EXCELLENT seeds!!! :)
