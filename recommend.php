<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Recommendation Service - Recommend a Car</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url("motel.jpg");
            background-size:cover ;
            background-repeat: no-repeat;
            scroll-behavior: smooth;
        }

        header {
            background-color: #611a83d5;
            color: white;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            font-size: 2.5rem;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }
        nav ul {
            list-style-type: none;
            background-color: #120f0f;
            display: flex;
            justify-content: center;
            padding: 10px;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #343232;
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.2s;
        }

        nav ul li a:hover {
            background-color: #515050;
            transform: scale(1.05);
        }

        nav ul li a:active {
            transform: scale(0.98);
        }

        #recommend-section {
            padding: 50px;
            text-align: center;
            background: linear-gradient(to right, #9d4b62, #6a1f95);
            border-radius: 10px;
            margin: 20px;
        }

        #recommend-section h2 {
            margin-bottom: 20px;
            font-size: 2rem;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .filter-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-bottom: 30px;
        }

        .filter-box {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: calc(50% - 10px);
            max-width: 300px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .filter-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }

        .filter-box label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        .filter-box select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        #recommend-button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 20px;
        }

        #recommend-button:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        #recommend-button:active {
            transform: scale(0.98);
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            width: 100%;
        }

        @media (max-width: 768px) {
            #recommend-section h2 {
                font-size: 1.5rem;
            }
            .filter-box {
                width: 100%;
            }
        }
    </style>
</head>
<body> 
<header>
<h1>Car Recommendation Service</h1>
<nav>
        <ul>
            <li><a href="home.html">Home</a></li>
            <li><a href="aboutus.html">About Us</a></li>
            <li><a href="contact.html">Contact Us</a></li>
        </ul>
    </nav>
    </header>
    <section id="recommend-section" class="section">
        <h2>Find Your Perfect Car</h2>
        <form action="filtercars.php" method="POST">
            <div class="filter-container">
                <div class="filter-box">
                    <label for="wheeldrive">Wheel Drive:</label>
                    <select name="wheeldrive" id="wheeldrive">
                        <option value="">Any</option>
                        <option value="Two Wheel Drive">Two Wheel Drive</option>
                        <option value="Rear Wheel Drive">Rear Wheel Drive</option>
                        <option value="4-Wheel Drive">4-Wheel Drive</option>
                    </select>
                </div>

                <div class="filter-box">
                    <label for="vehicletype">Vehicle Type:</label>
                    <select name="vehicletype" id="vehicletype">
                        <option value="">Any</option>
                        <option value="Sedan">Sedan</option>
                        <option value="Hatchback">Hatchback</option>
                        <option value="SUV">SUV</option>
                        <option value="MPV">MPV</option>
                        <option value="CUV">CUV</option>
                        <option value="EV">EV</option>
                    </select>
                </div>

                <div class="filter-box">
                    <label for="horsepowerrange">Horsepower Range:</label>
                    <select name="horsepowerrange" id="horsepowerrange">
                        <option value="">Any</option>
                        <option value="Family Range">Family Range</option>
                        <option value="Sports/Racing Range">Racing/Sports Range</option>
                    </select>
                </div>

                <div class="filter-box">
                    <label for="drivingassist">Driving Assist:</label>
                    <select name="drivingassist" id="drivingassist">
                        <option value="">Any</option>
                        <option value="ADAS enabled">ADAS enabled</option>
                        <option value="No ADAS">NO ADAS</option>
                    </select>
                </div>
            </div>
            <button id="recommend-button" type="submit">Find My Perfect Car</button>
        </form>
    </section>

    <footer>
        <p>© 2024 Car Recommendation Service. All rights reserved.</p>
    </footer>
</body>
</html>
