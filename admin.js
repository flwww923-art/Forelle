// كلمة المرور السرية الخاصة بلوحة التحكم (يمكنك تغييرها هنا)
const ADMIN_SECRET_CODE = "forelle2026";

function checkPassword() {
    const inputPass = document.getElementById("admin-password").value;
    if (inputPass === ADMIN_SECRET_CODE) {
        document.getElementById("login-modal").style.display = "none";
        document.getElementById("admin-dashboard").style.display = "block";
        loadAdminProducts();
    } else {
        alert("كلمة المرور غير صحيحة!");
    }
}

// إضافة منتج جديد إلى قاعدة البيانات
async function addProduct(event) {
    event.preventDefault();
    
    const name = document.getElementById("product-name").value;
    const price = document.getElementById("product-price").value;
    const image_url = document.getElementById("product-img").value;

    const { error } = await supabaseClient
        .from('products')
        .insert([{ name, price: Number(price), image_url }]);

    if (error) {
        alert("حدث خطأ أثناء الإضافة: " + error.message);
    } else {
        alert("تمت إضافة المنتج بنجاح!");
        document.getElementById("add-product-form").reset();
        loadAdminProducts();
    }
}

// جلب المنتجات للوحة التحكم مع إمكانية الحذف
async function loadAdminProducts() {
    const listContainer = document.getElementById("admin-products-list");
    listContainer.innerHTML = "<p>جاري التحميل...</p>";

    const { data: products, error } = await supabaseClient
        .from('products')
        .select('*')
        .order('created_at', { ascending: false });

    if (error) {
        listContainer.innerHTML = "<p>خطأ في جلب المنتجات.</p>";
        return;
    }

    if (products.length === 0) {
        listContainer.innerHTML = "<p>لا توجد منتجات حالياً.</p>";
        return;
    }

    listContainer.innerHTML = "";
    products.forEach(product => {
        listContainer.innerHTML += `
            <div class="admin-item">
                <img src="${product.image_url}" alt="${product.name}">
                <div class="item-details">
                    <h3>${product.name}</h3>
                    <p>${product.price} دج</p>
                </div>
                <button onclick="deleteProduct('${product.id}')" class="btn-delete"><i class="fa-solid fa-trash"></i></button>
            </div>
        `;
    });
}

// حذف منتج من قاعدة البيانات
async function deleteProduct(id) {
    if (confirm("هل أنت متأكد من حذف هذا المنتج؟")) {
        const { error } = await supabaseClient
            .from('products')
            .delete()
            .eq('id', id);

        if (error) {
            alert("خطأ أثناء الحذف: " + error.message);
        } else {
            loadAdminProducts();
        }
    }
}
