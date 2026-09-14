<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · Modern E‑Commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&family=Syne:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- RESET & GLOBAL ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f7f7f5;
      --surface: #ffffff;
      --surface-2: #f2f1ee;
      --ink: #1d1d2b;
      --ink-soft: #5b5b6b;
      --muted: #8a8a9a;
      --line: rgba(29, 29, 43, 0.06);
      --brand: #3b3b5c;
      --brand-light: #5a5a7a;
      --accent: #d95b3a;       /* new warm accent */
      --accent-soft: #f7ded6;
      --accent-dark: #b44428;
      --gold: #d4a03c;
      --success: #31827b;
      --shadow-sm: 0 6px 18px rgba(29, 29, 43, 0.03);
      --shadow-md: 0 16px 40px rgba(29, 29, 43, 0.05);
      --shadow-lg: 0 28px 56px rgba(29, 29, 43, 0.08);
      --radius-card: 24px;
      --radius-btn: 60px;
      --font-main: 'Manrope', sans-serif;
      --font-display: 'Syne', sans-serif;
      --transition: 0.2s ease;
    }

    body {
      font-family: var(--font-main);
      background-color: var(--bg);
      color: var(--ink);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a { text-decoration: none; color: inherit; }
    button { font-family: inherit; border: none; background: none; cursor: pointer; color: inherit; }
    img { max-width: 100%; display: block; }
    ul { list-style: none; }

    .container {
      max-width: 1260px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ----- HEADER ----- */
    .site-header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--line);
      padding: 10px 0;
    }

    .header-container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 18px;
      flex-wrap: wrap;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: var(--font-display);
      font-weight: 800;
      font-size: 1.8rem;
      letter-spacing: -0.02em;
      color: var(--ink);
      flex-shrink: 0;
    }

    .logo i {
      color: var(--accent);
      font-size: 2rem;
    }

    .logo span span { color: var(--accent); }

    /* main nav */
    .main-nav ul {
      display: flex;
      gap: 6px;
      align-items: center;
    }

    .main-nav a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 18px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      color: var(--ink-soft);
      transition: var(--transition);
    }

    .main-nav a i { font-size: 0.9rem; opacity: 0.8; }

    .main-nav a:hover,
    .main-nav a.active {
      background: var(--surface-2);
      color: var(--ink);
    }

    /* header actions */
    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
      flex-shrink: 0;
    }

    .search-box {
      display: flex;
      align-items: center;
      background: var(--surface-2);
      border-radius: 60px;
      padding: 0 16px 0 20px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 200px;
    }

    .search-box:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 3px rgba(217, 91, 58, 0.1);
    }

    .search-box input {
      border: none;
      background: transparent;
      padding: 12px 0;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
      color: var(--ink);
    }

    .search-box input::placeholder { color: var(--muted); }

    .search-box button {
      color: var(--muted);
      font-size: 1rem;
      padding: 8px 0 8px 8px;
    }

    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 1.2rem;
      color: var(--ink-soft);
      background: transparent;
      transition: var(--transition);
    }

    .icon-btn:hover {
      background: var(--surface-2);
      color: var(--ink);
    }

    .cart-wrapper { position: relative; }

    .cart-badge {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 800;
      min-width: 20px;
      height: 20px;
      border-radius: 60px;
      display: grid;
      place-items: center;
      padding: 0 5px;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface-2);
      font-size: 1.3rem;
      place-items: center;
      color: var(--ink);
    }

    #mobileMenu {
      display: none;
      background: white;
      border-top: 1px solid var(--line);
      padding: 12px 0 16px;
    }

    #mobileMenu a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 20px;
      font-weight: 600;
      color: var(--ink);
      border-radius: 14px;
      transition: var(--transition);
    }

    #mobileMenu a i { width: 22px; color: var(--muted); }

    #mobileMenu a:hover { background: var(--surface-2); }

    /* ----- HERO (completely renewed) ----- */
    .hero-new {
      margin: 24px 28px 0;
      border-radius: 36px;
      background: linear-gradient(105deg, #1f1f2e 0%, #2d2d44 100%);
      position: relative;
      overflow: hidden;
      min-height: 480px;
      display: flex;
      align-items: center;
      box-shadow: var(--shadow-lg);
    }

    .hero-new::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.25;
      mix-blend-mode: luminosity;
      pointer-events: none;
    }

    .hero-content {
      position: relative;
      z-index: 3;
      max-width: 620px;
      padding: 60px 56px;
    }

    .hero-tag {
      display: inline-block;
      background: rgba(217, 91, 58, 0.2);
      backdrop-filter: blur(8px);
      color: #f7c5b8;
      font-weight: 700;
      font-size: 0.8rem;
      letter-spacing: 0.06em;
      text-transform: uppercase;
      padding: 8px 18px;
      border-radius: 60px;
      margin-bottom: 24px;
      border: 1px solid rgba(217, 91, 58, 0.3);
    }

    .hero-content h1 {
      font-family: var(--font-display);
      font-size: 3.8rem;
      font-weight: 800;
      line-height: 1.1;
      color: white;
      letter-spacing: -0.02em;
      margin-bottom: 20px;
    }

    .hero-content h1 span { color: var(--accent); }

    .hero-content p {
      color: rgba(255, 255, 255, 0.8);
      font-size: 1.1rem;
      max-width: 460px;
      margin-bottom: 32px;
      line-height: 1.6;
    }

    .hero-buttons {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    .btn-new {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 16px 36px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.95rem;
      transition: var(--transition);
      border: 2px solid transparent;
    }

    .btn-primary-new {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 24px rgba(217, 91, 58, 0.3);
    }

    .btn-primary-new:hover {
      background: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 16px 32px rgba(217, 91, 58, 0.4);
    }

    .btn-ghost-new {
      background: rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(6px);
      color: white;
      border-color: rgba(255, 255, 255, 0.2);
    }

    .btn-ghost-new:hover {
      background: rgba(255, 255, 255, 0.18);
      border-color: rgba(255, 255, 255, 0.4);
      transform: translateY(-3px);
    }

    /* ----- SECTIONS ----- */
    .section-new {
      padding: 72px 0;
    }

    .section-header-new {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 40px;
      flex-wrap: wrap;
      gap: 16px;
    }

    .section-header-new h2 {
      font-family: var(--font-display);
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--ink);
    }

    .section-header-new .subhead {
      color: var(--muted);
      margin-top: 6px;
      font-size: 1rem;
    }

    .view-link {
      font-weight: 700;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      transition: var(--transition);
    }

    .view-link:hover { gap: 14px; color: var(--accent-dark); }

    /* ----- CATEGORY GRID (refreshed) ----- */
    .cat-grid-new {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }

    .cat-item-new {
      background: var(--surface);
      border-radius: 28px;
      padding: 28px 14px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid var(--line);
    }

    .cat-item-new:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-soft);
    }

    .cat-icon-new {
      width: 64px;
      height: 64px;
      margin: 0 auto 16px;
      background: var(--surface-2);
      border-radius: 20px;
      display: grid;
      place-items: center;
      font-size: 1.8rem;
      color: var(--accent);
      transition: var(--transition);
    }

    .cat-item-new:hover .cat-icon-new {
      background: var(--accent);
      color: white;
    }

    .cat-item-new h4 {
      font-weight: 700;
      font-size: 1rem;
      margin-bottom: 4px;
    }

    .cat-item-new .count {
      font-size: 0.85rem;
      color: var(--muted);
    }

    /* ----- PRODUCTS GRID (new look) ----- */
    .products-grid-new {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 26px;
    }

    .product-card-new {
      background: var(--surface);
      border-radius: 28px;
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid var(--line);
    }

    .product-card-new:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-lg);
      border-color: var(--accent-soft);
    }

    .product-media-new {
      position: relative;
      background: var(--surface-2);
      aspect-ratio: 1/1;
      overflow: hidden;
    }

    .product-media-new img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.3s ease;
    }

    .product-card-new:hover .product-media-new img { transform: scale(1.05); }

    .badge-new {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 800;
      padding: 6px 14px;
      border-radius: 60px;
      letter-spacing: 0.04em;
      text-transform: uppercase;
    }

    .badge-new.sale { background: var(--gold); color: var(--ink); }

    .wish-new {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      font-size: 1rem;
      transition: var(--transition);
    }

    .wish-new:hover { background: white; color: var(--accent); transform: scale(1.1); }

    .product-info-new {
      padding: 20px 20px 16px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    .cat-label-new {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      font-weight: 700;
      color: var(--muted);
    }

    .product-title-new {
      font-weight: 700;
      font-size: 1.05rem;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .price-line-new {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 4px;
    }

    .current-price-new {
      font-weight: 800;
      font-size: 1.25rem;
      color: var(--ink);
    }

    .old-price-new {
      font-size: 0.9rem;
      color: var(--muted);
      text-decoration: line-through;
    }

    .rating-new {
      display: flex;
      align-items: center;
      gap: 5px;
      font-size: 0.85rem;
      color: var(--gold);
    }

    .rating-new span { color: var(--muted); font-weight: 400; }

    .product-footer-new {
      padding: 0 20px 20px;
    }

    .add-btn-new {
      width: 100%;
      padding: 14px;
      border-radius: 60px;
      background: var(--ink);
      color: white;
      font-weight: 700;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      transition: var(--transition);
    }

    .add-btn-new:hover {
      background: var(--accent);
      transform: scale(1.02);
    }

    .add-btn-new.added { background: var(--success); }

    /* ----- DEAL SECTION (reimagined) ----- */
    .deal-card-new {
      display: flex;
      background: var(--surface);
      border-radius: 36px;
      overflow: hidden;
      box-shadow: var(--shadow-md);
      border: 1px solid var(--line);
    }

    .deal-media-new {
      flex: 0 0 45%;
      background: var(--surface-2);
      min-height: 360px;
    }

    .deal-media-new img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-info-new {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-label-new {
      display: inline-block;
      background: var(--gold);
      color: var(--ink);
      font-weight: 800;
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      padding: 8px 20px;
      border-radius: 60px;
      align-self: flex-start;
      margin-bottom: 18px;
    }

    .deal-info-new h3 {
      font-family: var(--font-display);
      font-size: 2.2rem;
      font-weight: 700;
      margin-bottom: 8px;
    }

    .deal-desc-new {
      color: var(--muted);
      font-size: 1rem;
      margin-bottom: 20px;
      max-width: 360px;
    }

    .deal-price-new {
      font-size: 2.4rem;
      font-weight: 800;
      color: var(--ink);
      margin-bottom: 6px;
    }

    .deal-price-new small {
      font-size: 1.1rem;
      font-weight: 400;
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 12px;
    }

    .stock-note-new {
      font-size: 0.95rem;
      color: var(--ink-soft);
      margin-bottom: 24px;
    }

    .stock-note-new strong { color: var(--accent); }

    .timer-row-new {
      display: flex;
      gap: 12px;
      margin-bottom: 28px;
    }

    .timer-block-new {
      background: var(--ink);
      color: white;
      padding: 12px 18px;
      border-radius: 20px;
      text-align: center;
      min-width: 72px;
    }

    .timer-block-new .number {
      font-size: 1.8rem;
      font-weight: 800;
      line-height: 1.2;
    }

    .timer-block-new .unit {
      font-size: 0.7rem;
      text-transform: uppercase;
      opacity: 0.7;
      letter-spacing: 0.06em;
    }

    .deal-btn-new {
      align-self: flex-start;
      padding: 16px 40px;
    }

    /* ----- TESTIMONIALS (fresh) ----- */
    .testi-scroll-new {
      display: flex;
      gap: 26px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testi-scroll-new::-webkit-scrollbar { height: 6px; }
    .testi-scroll-new::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 60px;
    }

    .testi-card-new {
      flex: 0 0 360px;
      background: var(--surface);
      border-radius: 28px;
      padding: 32px 30px;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--line);
      scroll-snap-align: start;
      transition: var(--transition);
    }

    .testi-card-new:hover { box-shadow: var(--shadow-md); }

    .testi-stars-new {
      color: var(--gold);
      font-size: 1.1rem;
      letter-spacing: 3px;
      margin-bottom: 16px;
    }

    .testi-text-new {
      font-size: 1rem;
      line-height: 1.6;
      color: var(--ink);
      margin-bottom: 20px;
      font-style: italic;
    }

    .testi-author-new {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .testi-avatar-new {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface-2);
    }

    .testi-name-new {
      font-weight: 700;
      font-size: 0.95rem;
    }

    .testi-role-new {
      font-size: 0.85rem;
      color: var(--muted);
    }

    /* ----- NEWSLETTER (redesigned) ----- */
    .newsletter-new {
      background: linear-gradient(115deg, #1d1d2b 0%, #2d2d44 100%);
      border-radius: 36px;
      padding: 56px 64px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
    }

    .newsletter-new .text h3 {
      font-family: var(--font-display);
      font-size: 2rem;
      font-weight: 700;
      color: white;
      margin-bottom: 8px;
    }

    .newsletter-new .text p {
      color: rgba(255, 255, 255, 0.65);
      font-size: 1rem;
    }

    .newsletter-form-new {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }

    .newsletter-form-new input {
      flex: 1;
      min-width: 200px;
      padding: 18px 24px;
      border-radius: 60px;
      border: none;
      background: rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(4px);
      color: white;
      font-size: 0.95rem;
      outline: 2px solid transparent;
      transition: var(--transition);
    }

    .newsletter-form-new input::placeholder { color: rgba(255, 255, 255, 0.4); }

    .newsletter-form-new input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.12);
    }

    .newsletter-form-new .btn-new {
      background: var(--accent);
      color: white;
      padding: 18px 36px;
    }

    .newsletter-form-new .btn-new:hover {
      background: var(--accent-dark);
    }

    #newsletterMsgNew {
      width: 100%;
      margin-top: 14px;
      font-size: 0.9rem;
      opacity: 0.9;
    }

    /* ----- FOOTER (updated) ----- */
    .site-footer-new {
      margin-top: 40px;
      padding: 56px 0 32px;
      border-top: 1px solid var(--line);
    }

    .footer-grid-new {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }

    .footer-brand-new .logo {
      font-size: 1.6rem;
      margin-bottom: 16px;
    }

    .footer-brand-new p {
      color: var(--muted);
      font-size: 0.9rem;
      max-width: 280px;
      line-height: 1.7;
      margin-bottom: 20px;
    }

    .social-row-new {
      display: flex;
      gap: 12px;
    }

    .social-row-new a {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: var(--surface-2);
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      transition: var(--transition);
      font-size: 1.1rem;
    }

    .social-row-new a:hover {
      background: var(--accent);
      color: white;
      transform: translateY(-3px);
    }

    .footer-col-new h5 {
      font-weight: 700;
      font-size: 0.95rem;
      margin-bottom: 18px;
      color: var(--ink);
      letter-spacing: 0.02em;
    }

    .footer-col-new ul li {
      margin-bottom: 10px;
    }

    .footer-col-new ul a {
      color: var(--muted);
      font-size: 0.9rem;
      transition: var(--transition);
    }

    .footer-col-new ul a:hover { color: var(--accent); }

    .footer-bottom-new {
      text-align: center;
      padding-top: 28px;
      border-top: 1px solid var(--line);
      font-size: 0.85rem;
      color: var(--muted);
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1200px) {
      .products-grid-new { grid-template-columns: repeat(3, 1fr); }
      .cat-grid-new { grid-template-columns: repeat(3, 1fr); }
      .footer-grid-new { grid-template-columns: 1fr 1fr; gap: 32px; }
      .hero-content h1 { font-size: 3rem; }
    }

    @media (max-width: 992px) {
      .hero-new { margin: 16px 20px 0; min-height: 400px; }
      .hero-content { padding: 40px 36px; }
      .hero-content h1 { font-size: 2.5rem; }
      .deal-card-new { flex-direction: column; }
      .deal-media-new { flex: 0 0 260px; }
      .deal-info-new { padding: 32px 32px; }
      .newsletter-new { padding: 40px 32px; flex-direction: column; text-align: center; }
      .newsletter-form-new { max-width: 100%; justify-content: center; }
      .search-box { min-width: 150px; }
    }

    @media (max-width: 768px) {
      .main-nav { display: none; }
      .mobile-toggle { display: grid; }
      .products-grid-new { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .cat-grid-new { grid-template-columns: repeat(2, 1fr); }
      .hero-content h1 { font-size: 2rem; }
      .section-header-new h2 { font-size: 1.8rem; }
      .footer-grid-new { grid-template-columns: 1fr; gap: 28px; }
      .hero-new { margin: 12px 14px 0; min-height: 360px; }
      .hero-content { padding: 32px 24px; }
      .testi-card-new { flex: 0 0 300px; }
      .deal-info-new h3 { font-size: 1.8rem; }
      .deal-price-new { font-size: 2rem; }
      .timer-block-new { min-width: 60px; padding: 10px 12px; }
      .timer-block-new .number { font-size: 1.4rem; }
      .search-box { min-width: 120px; padding: 0 12px 0 16px; }
      .search-box input { padding: 10px 0; }
    }

    @media (max-width: 480px) {
      .container { padding: 0 16px; }
      .hero-content h1 { font-size: 1.8rem; }
      .products-grid-new { grid-template-columns: 1fr 1fr; gap: 12px; }
      .cat-grid-new { grid-template-columns: 1fr 1fr; gap: 12px; }
      .cat-item-new { padding: 20px 8px; }
      .cat-icon-new { width: 48px; height: 48px; font-size: 1.4rem; }
      .product-info-new { padding: 14px 14px 10px; }
      .product-title-new { font-size: 0.9rem; }
      .current-price-new { font-size: 1rem; }
      .add-btn-new { font-size: 0.8rem; padding: 10px; }
      .deal-info-new { padding: 24px 20px; }
      .deal-media-new { flex: 0 0 180px; }
      .timer-block-new { min-width: 50px; padding: 8px 8px; }
      .timer-block-new .number { font-size: 1.2rem; }
      .timer-block-new .unit { font-size: 0.6rem; }
      .newsletter-new { padding: 28px 20px; }
      .newsletter-new .text h3 { font-size: 1.5rem; }
      .btn-new { padding: 14px 24px; font-size: 0.85rem; }
      .logo { font-size: 1.4rem; }
      .logo i { font-size: 1.6rem; }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header class="site-header">
    <div class="container header-container">
      <div style="display: flex; align-items: center; gap: 12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="logo" href="#">
          <i class="fas fa-cube"></i>
          <span>Nexus<span>Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" aria-label="Main">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-compass"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-layer-group"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-bolt"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-fire"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-comment"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display: flex; align-items: center; gap: 12px;">
        <div class="search-box" role="search">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrapper">
            <button class="icon-btn" id="cartBtn" title="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-badge" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-compass"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-layer-group"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-bolt"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-fire"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-comment"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO -->
    <section class="hero-new" aria-label="Hero">
      <div class="hero-content">
        <div class="hero-tag"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover <span>Premium</span> Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order. Limited‑time deals await.</p>
        <div class="hero-buttons">
          <button class="btn-new btn-primary-new" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn-new btn-ghost-new" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section-new" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="
