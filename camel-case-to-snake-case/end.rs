pub struct User {
    id: u64,
    first_name: String,
    last_name: String,
    age: u32,
    phone_number: String,
    address: String,
    postal_code: String,
    occupation: String,
    company: String,
    is_active: bool,
    registration_date: chrono::NativeDateTime,
    last_login_date: chrono::NativeDateTime,
    preferences: HashMap<String, String>,
}
