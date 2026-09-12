/* إعدادات عامة وتثبيت الخط */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Tajawal', sans-serif;
    scroll-behavior: smooth;
}

body {
    background-color: #faf9f6;
    color: #333;
    direction: rtl;
    line-height: 1.6;
}

/* شريط التنقل (Navbar) */
.navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background: rgba(18, 18, 18, 0.95);
    backdrop-filter: blur(10px);
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 5%;
    z-index: 1000;
    border-bottom: 1px solid rgba(212, 175, 55, 0.2);
}

.navbar .logo {
    font-size: 28px;
    font-weight: 900;
    color: #d4af37; /* لون ذهبي فخم */
    letter-spacing: 2px;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 30px;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
    font-weight: 500;
    transition: color 0.3s ease;
}

.nav-links a:hover {
    color: #d4af37;
}

.admin-link {
    background: rgba(212, 175, 55, 0.15);
    padding: 8px 12px;
    border-radius: 50%;
    color: #d4af37 !important;
}

/* القسم الرئيسي (Hero Section) */
.hero {
    height: 90vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 0 20px;
    margin-top: 60px;
}

.hero-content {
    max-width: 800px;
}

.badge {
    background-color: rgba(212, 175, 55, 0.2);
    color: #d4af37;
    padding: 8px 16px;
    border-radius: 30px;
    font-size: 14px;
    font-weight: 700;
    display: inline-block;
    margin-bottom: 20px;
    border: 1px solid rgba(212, 175, 55, 0.4);
}

.store-title {
    font-size: 70px;
    font-weight: 900;
    color: #ffffff;
    margin-bottom: 20px;
    letter-spacing: 3px;
    text-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
}

.welcome-text {
    font-size: 18px;
    color: #e0e0e0;
    margin-bottom: 35px;
    line-height: 1.8;
}

.hero-buttons {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}

.btn-primary, .btn-whatsapp {
    padding: 14px 30px;
    border-radius: 30px;
    font-size: 16px;
    font-weight: 700;
    text-decoration: none;
    transition: all 0.3s ease;
}

.btn-primary {
    background-color: #d4af37;
    color: #121212;
    box-shadow: 0 4px 15px rgba(212, 175, 55, 0.3);
}

.btn-primary:hover {
    background-color: #e5c158;
    transform: translateY(-2px);
}

.btn-whatsapp {
    background-color: #25d366;
    color: #fff;
    box-shadow: 0 4px 15px rgba(37, 211, 102, 0.3);
}

.btn-whatsapp:hover {
    background-color: #20ba5a;
    transform: translateY(-2px);
}

/* تنسيق العناوين العامة للأقسام */
.section-title {
    text-align: center;
    margin-bottom: 50px;
}

.section-title h2 {
    font-size: 36px;
    font-weight: 900;
    color: #1a1a1a;
    margin-bottom: 10px;
}

.section-title p {
    color: #666;
    font-size: 16px;
}

/* قسم المميزات */
.features-section {
    padding: 80px 8%;
    background-color: #fff;
}

.features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 30px;
}

.feature-card {
    background: #faf9f6;
    padding: 40px 30px;
    border-radius: 15px;
    text-align: center;
    border: 1px solid #eae5d9;
    transition: transform 0.3s ease;
}

.feature-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.05);
}

.feature-card i {
    font-size: 40px;
    color: #d4af37;
    margin-bottom: 20px;
}

.feature-card h3 {
    font-size: 20px;
    margin-bottom: 10px;
    color: #1a1a1a;
}

.feature-card p {
    color: #666;
    font-size: 14px;
}

/* قسم المنتجات */
.products-section {
    padding: 80px 8%;
    background-color: #f4f1ea;
}

.products-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 30px;
}

.product-card {
    background: #fff;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0,0,0,0.05);
    transition: transform 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
}

.product-img {
    height: 250px;
    width: 100%;
    overflow: hidden;
}

.product-img img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease;
}

.product-card:hover .product-img img {
    transform: scale(1.05);
}

.product-info {
    padding: 20px;
    text-align: center;
}

.product-info h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: #1a1a1a;
}

.price {
    font-size: 18px;
    font-weight: 700;
    color: #d4af37;
    margin-bottom: 15px;
}

.buy-btn {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #25d366;
    color: #fff;
    text-decoration: none;
    border-radius: 8px;
    font-weight: 700;
    transition: background 0.3s ease;
}

.buy-btn:hover {
    background-color: #20ba5a;
}

/* قسم من نحن */
.about-section {
    padding: 90px 8%;
    background-color: #fff;
}

.about-container {
    display: flex;
    align-items: center;
    gap: 50px;
    flex-wrap: wrap;
}

.about-text {
    flex: 1;
    min-width: 300px;
}

.about-text h2 {
    font-size: 32px;
    font-weight: 900;
    margin-bottom: 20px;
    color: #1a1a1a;
}

.about-text p {
    color: #555;
    margin-bottom: 15px;
    line-height: 1.8;
}

.store-stats {
    display: flex;
    gap: 40px;
    margin-top: 30px;
}

.stat-item h3 {
    font-size: 28px;
    color: #d4af37;
    font-weight: 900;
}

.stat-item p {
    font-size: 14px;
    color: #777;
    margin: 0;
}

.about-image {
    flex: 1;
    min-width: 300px;
    height: 400px;
    border-radius: 15px;
    overflow: hidden;
}

.about-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

/* الفوتر */
footer {
    background-color: #121212;
    color: #fff;
    padding: 50px 8% 20px;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    gap: 30px;
    flex-wrap: wrap;
    margin-bottom: 40px;
    border-bottom: 1px solid rgba(255,255,255,0.1);
    padding-bottom: 30px;
}

.footer-box {
    flex: 1;
    min-width: 250px;
}

.footer-box h3 {
    color: #d4af37;
    font-size: 20px;
    margin-bottom: 15px;
}

.footer-box p {
    color: #aaa;
    font-size: 14px;
    margin-bottom: 10px;
}

.footer-box p i {
    margin-left: 8px;
    color: #d4af37;
}

.copyright {
    text-align: center;
    color: #777;
    font-size: 13px;
}
/* ضبط حجم صور المنتجات لتصبح متناسقة وعادية */
.product-card img, 
img {
    max-width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 8px;
    display: block;
    margin: 0 auto;
}
