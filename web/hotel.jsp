<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HOLIDAY INN.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="four.css">
        <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
        <link rel = "icon" href = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/logo.png?raw=true" type = "image/png">
    </head>
    <body>
        <%
   String cid;        
    if(request.getAttribute("contact")==null)
            {
                response.sendRedirect("logincheck");
            }
            else
            {
               request.setAttribute("contact",request.getAttribute("contact"));
              out.println("contact is "+request.getAttribute("contact"));
              cid=String.valueOf(request.getAttribute("contact"));
              
        
        }
            
%>
        <!-- header -->
        <header class = "header" id = "header">
            <div class = "head-top">
                <div class = "site-name">
                    <span>Holiday Inn.</span>
                </div>
                <div class = "site-nav">
                    <form action="showbookings" style="display:inline;">    <input type = "hidden"  value="<%=String.valueOf(request.getAttribute("contact"))%>" name="contactid">
                        <button>See bookings</button>
                    </form>
                    <a href="logincheck">go back to home page</a>
                    
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>NICE AND COMFORTABLE PLACE TO STAY</h2>
                <p>Escape to the epitome of luxury in our handpicked ultra-premium stays packed with signature services.</p>
                <button type = "button" class = "head-btn">GET STARTED</button>
            </div>
        </header>
        <!-- end of header -->

        <!-- side navbar -->
        <div class = "sidenav" id = "sidenav">
            <span class = "cancel-btn" id = "cancel-btn">
                <i class = "fas fa-times"></i>
            </span>

            <ul class = "navbar">
                <li><a href = "#header">home</a></li>
                <li><a href = "#services">services</a></li>
                <li><a href = "#rooms">rooms</a></li>
                <li><a href = "#customers">customers</a></li>
            </ul>
            <button class = "btn sign-up">sign up</button>
            <button class = "btn log-in">log in</button>
        </div>
        <!-- end of side navbar -->

        
        <div id = "Modal"></div>
       
        <!-- body content  -->
        <section class = "services sec-width" id = "services">
            <div class = "title">
                <h2>services</h2>
            </div>
            <div class = "services-container">
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-utensils"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Food Service/ Food Runner</h2>
                        <p>We not only have great products, we also offer value-added services to help you attract customers and serve the best they deserve.
                            <br>
                            We have a team of food chefs and beverage chefs to understand unique requirement of every customer.
                </p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-swimming-pool"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Refreshment</h2>
                        <p>All guests staying at the hotel typically get access to exceptional amenities including free breakfast, free WiFi, free parking, an on-site restaurant, room service, a fitness facility, a pool, a digital key, digital check-in, business services, laundry, conference spaces, etc.</p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-broom"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Housekeeping</h2>
                        <p>The hotel deals with the maintenance and hygiene of premises and all associated services. We serve our clients with absolute integrity and professionalism. Our Service stands apart from others because we take the time to understand the specific requirements of every client and use our expertise and resources to deliver the best. We have set the benchmark for excellence in the housekeeping industry.</p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-door-closed"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Room Security</h2>
                        <p>Security officers patrol the interior and exterior of the property, assist in checking alarm systems and fire equipment.
                        <br>
                        Security officers maintain accurate records of activity logs, camera monitoring, guest and employee logs and codebooks.
                        <br>
                        This ensures the security of all the guest living there and builds trust.
                    </p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
            </div>
        </section>

        <div class = "book" style="background-color: white;">
            <form class = "book-form" action="booking">
                    <input type = "hidden"  value="<%=String.valueOf(request.getAttribute("contact"))%>" name="contactid">
                
                <div class = "form-item">
                    <label for = "checkin-date">Check In Date: </label>
                    <input type = "date" id = "chekin-date" name="checkin">
                </div>
                <div class = "form-item">
                    <label for = "checkout-date">Check Out Date: </label>
                    <input type = "date" id = "chekout-date" name="checkout">
                </div>
                <div class = "form-item">
                    <label for = "adult">Adults: </label>
                    <input type = "number" min = "1" max="10" value = "1" name = "adult">
                </div>
                <div class = "form-item">
                    <label for = "children">Children: </label>
                    <input type = "number" min = "1" value = "1" max="10" name = "children">
                </div>
                    <h1>room type check</h1>
                <div class = "form-item">
                    <label for = "rooms">Rooms quantity: </label>
                    <input type = "number" min = "1" value = "1" name = "rooms" max="10">
                </div>
                <div class = "form-item">
                    <label for = "rooms">Room Type </label>
                   
                    <select name="roomtype">
                        <option value="1">Luxury</option>
                        <option value="2">Ac Room</option>
                        <option value="3">Non Ac</option>
                        
                    </select>
                </div>
            
                    <div class = "form-item">
                    <input type = "submit" class = "btn" value = "Book Now">
                </div>
                
            </form>
        </div>

        <section class = "rooms sec-width" id = "rooms">
            <div class = "title">
                <h2>rooms</h2>
            </div>
            <div class = "rooms-container">
                <!-- single room -->
                <article class = "room">
                    <div class = "room-image">
                        <img src = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/sonnie-hiles-DhFHtkECn7Q-unsplash.jpg?raw=true" alt = "room image">
                    </div>
                    <div class = "room-text">
                        <h3>Luxury Rooms</h3>
                        <ul>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus exercitationem repellendus maxime ullam tempore architecto provident unde expedita quam beatae, dolore eligendi molestias sint tenetur incidunt voluptas. Unde corporis qui iusto vitae. Aut nesciunt id iste, cum esse commodi nemo?</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla corporis quasi officiis cumque, fugiat nostrum sunt, tempora animi dicta laborum beatae ratione doloremque. Delectus odio sit eius labore, atque quo?</p>
                        <p class = "rate">
                            <span>$99.00 /</span> Per Night
                        </p>
                        <button type = "button" class = "btn">book now</button>
                    </div>
                </article>
                <!-- end of single room -->
                <!-- single room -->
                <article class = "room">
                    <div class = "room-image">
                        <img src = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/img2.jpg?raw=true" alt = "room image">
                    </div>
                    <div class = "room-text">
                        <h3>Luxury Rooms</h3>
                        <ul>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus exercitationem repellendus maxime ullam tempore architecto provident unde expedita quam beatae, dolore eligendi molestias sint tenetur incidunt voluptas. Unde corporis qui iusto vitae. Aut nesciunt id iste, cum esse commodi nemo?</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla corporis quasi officiis cumque, fugiat nostrum sunt, tempora animi dicta laborum beatae ratione doloremque. Delectus odio sit eius labore, atque quo?</p>
                        <p class = "rate">
                            <span>$99.00 /</span> Per Night
                        </p>
                        <button type = "button" class = "btn">book now</button>
                    </div>
                </article>
                <!-- end of single room -->
                <!-- single room -->
                <article class = "room">
                    <div class = "room-image">
                        <img src = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/img3.jpg?raw=true" alt = "room image">
                    </div>
                    <div class = "room-text">
                        <h3>Luxury Rooms</h3>
                        <ul>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Lorem ipsum dolor sit amet.
                            </li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus exercitationem repellendus maxime ullam tempore architecto provident unde expedita quam beatae, dolore eligendi molestias sint tenetur incidunt voluptas. Unde corporis qui iusto vitae. Aut nesciunt id iste, cum esse commodi nemo?</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla corporis quasi officiis cumque, fugiat nostrum sunt, tempora animi dicta laborum beatae ratione doloremque. Delectus odio sit eius labore, atque quo?</p>
                        <p class = "rate">
                            <span>$99.00 /</span> Per Night
                        </p>
                        <button type = "button" class = "btn">book now</button>
                    </div>
                </article>
                <!-- end of single room -->
            </div>
        </section>


        <section class = "customers" id = "customers">
            <div class = "sec-width">
                <div class = "title">
                    <h2>customers</h2>
                </div>
                <div class = "customers-container">
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>We Loved it</h3>
                        <p>The rooms were very spacious.
                            The room service, housekeeping was great.
                            Breakfast buffet had a lot of variety, loved it
                            Thank you to the front desk team, Alokit for making our stay comfortable for us</p>
                        <img src = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/tania-mousinho-fKmzq3fue0I-unsplash.jpg?raw=true" alt = "customer image">
                        <span>Gunjan, India</span>
                    </div>
                    <!-- end of single customer -->
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>Experience of Exclusive Epicurean Brunch</h3>
                        <p>All with the luxury stay, Hyatt Udyog Vihar popularly known for its fine dining. The multiple cuisines have always been its forte and it never misses any opportunities to surprise you with the best. I visited here to try out their Carribean Brunch and trust me it was outstanding. The whole brunch was the combination of fine taste, good health and wholesome meal. From the starters/ appetisers like Cream of Broccoli, Millet Bhel, Beetroot Gulauti etc have been best served food on the table. There are many options for non vegetarians too. The combination of spices and finest ingredients made every thing simply remarkable.</p>
                        <img src = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/michael-dam-mEZ3PoFGs_k-unsplash.jpg?raw=true
                        " alt = "customer image">
                        <span>Vanisha, India</span>
                    </div>
                    <!-- end of single customer -->
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>Impeccable services</h3>
                        <p>Impeccable hotel services by Narendra from housekeeping and saqib from front office was very helpful and kind. Loved the small towel art (dog) he made for me. They both made me feel I am staying at my home only. Would love to come back soon to this wonderful hotel</p>
                        <img src = "https://github.com/kalyani3665/Hotel-Booking-Website/blob/main/hotel%20booking%20website/cus3.jpg?raw=true" alt = "customer image">
                        <span>Divyanshi Verma, India</span>
                    </div>
                    <!-- end of single customer -->
                </div>
            </div>
        </section>
        <!-- end of body content -->
        
        <!-- footer -->
        <footer class = "footer">
            <div class = "footer-container">
                <div>
                    <h2>About Us </h2>
                    <p>Holiday Inn. is a business hotel located just 40mins away from the airport. It is a different place for a multitasking traveler where conveniences, uncomplicated services and flexible spaces help guests to experience a seamless shift from corporate to leisure.

                    </p>
                    <ul class = "social-icons">
                        <li class = "flex">
                            <i class = "fa fa-twitter fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-facebook fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-instagram fa-2x"></i>
                        </li>
                    </ul>
                </div>

                <div>
                    <h2>Useful Links</h2>
                    <a href = "#">Blog</a>
                    <a href = "#">Rooms</a>
                    <a href = "#">Subscription</a>
                    <a href = "#">Gift Card</a>
                </div>

                <div>
                    <h2>Privacy</h2>
                    <a href = "#">Career</a>
                    <a href = "#">About Us</a>
                    <a href = "#">Contact Us</a>
                    <a href = "#">Services</a>
                </div>

                <div>
                    <h2>Have A Question</h2>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-map-marker-alt"></i>
                        </span>
                        <span>
                            203 Holiday Inn., Sidhrawali, Delhi,India
                        </span>
                    </div>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-phone-alt"></i>
                        </span>
                        <span>
                            +84545 37534 48
                        </span>
                    </div>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-envelope"></i>
                        </span>
                        <span>
                            holidayinn2023@gmail.com
                        </span>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end of footer -->
        
        <script src="script.js"></script>
    </body>
</html>