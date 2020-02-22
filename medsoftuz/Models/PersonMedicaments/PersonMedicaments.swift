/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonMedicaments : Codable, Identifiable {
    let u_id = UUID()
	let id : String?
	let user_lot_list_id : String?
	let quantity : String?
	let person_id : String?
	let date_render : String?
	let user_id : String?
	let lot_list : PersonMedicamentsLot_list?
	let doctor : PersonMedicamentsDoctor?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user_lot_list_id = "user_lot_list_id"
		case quantity = "quantity"
		case person_id = "person_id"
		case date_render = "date_render"
		case user_id = "user_id"
		case lot_list = "lot_list"
		case doctor = "doctor"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		user_lot_list_id = try values.decodeIfPresent(String.self, forKey: .user_lot_list_id)
		quantity = try values.decodeIfPresent(String.self, forKey: .quantity)
		person_id = try values.decodeIfPresent(String.self, forKey: .person_id)
		date_render = try values.decodeIfPresent(String.self, forKey: .date_render)
		user_id = try values.decodeIfPresent(String.self, forKey: .user_id)
		lot_list = try values.decodeIfPresent(PersonMedicamentsLot_list.self, forKey: .lot_list)
		doctor = try values.decodeIfPresent(PersonMedicamentsDoctor.self, forKey: .doctor)
	}

}
