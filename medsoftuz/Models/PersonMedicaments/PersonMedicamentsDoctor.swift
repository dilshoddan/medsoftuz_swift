/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonMedicamentsDoctor : Codable {
	let id : String?
	let login : String?
	let password : String?
	let lastname : String?
	let firstname : String?
	let middlename : String?
	let position : String?
	let speciality : String?
	let note : String?
	let lasttime : String?
	let isactive : String?
	let branch : String?
	let full : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case login = "login"
		case password = "password"
		case lastname = "lastname"
		case firstname = "firstname"
		case middlename = "middlename"
		case position = "position"
		case speciality = "speciality"
		case note = "note"
		case lasttime = "lasttime"
		case isactive = "isactive"
		case branch = "branch"
		case full = "full"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		login = try values.decodeIfPresent(String.self, forKey: .login)
		password = try values.decodeIfPresent(String.self, forKey: .password)
		lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
		firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
		middlename = try values.decodeIfPresent(String.self, forKey: .middlename)
		position = try values.decodeIfPresent(String.self, forKey: .position)
		speciality = try values.decodeIfPresent(String.self, forKey: .speciality)
		note = try values.decodeIfPresent(String.self, forKey: .note)
		lasttime = try values.decodeIfPresent(String.self, forKey: .lasttime)
		isactive = try values.decodeIfPresent(String.self, forKey: .isactive)
		branch = try values.decodeIfPresent(String.self, forKey: .branch)
		full = try values.decodeIfPresent(String.self, forKey: .full)
	}

}
