//
//  Product.h
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/28/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import "RLMObject.h"

@interface Product : RLMObject

@property (nonatomic)NSInteger *id;
@property (nonatomic)NSInteger *categoryId;
@property (nonatomic,strong)NSString *name;
@property (nonatomic)NSDate *createDate;
@property (nonatomic)NSDate *updateDate;
@property (nonatomic)NSInteger *groupID;

/*
 id: "173",
 id_category: {
 id: "25",
 slug: "midi-dress",
 name: "Midi Dress"
 },
 id_group: "3",
 datecreated: "2014-12-27 05:05:52",
 datemodified: "2014-12-27 05:05:52",
 name: "Dress Moschino Barbie",
 slug: "",
 summary: "Bahan Kaos Tebal",
 description: "<p>Pemesanan Online: 081287088148 | PIN 29515F2D</p>\n<p>- Kawaii/ Amaranthine Fashion Store -<br />Jl Prof Dr Satrio, ITC Kuningan Ambasador. Lantai 1 Blok D3 No 5-6, Kuningan - JakSel. Telp 02196817559</p>",
 price: "250000.00",
 price_wholeseller: "200000.00",
 price_reseller: "215000.00",
 discount: "0",
 is_recommended: "0",
 status: "1",
 counter: null,
 lastviewed: null,
 userid_creator: "administrator",
 userid_modifier: null,
 is_deleted: "0",
 imagelist: {
 imagechild: {}
 },
 */

@end
