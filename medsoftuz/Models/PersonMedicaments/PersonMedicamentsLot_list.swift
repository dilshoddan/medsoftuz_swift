/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonMedicamentsLot_list : Codable {
    let uid = UUID()
	let id : String?
	let user_lot_id : String?
	let lot_list_id : String?
	let quantity : String?
	let fakt : String?
	let drug_code : String?
	let remainder : String?
	let note : String?
	let drug : PersonMedicamentsDrug?
	let user_lot : PersonMedicamentsUser_lot?
	//let lot_list : PersonMedicamentsLot_list?
    //let lot_list : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user_lot_id = "user_lot_id"
		case lot_list_id = "lot_list_id"
		case quantity = "quantity"
		case fakt = "fakt"
		case drug_code = "drug_code"
		case remainder = "remainder"
		case note = "note"
		case drug = "drug"
		case user_lot = "user_lot"
		//case lot_list = "lot_list"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		user_lot_id = try values.decodeIfPresent(String.self, forKey: .user_lot_id)
		lot_list_id = try values.decodeIfPresent(String.self, forKey: .lot_list_id)
		quantity = try values.decodeIfPresent(String.self, forKey: .quantity)
		fakt = try values.decodeIfPresent(String.self, forKey: .fakt)
		drug_code = try values.decodeIfPresent(String.self, forKey: .drug_code)
		remainder = try values.decodeIfPresent(String.self, forKey: .remainder)
		note = try values.decodeIfPresent(String.self, forKey: .note)
		drug = try values.decodeIfPresent(PersonMedicamentsDrug.self, forKey: .drug)
		user_lot = try values.decodeIfPresent(PersonMedicamentsUser_lot.self, forKey: .user_lot)
		//lot_list = try values.decodeIfPresent(PersonMedicamentsLot_list.self, forKey: .lot_list)
        //lot_list = try values.decodeIfPresent(String.self, forKey: .lot_list)
	}

}
