<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="{{ asset('frontend/style.css') }}" />
  <title>{{ config('app.name') }}</title>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
    }
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }
    .front-page {
      position: relative;
      text-align: center;
    }
    .hero {
      width: 100%;
      height: auto;
      display: block;
    }
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 0;
    }
    .links a {
      margin: 0 10px;
      text-decoration: none;
      color: #333;
      font-weight: bold;
    }
    .primary-overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.5);
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .selling-point {
      color: #fff;
      text-align: center;
    }
    .selling-point h2 {
      font-size: 2.5em;
      margin-bottom: 10px;
    }
    .selling-point h3 {
      font-size: 1.5em;
      margin-bottom: 20px;
    }
    .ctas {
      display: flex;
      justify-content: center;
      gap: 10px;
    }
    .cta-main, .cta-sec {
      background-color: #ff7e67;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      border-radius: 5px;
      font-size: 1em;
    }
    .cta-main a, .cta-sec a {
      text-decoration: none;
      color: #fff;
      font-weight: bold;
    }
    .classes {
      padding: 40px 0;
      text-align: center;
    }
    .classes-description h2 {
      font-size: 2em;
      margin-bottom: 10px;
    }
    .classes-description h3 {
      font-size: 1.2em;
      margin-bottom: 30px;
      color: #666;
    }
    .images {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      gap: 20px;
    }
    .images div {
      flex: 1 1 30%;
      display: flex;
      flex-direction: column;
      align-items: center;
      border: 2px solid #ccc;
      padding: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.2s ease-in-out;
    }
    .images div:hover {
      transform: scale(1.05);
    }
    .images h3 {
      margin-bottom: 10px;
      font-size: 1.2em;
      color: #333;
    }
    .images .image {
      width: 100%;
      height: auto;
      max-width: 100%;
      border-radius: 8px;
    }
    .about {
      padding: 40px 0;
      text-align: center;
    }
    .about .our-story {
      margin-bottom: 20px;
    }
    .about h2 {
      font-size: 2em;
      margin-bottom: 10px;
    }
    .about p {
      font-size: 1em;
      color: #666;

    }
    footer {
      text-align: center;
      padding: 20px 0;
      background-color: #f8f8f8;
    }
    footer p {
      margin: 0;
      font-size: 0.9em;
      color: #666;
    }
  </style>
</head>
<body>
  <div class="container">
    <section class="front-page">
      <img class="hero" src="{{ asset('frontend/assets/hero.png') }}" alt="meditation">
      <img class="hero" src="{{ asset('frontend/assets/background.png') }}" alt="Hero Image">
      <nav>
        <div class="links">
          @auth
            @if (Auth::user()->is_admin)
              <a href="{{ route('root') }}">Dashboard</a>
            @else
              <a href="{{ route('root') }}">Dashboard</a>
              <a href="{{ route('tickets.flights') }}">Book a Flight</a>
              <a href="{{ route('tickets.userTickets') }}">My Booking</a>
            @endif
            <a href="javascript:void();" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
              <i class="bx bx-power-off font-size-16 me-1 text-danger align-middle"></i> @lang('translation.Logout')
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              @csrf
            </form>
          @else
            <a href="{{ route('login') }}">Login</a>
            @if (Route::has('register'))
              <a href="{{ route('register') }}">Register</a>
            @endif
          @endauth
        </div>
        <svg width="44" height="18" viewBox="0 0 44 18" fill="none" xmlns="http://www.w3.org/2000/svg">
          <line class="line" y1="1" x2="44" y2="1" stroke="white" stroke-width="2" />
          <line class="line" y1="9" x2="27" y2="9" stroke="white" stroke-width="2" />
          <line class="line" y1="17" x2="11" y2="17" stroke="white" stroke-width="2" />
        </svg>
      </nav>
      <div class="primary-overlay">
        <div class="selling-point">
          <h2>Welcome to CoudTrip.co</h2>
          <h3>Fly with Malaysia Airlines by booking with us at an affordable price.
          </h3>
          <div class="ctas">
            @auth
              <button class="cta-main">
                @if (Auth::user()->is_admin)
                  <a href="{{ route('root') }}">Dashboard</a>
                @else
                  <a href="{{ route('tickets.flights') }}">Book A Flight</a>
                @endif
              </button>
            @else
              <button class="cta-main">
                <a href="{{ route('tickets.flights') }}">Book A Flight</a>
              </button>
              <button class="cta-sec">
                <a href="{{ route('register') }}">Sign up</a>
              </button>
            @endauth
          </div>
        </div>
      </div>
    </section>

    <section class="classes">
      <div class="classes-description">
        <h2>Top Destination</h2>
        <h3>It's time to heal your mind and body</h3>
      </div>
      <div class="images">
        <div class="Langkawi">
          <h3>Langkawi</h3>
          <img class="image" src="{{ asset('frontend/assets/langkawi.jpg') }}" alt="Langkawi">
        </div>
        <div class="Sandakan">
          <h3>Sandakan</h3>
          <img class="image" src="{{ asset('frontend/assets/sandakan.jpg') }}" alt="Sandakan">
        </div>
        <div class="Kota Kinabalu">
          <h3>Kota Kinabalu</h3>
          <img class="image" src="{{ asset('frontend/assets/kotakinabalu.jpg') }}" alt="Kota Kinabalu">
        </div>
      </div>
    </section>

    <section class="about">
      <div class="our-story">
        <h2>About Us</h2>
        <p style="text-align:justify;">
          Welcome to CloudTrip.co, where simplicity meets efficiency in airline booking. 
          At CloudTrip.co, we specialize in creating intuitive solutions for seamless travel experiences. 
          Our dedicated team has crafted a user-friendly airline booking system tailored specifically for Malaysia Airlines. 
          Whether you're a frequent flyer or planning your first trip, CloudTrip.co ensures a smooth booking process from start to finish. 
          Experience convenience at your fingertips with CloudTrip.co - your trusted partner in travel.
        </p>
      </div>
    </section>
    <div class="images">
        <div class="Promotion">
        <h2>!!!NOW PROMOTION!!!</h2>
          <img src="{{ asset('frontend/assets/promotion.jpg') }}" alt="Promotion" width="500" height="500">
        </div>

  </div>

  <footer>
    <div>
      <p>©
        <script>
          document.write(new Date().getFullYear())
        </script> {{ config('app.name') }}. Designed by CloudTrip.co
      </p>
    </div>
  </footer>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.1/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.1/ScrollTrigger.min.js"></script>
  <script src="{{ asset('frontend/script.js') }}"></script>
</body>
</html>
