<!DOCTYPE html>
<html lang="en">

<head>
  <title>VGrow, Home page</title>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  <link rel="shortcut icon" href="./sources/logo.jpg" type="image/x-icon" />
  <link rel="stylesheet" href="style.css" />
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
      <div class="container">
        <a class="navbar-brand" href="index.php">VGrow</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav m-auto mb-3 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link py-4" href="index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link py-4" href="course.php">Courses</a>
            </li>
            <li class="nav-item">
              <a class="nav-link py-4" href="aboutUs.php">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link py-4" href="ourTeam.php">Our Team</a>
            </li>
            <li class="nav-item">
              <a class="nav-link py-4" href="Oppurtunity.php">Oppurtunity</a>
            </li>
            <li class="nav-item">
              <a class="nav-link py-4" href="contactUs.php"
              style="color: #0866ff; border-bottom: 3px solid #0866ff">Contact Us</a>
            </li>
          </ul>
          <div>
            <?php
            session_start();
            if (isset($_SESSION['username'])) {
              echo "Welcome, " . $_SESSION['username'];
              echo " ";
              $userId = $_SESSION['userId'];
              // echo $userId ;
              echo "<br>"; // Add line break for spacing
              $isAdmin = $_SESSION['isAdmin'];
              // echo $isAdmin;
              if($isAdmin == true){
             
                echo "<a href='admin\admin.php'>Admin Page";
                echo "<a/>";
              }
              ?>
              <a href="logout.php">Logout</a>
              <form action="cart.php" method="POST">
                <input type="hidden" name="userId" value="<?php echo $userId; ?>">
                <button type="submit">My Cart</button>
              </form>
             

              <!-- <a href="cart.php">My Cart</a> try session to find out about session later -->

              <?php
            
            } else {
              ?>
              <a href="login.html">Login</a>
              <div>or</div>
              <a href="createUserForm.html">Sign UP!</a>
              <?php

            }
            ?>
          </div>
        </div>
      </div>
    </nav>
  </header>
 

  <main>
      <h3 class="text-center pt-5 text-secondary">Contact</h3>
      <div class="container">
        <div class="row g-3 py-5">
          <div class="col">
            <div
              class="box d-flex flex-column align-items-center text-center p-4"
            >
              <i class="fa-solid fa-phone text-secondary fs-4 p-4"></i>
              <p class="fs-5 fw-semibold text-secondary">
                096 5555 23 / 012 5555 23
              </p>
              <p class="fs-5 text-secondary lh-lg">
                We're interested in working together! Contact now.
              </p>
            </div>
          </div>
          <div class="col">
            <div
              class="box d-flex flex-column align-items-center text-center p-5"
            >
              <i class="fa-solid fa-envelope fs-4 pb-4 text-secondary"></i>
              <p class="fs-5 fw-semibold text-secondary">VGrow@gmail.com</p>
              <p class="fs-5 text-secondary lh-lg">
                Do you want to know about VGrow? Send a message.
              </p>
            </div>
          </div>
          <div class="col">
            <div
              class="box d-flex flex-column align-items-center text-center p-5"
            >
              <i class="fa-solid fa-location-dot fs-4 pb-4 text-secondary"></i>
              <p class="fs-5 text-secondary lh-lg">
                Floor 2, Room 207, Building A, RUPP, មហាវិថី
                សហពន្ធ័រុស្ស៊ី(១១០), ភ្នំពេញ
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container d-flex flex-column align-items-center py-4 map">
        <h3 class="pb-5 text-center text-secondary">Address</h3>
        <div class="row">
          <div class="col">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3908.770586988356!2d104.88811507466836!3d11.56829714408951!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3109519fe4077d69%3A0x20138e822e434660!2z4Z6f4Z624Z6A4Z6b4Z6c4Z634Z6R4Z-S4Z6Z4Z624Z6b4Z-Q4Z6Z4Z6X4Z684Z6Y4Z634Z6T4Z-S4Z6R4Z6X4Z-S4Z6T4Z-G4Z6W4Z-B4Z6J!5e0!3m2!1skm!2skh!4v1702130218273!5m2!1skm!2skh"
              width="600"
              height="450"
              style="border: 0"
              allowfullscreen=""
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
        </div>
      </div>
    </main>










  <footer>
    <div class="r5">
      <div class="r5-r1">
        <div class="r5-r1-c1">
          <h6 class="text-white">VGrow</h6>
        </div>
        <div class="r5-r1-c2">
          <h5>Languages</h5>
          <a href="#" class="nav-link">HTML</a>
          <a href="#" class="nav-link">CSS</a>
          <a href="#" class="nav-link">JavaScript</a>
          <a href="#" class="nav-link">Java</a>
          <a href="#" class="nav-link">Python</a>
          <a href="#" class="nav-link">PHP</a>
        </div>
        <div class="r5-r1-c3">
          <h5>Support</h5>
          <a href="#" class="nav-link">Privacy Policy</a>
          <a href="#" class="nav-link">Terms & Conditions</a>
          <a href="#" class="nav-link">Support</a>
          <a href="#" class="nav-link">FAQ</a>
        </div>
        <div class="r5-r1-c4">
          <h5>Contact Us</h5>
          <a href="#" class="nav-link"><i class="fa-solid fa-phone"></i> 023 5555 23</a>
          <a href="#" class="nav-link"><i class="fa-solid fa-envelope"></i> VGrow@gmail.com</a>
          <a href="https://www.google.com/maps/place/%E1%9E%9F%E1%9E%B6%E1%9E%80%E1%9E%9B%E1%9E%9C%E1%9E%B7%E1%9E%91%E1%9F%92%E1%9E%99%E1%9E%B6%E1%9E%9B%E1%9F%90%E1%9E%99%E1%9E%97%E1%9E%BC%E1%9E%98%E1%9E%B7%E1%9E%93%E1%9F%92%E1%9E%91%E1%9E%97%E1%9F%92%E1%9E%93%E1%9F%86%E1%9E%96%E1%9F%81%E1%9E%89/@11.5787015,104.8812305,15z/data=!4m10!1m2!2m1!1srupp!3m6!1s0x3109519fe4077d69:0x20138e822e434660!8m2!3d11.5682919!4d104.89069!15sCgRydXBwkgEKdW5pdmVyc2l0eeABAA!16s%2Fm%2F0278m39?entry=ttu"
            target="_blank" class="nav-link"><i class="fa-solid fa-location-dot"></i> មហាវិថី សហពន្ធ័រុស្ស៊ី
            (១១០), ភ្នំពេញ</a>
        </div>
      </div>
      <div class="r5-r2">
        <div class="container">
          <p>
            <i class="fa-solid fa-copyright"></i> 2023. All rights reserved
          </p>
        </div>
      </div>
    </div>
  </footer>

  <script src="index.js"></script>

  <!-- Font Awesome  -->
  <script src="https://kit.fontawesome.com/1f1308a9f0.js" crossorigin="anonymous"></script>

  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
    crossorigin="anonymous"></script>
</body>

</html>