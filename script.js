// رقم الهاتف الخاص بالمتجر المعتمد للطلبات عبر الواتساب
const STORE_PHONE = "213798555097";

// دالة جلب وعرض المنتجات عند تحميل الصفحة
document.addEventListener("DOMContentLoaded", () => {
    fetchProducts();
});

async function fetchProducts() {
    const productsGrid = document.getElementById("products-grid");
    
    try {
        // محاولة جلب المنتجات من جدول products في Supabase
        const { data: products, error } = await supabaseClient
            .from('products')
            .select('*')
            .order('created_at', { ascending: false });

        if (error) {
            console.error("خطأ في جلب البيانات:", error.message);
            return;
        }

        // إذا وُجدت منتجات، يتم عرضها، وإلا يتم إبقاء العينة الافتراضية أو تنبيه الزبون
        if (products && products.length > 0) {
            productsGrid.innerHTML = ""; // تفريغ الشبكة
            
            products.forEach(product => {
                // تجهيز رسالة الواتساب الجاهزة للطلب
                const whatsappMessage = encodeURIComponent(`مرحباً، أود طلب هذا المنتج: ${product.name} بسعر ${product.price} دج`);
                const whatsappLink = `https://wa.me/${STORE_PHONE}?text=${whatsappMessage}`;

                const productCard = `
                    <div class="product-card">
                        <div class="product-img">
                            <img src="${product.image_url || 'https://images.unsplash.com/photo-1584917865442-de89df76afd3'}" alt="${product.name}">
                        </div>
                        <div class="product-info">
                            <h3>${product.name}</h3>
                            <p class="price">${product.price} دج</p>
                            <a href="${whatsappLink}" target="_blank" class="buy-btn">
                                <i class="fa-brands fa-whatsapp"></i> اطلب عبر الواتساب
                            </a>
                        </div>
                    </div>
                `;
                productsGrid.innerHTML += productCard;
            });
        }
    } catch (err) {
        console.error("حدث خطأ غير متوقع:", err);
    }
}
