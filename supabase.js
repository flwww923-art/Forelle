// إعدادات الاتصال بقاعدة البيانات Supabase
// استبدل القيم أدناه بالمعلومات الخاصة بمشروعك في Supabase
const SUPABASE_URL = 'https://YOUR_SUPABASE_PROJECT_URL.supabase.co';
const SUPABASE_ANON_KEY = 'YOUR_SUPABASE_ANON_KEY';

// تهيئة عميل Supabase (تأكد من تضمين مكتبة Supabase في الـ HTML إذا لزم الأمر، أو استخدام fetch المباشر)
const supabaseClient = supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
