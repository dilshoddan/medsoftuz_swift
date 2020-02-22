/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct PersonDocuments : Codable, Identifiable, Hashable {
    
    
	let id : String?
	let person_id : String?
	let document_type_id : String?
	let user_id : String?
	let created_date : String?
	let status : String?
	let sign_date : String?
	let content : String?
	let prev_id : String?
	let is_move : String?
	let document_caption : String?
	let doctor : PersonDocumentsDoctor?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case person_id = "person_id"
		case document_type_id = "document_type_id"
		case user_id = "user_id"
		case created_date = "created_date"
		case status = "status"
		case sign_date = "sign_date"
		case content = "content"
		case prev_id = "prev_id"
		case is_move = "is_move"
		case document_caption = "document_caption"
		case doctor = "doctor"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
		person_id = try values.decodeIfPresent(String.self, forKey: .person_id)
		document_type_id = try values.decodeIfPresent(String.self, forKey: .document_type_id)
		user_id = try values.decodeIfPresent(String.self, forKey: .user_id)
		created_date = try values.decodeIfPresent(String.self, forKey: .created_date)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		sign_date = try values.decodeIfPresent(String.self, forKey: .sign_date)
		content = try values.decodeIfPresent(String.self, forKey: .content)
		prev_id = try values.decodeIfPresent(String.self, forKey: .prev_id)
		is_move = try values.decodeIfPresent(String.self, forKey: .is_move)
		document_caption = try values.decodeIfPresent(String.self, forKey: .document_caption)
		doctor = try values.decodeIfPresent(PersonDocumentsDoctor.self, forKey: .doctor)
	}
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: PersonDocuments, rhs: PersonDocuments) -> Bool {
        return lhs.id == rhs.id
    }

}

extension String: Identifiable {
    public var id: String {
        self
    }
    
}
