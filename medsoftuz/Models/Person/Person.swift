/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Person : Codable, Identifiable {
    let id = UUID()
    
	let person_id : String?
	let lastname : String?
	let firstname : String?
	let middlename : String?
	let birthdate : String?
	let registrationdate : String?
	let passport : String?
	let address : String?
	let phone : String?

	enum CodingKeys: String, CodingKey {

		case person_id = "person_id"
		case lastname = "lastname"
		case firstname = "firstname"
		case middlename = "middlename"
		case birthdate = "birthdate"
		case registrationdate = "registrationdate"
		case passport = "passport"
		case address = "address"
		case phone = "phone"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		person_id = try values.decodeIfPresent(String.self, forKey: .person_id)
		lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
		firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
		middlename = try values.decodeIfPresent(String.self, forKey: .middlename)
		birthdate = try values.decodeIfPresent(String.self, forKey: .birthdate)
		registrationdate = try values.decodeIfPresent(String.self, forKey: .registrationdate)
		passport = try values.decodeIfPresent(String.self, forKey: .passport)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
	}

}
