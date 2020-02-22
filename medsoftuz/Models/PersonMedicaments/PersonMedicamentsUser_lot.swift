/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonMedicamentsUser_lot : Codable {
	let id : String?
	let user_id : String?
	let num : String?
	let lot_date : String?
	let note : String?
	let state : String?
	let branch : String?
	let person_id : String?
	let appointer : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user_id = "user_id"
		case num = "num"
		case lot_date = "lot_date"
		case note = "note"
		case state = "state"
		case branch = "branch"
		case person_id = "person_id"
		case appointer = "appointer"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		user_id = try values.decodeIfPresent(String.self, forKey: .user_id)
		num = try values.decodeIfPresent(String.self, forKey: .num)
		lot_date = try values.decodeIfPresent(String.self, forKey: .lot_date)
		note = try values.decodeIfPresent(String.self, forKey: .note)
		state = try values.decodeIfPresent(String.self, forKey: .state)
		branch = try values.decodeIfPresent(String.self, forKey: .branch)
		person_id = try values.decodeIfPresent(String.self, forKey: .person_id)
		appointer = try values.decodeIfPresent(String.self, forKey: .appointer)
	}

}
