/* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(180deg, #0f0f0f, #240046); /* Dark Gradient Background */
    color: #fff;
    text-align: center;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}

/* Main Container */
.container {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Logo Section */
.logo-wrapper {
    position: relative;
    width: 150px;
    height: 150px;
    z-index: 3; /* Ensure the logo is above the rings */
}

.logo {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    box-shadow: 0 0 20px rgba(255, 255, 255, 0.6);
}

/* Animated Rings */
.rings {
    position: absolute; /* Position relative to the nearest positioned parent */
    top: 50%;
    left: 50%;
    transform: translate(-35%, -92%); /* Center perfectly */
    z-index: 1; /* Ensure it stays behind the logo */
    width: 250px; /* Ensure the size matches the logo and desired effect */
    height: 250px; /* Keep it as a perfect circle */
    pointer-events: none; /* Prevent interaction with the rings */
}


.ring {
    position: absolute;
    width: 200px;
    height: 200px;
    border: 2px solid rgba(255, 255, 255, 0.3); /* Initial Glow Color */
    border-radius: 50%;
    animation: rotate 6s infinite linear, distort 8s infinite ease-in-out;
    mix-blend-mode: screen;
    pointer-events: none; /* Prevent interfering with user actions */
}

/* Unique Animations for Each Ring */
.ring:nth-child(1) {
    border-color: rgba(255, 0, 255,0.7); /* Cyan */
    animation-duration: 6s, 12s;
}

.ring:nth-child(2) {
    border-color: rgba(0, 0, 0, 0.7); /* Pink */
    animation-duration: 7s, 10s;
    animation-direction: reverse; /* Reverse spin for variation */
}

.ring:nth-child(3) {
    border-color: rgba(0, 0, 255, 0.7); /* Yellow */
    animation-duration: 8s, 14s;
}

/* Keyframes for Distortion */
@keyframes distort {
    0% {
        transform: scale(1) translate(0, 0);
    }
    25% {
        transform: scale(1.1) translate(10px, -10px);
    }
    50% {
        transform: scale(0.9) translate(-15px, 15px);
    }
    75% {
        transform: scale(1.2) translate(5px, -5px);
    }
    100% {
        transform: scale(1) translate(0, 0);
    }
}

/* Keyframes for Rotating Rings */
@keyframes rotate {
    0% {
        transform: rotate(0deg);
    }
    100% {
        transform: rotate(360deg);
    }
}

/* Title Styling */
h1 {
    font-size: 28px;
    margin-top: 20px;
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
}

p {
    font-size: 18px;
    margin: 10px 0;
    color: rgba(255, 255, 255, 0.8);
}

/* Key Features Section */
.features {
    margin-top: 20px;
    text-align: left;
    list-style: none;
}

.features ul {
    list-style: none;
    padding: 0;
}

.features li {
    font-size: 16px;
    margin-bottom: 8px;
    padding-left: 20px;
    position: relative;
    color: rgba(255, 255, 255, 0.8);
}

.features li::before {
    content: "•";
    position: absolute;
    left: 0;
    color: #ffa500; /* Golden Bullet */
}

/* Explore Button */
.explore-btn {
    margin-top: 20px;
    padding: 10px 20px;
    border-radius: 20px;
    border: none;
    background: linear-gradient(90deg, #ff4500, #ff1493, #00ced1);
    color: #fff;
    font-weight: bold;
    font-size: 16px;
    text-transform: uppercase;
    cursor: pointer;
    box-shadow: 0 0 20px rgba(255, 69, 0, 0.5);
    text-decoration: none;
    transition: all 0.3s ease;
}

.explore-btn:hover {
    background: linear-gradient(90deg, #00ced1, #ff1493, #ff4500);
    box-shadow: 0 0 25px rgba(255, 69, 0, 0.8);
}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Developer Repository</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <!-- Logo Section -->
        <div class="logo-wrapper">
            <img src="https://assets.onecompiler.app/42z4p2yvk/42z4nc2xm/Logo.jpg" alt="AI Logo" class="logo">
        </div>

        <!-- Animated Rings -->
        <div class="rings">
            <div class="ring"></div>
            <div class="ring"></div>
            <div class="ring"></div>
        </div>

        <!-- Title -->
        <h1>Welcome to the AI Developer Repository</h1>
        <p>Innovative solutions for modern challenges in AI and programming.</p>

        <!-- Key Features -->
        <div class="features">
            <ul>
                <li>Creative and analytical solutions</li>
                <li>Efficient problem-solving techniques</li>
                <li>State-of-the-art AI implementations</li>
            </ul>
        </div>
        <a href="#" class="explore-btn">Explore More</a>
    </div>
</body>
</html>
