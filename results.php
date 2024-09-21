<?php
session_start();
if (!isset($_SESSION['filtered_cars'])) {
    header("Location: recommend.php");
    exit();
}

$filtered_cars = $_SESSION['filtered_cars'];
$filters = $_SESSION['filters'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Recommendation Service - Results</title>
    <style>
            <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url("yello.jpg");
            background-size: cover;
            scroll-behavior: smooth;
        }

        header {
            background-color: #b31515d5;
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

        #results {
            padding: 50px 20px;
            text-align: center;
        }

        #results h2 {
            margin-bottom: 20px;
            font-size: 2.5rem;
            color: lightyellow;
            text-shadow: 3px 8px 4px rgba(0,0,0,0.54);
        }

        #filters {
           align-items: left;
            padding: 20px;
            border-radius: 10px;
            background-color: rgb(255,255,255,0.21);
            box-shadow: 1px 2px 12px 5px rgba(0, 0, 0, 0.304);
            margin-bottom: 30px;
            display: inline-block;
        }

        #filters p {
            margin-bottom: 10px;
            font-weight: bold;
            color:white;
        }
        #filters ul{
            align-items: left;
        }
        #filters span {
            color:white;
            background-color: #d1b783;
            padding: 5px 10px;
            margin: 0 5px;
            border-radius: 20px;
            font-size: 0.9rem;
        }

        #car-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .car-card {
            background: rgb(255,255,255,0.521);
            border-radius: 10px;
            color:purple;
            text-shadow:3px 2px 4px rgba(0,0,0,0.34);
            box-shadow: 1px 2px 12px 5px rgba(0, 0, 0, 0.304);
            overflow: hidden;
            width: 300px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .car-card h3{
            color:darkgreen;
            text-shadow:3px 2px 4px rgba(0,0,0,0.21);
        }
        .car-card:hover {
            transform:translatey(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }
        .car-details {
            padding: 20px;
        }

        .car-name {
            font-size: 1.4rem;
            margin-bottom: 10px;
            color: #333;
        }

        .car-spec {
            font-size: 0.9rem;
            color: #666;
            margin-bottom: 5px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            width: 100%;
        }

        @media (max-width: 768px) {
            #results h2 {
                font-size: 2rem;
            }
            .car-card {
                width: 100%;
                max-width: 300px;
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
                <li><a href="recommend.php">Select Filters</a></li>
            </ul>
        </nav>
    </header>

    <section id="results">
        <h2>Recommended Cars</h2>
        <div id="filters">
            <h3>Your selected filters:</h3>
            <ul>
                <?php foreach ($filters as $key => $value): ?>
                    <?php if (!empty($value)): ?>
                        <li> <?php echo $value; ?></li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
        </div>
        <div id="car-list">
        <?php if (count($filtered_cars) > 0): ?>
    <?php foreach ($filtered_cars as $car): ?>
        <div class="car-card">
            <h3><?php echo $car['Car Name']; ?></h3>
            <p>Wheel Drive: <?php echo $car['Wheel Drive']; ?></p>
            <p>Vehicle Type: <?php echo $car['Vehicle Type']; ?></p>
            <p>Horsepower Range: <?php echo $car['Horsepower Range']; ?></p>
            <p>Driving Assist: <?php echo $car['Driving Assist']; ?></p>
            <p>Price: ₹<?php echo number_format($car['Price'], 2); ?></p>
        </div>
    <?php endforeach; ?>
<?php else: ?>
    <p>No cars found matching your criteria. Please try different filters.</p>
<?php endif; ?>
        </div>
    </section>

    <footer>
        <p>© 2024 Car Recommendation Service. All rights reserved.</p>
    </footer>
</body>
</html>
