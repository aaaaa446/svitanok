<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Світанок • Українська кухня</title>
    <style>
        :root {
            --primary: #0052CC;
            --accent: #FFCC00;
            --dark: #2C1810;
        }
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Georgia', serif;
            line-height: 1.6;
            color: #333;
            background: #f8f5f0;
        }
        header {
            background: linear-gradient(rgba(44,24,16,0.95), rgba(44,24,16,0.95)), url('https://picsum.photos/id/1015/1920/1080') center/cover;
            color: white;
            position: fixed;
            width: 100%;
            z-index: 1000;
            padding: 1rem 0;
        }
        nav {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 2rem;
        }
        .logo { font-size: 2.2rem; font-weight: bold; color: var(--accent); }
        .nav-links {
            display: flex;
            gap: 1.5rem;
            list-style: none;
        }
        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            cursor: pointer;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            transition: 0.3s;
        }
        .nav-links a:hover, .nav-links a.active {
            background: var(--accent);
            color: var(--dark);
        }
        .page { display: none; padding-top: 80px; min-height: 100vh; }
        .page.active { display: block; }

        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,0.45), rgba(0,0,0,0.45)), url('https://picsum.photos/id/1015/1920/1080') center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }
        .hero h1 { font-size: 4.5rem; margin-bottom: 1rem; }
        .hero p { font-size: 1.6rem; margin-bottom: 2rem; }

        .btn {
            background: var(--accent);
            color: var(--dark);
            padding: 1rem 2.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            display: inline-block;
            transition: 0.3s;
            cursor: pointer;
        }
        .btn:hover { transform: translateY(-5px); }

        .container { max-width: 1200px; margin: 0 auto; padding: 0 2rem; }
        h2 { text-align: center; font-size: 3rem; margin: 3rem 0; color: var(--dark); }
        h2:after {
            content: ''; display: block; width: 80px; height: 4px;
            background: var(--accent); margin: 15px auto;
        }

        /* Menu */
        .menu-categories {
            display: flex; flex-wrap: wrap; justify-content: center; gap: 1rem; margin-bottom: 3rem;
        }
        .category-btn {
            padding: 0.8rem 1.8rem;
            border: 2px solid var(--primary);
            background: white;
            color: var(--primary);
            border-radius: 50px;
            cursor: pointer;
        }
        .category-btn.active { background: var(--primary); color: white; }

        .dishes {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2rem;
        }
        .dish-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        .dish-img { height: 220px; background-size: cover; background-position: center; }
        .dish-info { padding: 1.5rem; }
        .price { font-size: 1.4rem; color: var(--primary); font-weight: bold; }

        /* Cart */
        #cart {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--accent);
            color: var(--dark);
            padding: 1rem 1.5rem;
            border-radius: 50px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            cursor: pointer;
            z-index: 2000;
            font-weight: bold;
        }

        /* Booking */
        .booking-form {
            max-width: 700px;
            margin: 0 auto;
            background: white;
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        input, select, textarea {
            width: 100%;
            padding: 1rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        /* Gallery */
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
        }
        .gallery-item {
            height: 280px;
            border-radius: 15px;
            overflow: hidden;
        }
        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.4s;
        }
        .gallery-item:hover img { transform: scale(1.1); }

        footer {
            background: #1a0f08;
            color: #ccc;
            text-align: center;
            padding: 3rem 0;
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <nav>
            <div class="logo">СВІТАНОК</div>
            <ul class="nav-links">
                <li><a onclick="showPage('home')" class="active">Головна</a></li>
                <li><a onclick="showPage('menu')">Меню</a></li>
                <li><a onclick="showPage('about')">Про нас</a></li>
                <li><a onclick="showPage('gallery')">Галерея</a></li>
                <li><a onclick="showPage('booking')">Бронювання</a></li>
                <li><a onclick="showPage('contact')">Контакти</a></li>
            </ul>
        </nav>
    </header>

    <!-- HOME -->
    <div id="home" class="page active">
        <div class="hero">
            <div class="container" style="text-align:center;">
                <h1>Світанок</h1>
                <p>Автентична українська кухня</p>
                <a onclick="showPage('booking')" class="btn" style="font-size:1.3rem;">Забронювати столик</a>
            </div>
        </div>
    </div>

    <!-- MENU -->
    <div id="menu" class="page">
        <div class="container">
            <h2>Наше меню</h2>
            <div class="menu-categories">
                <button class="category-btn active" onclick="filterCategory('all')">Усі</button>
                <button class="category-btn" onclick="filterCategory('first')">Перші</button>
                <button class="category-btn" onclick="filterCategory('main')">Основні</button>
                <button class="category-btn" onclick="filterCategory('dumplings')">Вареники</button>
                <button class="category-btn" onclick="filterCategory('dessert')">Десерти</button>
            </div>
            <div class="dishes" id="dishes-container"></div>
        </div>
    </div>

    <!-- ABOUT -->
    <div id="about" class="page">
        <div class="container">
            <h2>Про нас</h2>
            <p style="max-width:800px; margin:0 auto 3rem; font-size:1.2rem; text-align:center;">
                «Світанок» — це місце, де оживають традиції української кухні. Ми готуємо за бабусиними рецептами з найсвіжіших продуктів від українських фермерів.
            </p>
            <img src="https://picsum.photos/id/1077/1200/600" alt="Ресторан" style="width:100%; border-radius:20px;">
        </div>
    </div>

    <!-- GALLERY -->
    <div id="gallery" class="page">
        <div class="container">
            <h2>Галерея</h2>
            <div class="gallery-grid">
                <div class="gallery-item"><img src="https://source.unsplash.com/random/600x400/?borscht" alt="Борщ"></div>
                <div class="gallery-item"><img src="https://source.unsplash.com/random/600x400/?varenyky" alt="Вареники"></div>
                <div class="gallery-item"><img src="https://source.unsplash.com/random/600x400/?kyiv-cutlet" alt="Котлета по-київськи"></div>
                <div class="gallery-item"><img src="https://source.unsplash.com/random/600x400/?ukrainian-food" alt="Українські страви"></div>
                <div class="gallery-item"><img src="https://source.unsplash.com/random/600x400/?syrnyky" alt="Сирники"></div>
                <div class="gallery-item"><img src="https://source.unsplash.com/random/600x400/?restaurant-interior" alt="Інтер'єр"></div>
            </div>
        </div>
    </div>

    <!-- BOOKING -->
    <div id="booking" class="page">
        <div class="container">
            <h2>Бронювання столика</h2>
            <div class="booking-form">
                <label>Дата</label>
                <input type="date" id="date" required>
                
                <label>Час</label>
                <select id="time">
                    <option>12:00</option><option>13:00</option><option>14:00</option>
                    <option>15:00</option><option>18:00</option><option>19:00</option>
                    <option>20:00</option><option>21:00</option>
                </select>
                
                <label>Кількість гостей</label>
                <select id="guests">
                    <option>1</option><option>2</option><option>3</option><option>4</option>
                    <option>5</option><option>6</option><option>7</option><option>8</option>
                </select>
                
                <label>Номер столика (1–25)</label>
                <select id="table"></select>
                
                <label>Ім'я</label>
                <input type="text" id="name" placeholder="Ваше ім'я" required>
                
                <label>Телефон</label>
                <input type="tel" id="phone" placeholder="+38 (___) ___-__-__" required>
                
                <button onclick="bookTable()" class="btn" style="width:100%; margin-top:1rem;">Забронювати</button>
            </div>
        </div>
    </div>

    <!-- CONTACT -->
    <div id="contact" class="page">
        <div class="container">
            <h2>Контакти</h2>
            <p style="text-align:center; font-size:1.3rem;">
                📍 вул. Хрещатик, 22, Київ<br>
                📞 +38 (044) 555-22-11<br>
                🕒 Пн–Нд: 11:00 – 23:00
            </p>
        </div>
    </div>

    <!-- CART -->
    <div id="cart" onclick="showCart()">🛒 Кошик (<span id="cart-count">0</span>)</div>

    <footer>
        © 2026 Ресторан «Світанок». З любов'ю до української кухні ❤️
    </footer>

    <script>
        let cart = [];

        // Перемикання сторінок
        function showPage(pageId) {
            document.querySelectorAll('.page').forEach(page => page.classList.remove('active'));
            document.getElementById(pageId).classList.add('active');
            
            document.querySelectorAll('.nav-links a').forEach(link => {
                link.classList.remove('active');
                if(link.getAttribute('onclick').includes("'" + pageId + "'")) link.classList.add('active');
            });
        }

        // Розширене меню з реальними фото
        const dishes = [
            {id:1, cat:"first", name:"Борщ український", desc:"Класичний з пампушками, сметаною та зеленню", price:145, img:"https://source.unsplash.com/random/600x400/?borscht"},
            {id:2, cat:"first", name:"Суп грибний", desc:"З лісовими грибами та квасолею", price:135, img:"https://source.unsplash.com/random/600x400/?mushroom-soup"},
            {id:3, cat:"main", name:"Котлета по-київськи", desc:"З вершковим маслом та зеленню", price:265, img:"https://source.unsplash.com/random/600x400/?kyiv-cutlet"},
            {id:4, cat:"main", name:"Голубці", desc:"У томатному соусі з яловичиною", price:185, img:"https://source.unsplash.com/random/600x400/?cabbage-rolls"},
            {id:5, cat:"dumplings", name:"Вареники з картоплею", desc:"Зі шкварками та смаженою цибулею", price:165, img:"https://source.unsplash.com/random/600x400/?varenyky"},
            {id:6, cat:"dumplings", name:"Вареники з вишнею", desc:"Солодкі зі сметаною", price:155, img:"https://source.unsplash.com/random/600x400/?cherry-varenyky"},
            {id:7, cat:"main", name:"Деруни", desc:"Картопляні з сметаною", price:145, img:"https://source.unsplash.com/random/600x400/?potato-pancakes"},
            {id:8, cat:"dessert", name:"Сирники", desc:"Повітряні зі сметаною та варенням", price:135, img:"https://source.unsplash.com/random/600x400/?syrnyky"},
            {id:9, cat:"dessert", name:"Пампушки з часником", desc:"Смачні до борщу", price:95, img:"https://source.unsplash.com/random/600x400/?garlic-buns"}
        ];

        function renderDishes(filtered) {
            const container = document.getElementById('dishes-container');
            container.innerHTML = '';
            filtered.forEach(d => {
                container.innerHTML += `
                    <div class="dish-card">
                        <div class="dish-img" style="background-image:url('${d.img}')"></div>
                        <div class="dish-info">
                            <h3>${d.name}</h3>
                            <p>${d.desc}</p>
                            <div style="display:flex;justify-content:space-between;align-items:center;margin-top:1rem;">
                                <span class="price">${d.price} ₴</span>
                                <button onclick="addToCart(${d.id})" class="btn" style="padding:0.6rem 1.5rem;font-size:0.9rem;">В кошик</button>
                            </div>
                        </div>
                    </div>`;
            });
        }

        function filterCategory(cat) {
            document.querySelectorAll('.category-btn').forEach(b => b.classList.remove('active'));
            if(event && event.target) event.target.classList.add('active');
            
            if(cat === 'all') renderDishes(dishes);
            else renderDishes(dishes.filter(d => d.cat === cat));
        }

        function addToCart(id) {
            const dish = dishes.find(d => d.id === id);
            cart.push(dish);
            updateCartCount();
            alert(`✅ ${dish.name} додано до кошика!`);
        }

        function updateCartCount() {
            document.getElementById('cart-count').textContent = cart.length;
        }

        function showCart() {
            if(cart.length === 0) {
                alert("Кошик порожній");
                return;
            }
            let text = "Ваш кошик:\n";
            let total = 0;
            cart.forEach((item, i) => {
                text += `${i+1}. ${item.name} — ${item.price} ₴\n`;
                total += item.price;
            });
            text += `\nЗагальна сума: ${total} ₴`;
            if(confirm(text + "\n\nОформити замовлення?")) {
                alert("Замовлення прийнято! Ми скоро зв'яжемося з вами.");
                cart = [];
                updateCartCount();
            }
        }

        // Бронювання
        function bookTable() {
            const name = document.getElementById('name').value;
            const table = document.getElementById('table').value;
            if(name && table) {
                alert(`✅ Столик №${table} успішно заброньовано для ${name}!\nМи зателефонуємо для підтвердження.`);
            } else {
                alert("Будь ласка, заповніть ім'я та виберіть столик");
            }
        }

        // Ініціалізація
        window.onload = () => {
            // Заповнення столиків
            const tableSelect = document.getElementById('table');
            for(let i = 1; i <= 25; i++) {
                const option = document.createElement('option');
                option.value = i;
                option.textContent = `Столик ${i}`;
                tableSelect.appendChild(option);
            }
            renderDishes(dishes);
        };
    </script>
</body>
</html>