// إعدادات الاتصال بقاعدة بيانات Supabase لمتجر Forelle
const SUPABASE_URL = "https://ajrahkizmabmcrkqhbgi.supabase.co";
const SUPABASE_ANON_KEY = "sb_publishable_tr1ZJNhB0dzwt-o0Y6fo3A_oFx8gdBL";

// إنشاء العميل البرمجي لـ Supabase
const { createClient } = supabase;
const supabaseClient = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
