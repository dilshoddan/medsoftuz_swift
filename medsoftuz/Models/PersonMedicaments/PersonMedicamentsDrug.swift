/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonMedicamentsDrug : Codable {
	let code : String?
	let drug_group_code : String?
	let name : String?
	let unit_id : String?
	let minimum : String?
	let parts_count : String?
	let parts_name : String?
	let active : String?

	enum CodingKeys: String, CodingKey {

		case code = "code"
		case drug_group_code = "drug_group_code"
		case name = "name"
		case unit_id = "unit_id"
		case minimum = "minimum"
		case parts_count = "parts_count"
		case parts_name = "parts_name"
		case active = "active"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		code = try values.decodeIfPresent(String.self, forKey: .code)
		drug_group_code = try values.decodeIfPresent(String.self, forKey: .drug_group_code)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		unit_id = try values.decodeIfPresent(String.self, forKey: .unit_id)
		minimum = try values.decodeIfPresent(String.self, forKey: .minimum)
		parts_count = try values.decodeIfPresent(String.self, forKey: .parts_count)
		parts_name = try values.decodeIfPresent(String.self, forKey: .parts_name)
		active = try values.decodeIfPresent(String.self, forKey: .active)
	}

}
