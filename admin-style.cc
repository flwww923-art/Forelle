* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Tajawal', sans-serif;
}

body {
    background-color: #121212;
    color: #fff;
    direction: rtl;
}

/* شاشة تسجيل الدخول */
.login-container {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.login-box {
    background: #1e1e1e;
    padding: 40px;
    border-radius: 15px;
    text-align: center;
    border: 1px solid rgba(212, 175, 55, 0.3);
    width: 350px;
}

.login-box h2 {
    color: #d4af37;
    margin-bottom: 10px;
}

.login-box p {
    color: #aaa;
    font-size: 14px;
    margin-bottom: 20px;
}

.login-box input {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    background: #2a2a2a;
    border: 1px solid #444;
    border-radius: 8px;
    color: #fff;
    text-align: center;
}

.login-box button {
    width: 100%;
    padding: 12px;
    background: #d4af37;
    color: #121212;
    font-weight: 700;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s;
}

.login-box button:hover {
    background: #e5c158;
}

.back-home {
    display: block;
    margin-top: 15px;
    color: #aaa;
    text-decoration: none;
    font-size: 13px;
}

/* لوحة التحكم الرئيسية */
.dashboard {
    padding: 30px 5%;
}

.admin-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 40px;
    border-bottom: 1px solid #333;
    padding-bottom: 20px;
}

.admin-header h1 {
    color: #d4af37;
}

.view-site {
    color: #fff;
    background: #333;
    padding: 8px 15px;
    border-radius: 8px;
    text-decoration: none;
    font-size: 14px;
}

.admin-content {
    display: grid;
    grid-template-columns: 1fr 2fr;
    gap: 30px;
}

@media(max-width: 900px) {
    .admin-content {
        grid-template-columns: 1fr;
    }
}

.form-card, .products-list-card {
    background: #1e1e1e;
    padding: 25px;
    border-radius: 15px;
    border: 1px solid #333;
}

.form-card h2, .products-list-card h2 {
    font-size: 18px;
    margin-bottom: 20px;
    color: #d4af37;
}

.input-group {
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-bottom: 5px;
    font-size: 14px;
    color: #ccc;
}

.input-group input {
    width: 100%;
    padding: 10px;
    background: #2a2a2a;
    border: 1px solid #444;
    border-radius: 8px;
    color: #fff;
}

.btn-save {
    width: 100%;
    padding: 12px;
    background: #25d366;
    color: #fff;
    font-weight: 700;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    margin-top: 10px;
}

.admin-products-grid {
    display: flex;
    flex-direction: column;
    gap: 15px;
    max-height: 450px;
    overflow-y: auto;
}

.admin-item {
    display: flex;
    align-items: center;
    background: #2a2a2a;
    padding: 10px;
    border-radius: 8px;
    gap: 15px;
}

.admin-item img {
    width: 60px;
    height: 60px;
    object-fit: cover;
    border-radius: 6px;
}

.item-details {
    flex: 1;
}

.item-details h3 {
    font-size: 15px;
    margin-bottom: 3px;
}

.item-details p {
    color: #d4af37;
    font-size: 14px;
    font-weight: 700;
}

.btn-delete {
    background: #ff4d4d;
    color: #fff;
    border: none;
    padding: 10px 12px;
    border-radius: 6px;
    cursor: pointer;
}
