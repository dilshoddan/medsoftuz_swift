/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonMedicamentsPerson : Codable {
	let id : String?
	let lastname : String?
	let firstname : String?
	let middlename : String?
	let birthdate : String?
	let sex : String?
	let passport : String?
	let country : String?
	let region : String?
	let district : String?
	let address : String?
	let phone : String?
	let registrationdate : String?
	let person_type : String?
	let current_standart_phase : String?
	let work : String?
	let direction : String?
	let order_num : String?
	let order_date : String?
	let diagnosis : String?
	let agreement : String?
	let invoice : String?
	let invoice_date : String?
	let state : String?
	let freecategory : String?
	let parent_person_id : String?
	let closedate : String?
	let parent_person_data_id : String?
	let passport_pfl : String?
	let full : String?
	let ful : String?
	let standart : Bool?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case lastname = "lastname"
		case firstname = "firstname"
		case middlename = "middlename"
		case birthdate = "birthdate"
		case sex = "sex"
		case passport = "passport"
		case country = "country"
		case region = "region"
		case district = "district"
		case address = "address"
		case phone = "phone"
		case registrationdate = "registrationdate"
		case person_type = "person_type"
		case current_standart_phase = "current_standart_phase"
		case work = "work"
		case direction = "direction"
		case order_num = "order_num"
		case order_date = "order_date"
		case diagnosis = "diagnosis"
		case agreement = "agreement"
		case invoice = "invoice"
		case invoice_date = "invoice_date"
		case state = "state"
		case freecategory = "freecategory"
		case parent_person_id = "parent_person_id"
		case closedate = "closedate"
		case parent_person_data_id = "parent_person_data_id"
		case passport_pfl = "passport_pfl"
		case full = "full"
		case ful = "ful"
		case standart = "standart"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
		firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
		middlename = try values.decodeIfPresent(String.self, forKey: .middlename)
		birthdate = try values.decodeIfPresent(String.self, forKey: .birthdate)
		sex = try values.decodeIfPresent(String.self, forKey: .sex)
		passport = try values.decodeIfPresent(String.self, forKey: .passport)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		region = try values.decodeIfPresent(String.self, forKey: .region)
		district = try values.decodeIfPresent(String.self, forKey: .district)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		registrationdate = try values.decodeIfPresent(String.self, forKey: .registrationdate)
		person_type = try values.decodeIfPresent(String.self, forKey: .person_type)
		current_standart_phase = try values.decodeIfPresent(String.self, forKey: .current_standart_phase)
		work = try values.decodeIfPresent(String.self, forKey: .work)
		direction = try values.decodeIfPresent(String.self, forKey: .direction)
		order_num = try values.decodeIfPresent(String.self, forKey: .order_num)
		order_date = try values.decodeIfPresent(String.self, forKey: .order_date)
		diagnosis = try values.decodeIfPresent(String.self, forKey: .diagnosis)
		agreement = try values.decodeIfPresent(String.self, forKey: .agreement)
		invoice = try values.decodeIfPresent(String.self, forKey: .invoice)
		invoice_date = try values.decodeIfPresent(String.self, forKey: .invoice_date)
		state = try values.decodeIfPresent(String.self, forKey: .state)
		freecategory = try values.decodeIfPresent(String.self, forKey: .freecategory)
		parent_person_id = try values.decodeIfPresent(String.self, forKey: .parent_person_id)
		closedate = try values.decodeIfPresent(String.self, forKey: .closedate)
		parent_person_data_id = try values.decodeIfPresent(String.self, forKey: .parent_person_data_id)
		passport_pfl = try values.decodeIfPresent(String.self, forKey: .passport_pfl)
		full = try values.decodeIfPresent(String.self, forKey: .full)
		ful = try values.decodeIfPresent(String.self, forKey: .ful)
		standart = try values.decodeIfPresent(Bool.self, forKey: .standart)
	}

}
