<!--==============================
    Breadcumb
============================== -->
    <div class="breadcumb-wrapper " data-bg-src="assets/img/bg/breadcumb-bg.jpg">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title">Tour Details</h1>
                <ul class="breadcumb-menu">
                    <li><a href="index.php?page=home-travel">Home</a></li>
                    <li>Tour Details</li>
                </ul>
            </div>
        </div>
    </div><!--==============================
tour Area
==============================-->
    <section class="space">
        <?php 
        $pid=intval($_GET['pkgid']);
        $sql = "SELECT * from tbltourpackages where PackageId=:pid";
        $query = $dbh->prepare($sql);
        $query -> bindParam(':pid', $pid, PDO::PARAM_STR);
        $query->execute();
        $results=$query->fetchAll(PDO::FETCH_OBJ);
        $cnt=1;
        if($query->rowCount() > 0)
        {
        foreach($results as $result)
        {	?>

        <div class="container">
            <div class="row">
                <div class="col-xxl-8 col-lg-7">
                    <div class="tour-page-single">
                        <div class="slider-area tour-slider1">
                            <div class="swiper th-slider mb-4" id="tourSlider4" data-slider-options='{"effect":"fade","loop":true,"thumbs":{"swiper":".tour-thumb-slider"},"autoplayDisableOnInteraction":"true"}'>
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_1.jpg" alt="img">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_2.jpg" alt="img">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_3.jpg" alt="img">
                                        </div>
                                    </div>

                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_1.jpg" alt="img">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_2.jpg" alt="img">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_3.jpg" alt="img">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper th-slider tour-thumb-slider" data-slider-options='{"effect":"slide","loop":true,"breakpoints":{"0":{"slidesPerView":2},"576":{"slidesPerView":"2"},"768":{"slidesPerView":"3"},"992":{"slidesPerView":"3"},"1200":{"slidesPerView":"3"}},"autoplayDisableOnInteraction":"true"}'>
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_1.jpg" alt="Image">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_2.jpg" alt="Image">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_3.jpg" alt="Image">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_1.jpg" alt="Image">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_2.jpg" alt="Image">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="tour-slider-img">
                                            <img src="assets/img/tour/tour_inner_3.jpg" alt="Image">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button data-slider-prev="#tourSlider4" class="slider-arrow style3 slider-prev"><img src="assets/img/icon/hero-arrow-left.svg" alt=""></button>
                            <button data-slider-next="#tourSlider4" class="slider-arrow style3 slider-next"><img src="assets/img/icon/hero-arrow-right.svg" alt=""></button>
                        </div>
                        <div class="page-content">
                            <div class="page-meta mb-45">
                                <a class="page-tag" href="index.php?page=tour">Featured</a>
                                <span class="ratting"><i class="fa-sharp fa-solid fa-star"></i><span>4.8</span></span>
                            </div>
                            <h2 class="box-title"><?php echo htmlentities($result->PackageName);?></h2>
                            <h4 class="tour-price"><span class="currency">$<?php echo htmlentities($result->PackagePrice);?></span>/Person</h4>
                            <p class="box-text mb-30"><?php echo htmlentities($result->PackageDetails);?></p>
                            <h2 class="box-title">Highlights</h2>
                            <p class="box-text mb-30"><?php echo htmlentities($result->PackageFetures);?></p>
                            <div class="checklist mb-50">
                                <ul>
                                    <li>Visit most popular location of Maldives</li>
                                    <li>Buffet Breakfast for all traveler with good quality.</li>
                                    <li>Expert guide always guide you and give informations.</li>
                                    <li>Best Hotel for all also great food.</li>
                                    <li>Helping all traveler for Money Exchange.</li>
                                    <li>Buffet Breakfast for all traveler with good quality..</li>
                                    <li>Buffet Breakfast for all traveler with good quality.</li>
                                </ul>
                            </div>
                            <h2 class="box-title">Basic Information</h2>
                            <p class="blog-text mb-35">voluptatem accusantium doloremque laudantium, totam rem aperiam,
                                eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt
                                explicabo. Dolorem ipsum quia dolor sit amet, consectetur, adipisci.</p>
                            <div class="destination-checklist mb-50">
                                <div class="checklist style2">
                                    <ul>
                                        <li>Destination</li>
                                        <li>Departure</li>
                                        <li>Language</li>
                                        <li>Reture Date</li>
                                        <li>Departure Date</li>
                                        <li>No. of Guide</li>
                                    </ul>
                                </div>
                                <div class="checklist style2">
                                    <ul>
                                        <li>Netherland</li>
                                        <li>Singapore Airport, Singapore</li>
                                        <li>English</li>
                                        <li>August 12, 2024</li>
                                        <li>Netherland</li>
                                        <li>25 Tour Places</li>
                                        <li>2 Person</li>
                                    </ul>
                                </div>
                            </div>
                            <h2 class="box-title">Included and Excluded</h2>
                            <p class="blog-text mb-35">voluptatem accusantium doloremque laudantium, totam rem aperiam,
                                eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt
                                explicabo. Dolorem ipsum quia dolor sit amet, consectetur, adipisci.</p>
                            <div class="destination-checklist">
                                <div class="checklist style2 style4">
                                    <ul>
                                        <li>Hotel Fair</li>
                                        <li>Transportation</li>
                                        <li>Breakfast</li>
                                        <li>Sightseeing</li>
                                        <li>Travel Tax</li>
                                        <li>Seasonal Food</li>
                                    </ul>
                                </div>
                                <div class="checklist style5">
                                    <ul>
                                        <li>WIFI</li>
                                        <li>Swimming Pool</li>
                                        <li>GYM</li>
                                        <li>Travel Insurance</li>
                                        <li>Family Expenses</li>
                                        <li>Family Expenses</li>
                                    </ul>
                                </div>
                            </div>

        <!--==================Date====================== -->




                            <h3 class="page-title mt-50 mb-0">Tour Plan</h3>
                            <ul class="nav nav-tabs tour-tab mt-10" role="tablist">
                                
<?php 
// Extract the 'pkgid' from the URL
$pkgid = isset($_GET['pkgid']) ? $_GET['pkgid'] : null;

if ($pkgid !== null) {
    $sql = "SELECT DISTINCT DateId FROM tbltouractivities WHERE PackageId = :pkgid";
    $query = $dbh->prepare($sql);
    $query->bindParam(':pkgid', $pkgid, PDO::PARAM_INT);
    $query->execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);

    // Check if any records were found
    if ($query->rowCount() > 0) {
        // Loop through and display the records
        foreach ($results as $result) {
            // Determine the label to display for the day
            $dayLabel = ($result->DateId >= 1 && $result->DateId <= 9) ? 'Day 0' . $result->DateId : 'Day ' . $result->DateId;
            
            if ($result->DateId == 1) {
                // Special case for DateId = 1
                ?>
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="day-tab1" data-bs-toggle="tab" data-bs-target="#day-tab1-pane" type="button" role="tab" aria-controls="day-tab1-pane" aria-selected="true"><?php echo htmlspecialchars($dayLabel); ?></button>
                </li>
                <?php
            } else {
                // Default case for other DateIds
                ?>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="day-tab<?php echo htmlspecialchars($result->DateId);?>" data-bs-toggle="tab" data-bs-target="#day-tab<?php echo htmlspecialchars($result->DateId);?>-pane" type="button" role="tab" aria-controls="day-tab<?php echo htmlspecialchars($result->DateId);?>-pane" aria-selected="false"><?php echo htmlspecialchars($dayLabel); ?></button>
                </li>
                <?php
            }
        }
    } else {
        echo "No records found for Package ID: " . htmlspecialchars($pkgid);
    }
} else {
    echo "Package ID not found in the URL.";
}
?>


                                
                            </ul>
                            <div class="tab-content">

                            <?php 
// Extract the 'pkgid' from the URL
$pkgid = isset($_GET['pkgid']) ? $_GET['pkgid'] : null;

if ($pkgid !== null) {
    $sql = "SELECT DateId, ActivityName FROM tbltouractivities WHERE PackageId = :pkgid ORDER BY DateId";
    $query = $dbh->prepare($sql);
    $query->bindParam(':pkgid', $pkgid, PDO::PARAM_INT);
    $query->execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);

    // Organize the results by DateId
    $activitiesByDay = [];
    foreach ($results as $result) {
        $activitiesByDay[$result->DateId][] = $result->ActivityName;
    }

    // Loop through each DateId and display the records
    foreach ($activitiesByDay as $dateId => $activities) {
        // Determine the label to display for the day
        $dayLabel = ($dateId >= 1 && $dateId <= 9) ? 'Day 0' . $dateId : 'Day ' . $dateId;

        // Check if it's the first day (DateId = 1)
        $activeClass = ($dateId == 1) ? 'show active' : 'show';
        ?>
        <div class="tab-pane fade <?php echo $activeClass; ?>" id="day-tab<?php echo htmlspecialchars($dateId); ?>-pane" role="tabpanel" aria-labelledby="day-tab<?php echo htmlspecialchars($dateId); ?>" tabindex="0">
            <div class="tour-grid-plan">
                <div class="checklist">
                    <ul>
                        <?php foreach ($activities as $activityName) { ?>
                            <li><?php echo htmlspecialchars($activityName); ?></li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        <?php
    }
} else {
    echo "Package ID not found in the URL.";
}
?>
                        



                            </div>
                <!--==================Date-END====================== -->
                        </div>

                    </div>
                </div>
                <div class="col-xxl-4 col-lg-5">
                    <aside class="sidebar-area">
                        <div class="widget widget_search  ">
                            <form class="search-form">
                                <input type="text" placeholder="Search">
                                <button type="submit"><i class="far fa-search"></i></button>
                            </form>
                        </div>
                        <div class="widget widget_categories  ">
                            <h3 class="widget_title">Categories</h3>
                            <ul>
                                <li>
                                    <a href="index.php?page=blog"><img src="assets/img/theme-img/map.svg" alt="">City Tour</a>
                                    <span>(8)</span>
                                </li>
                                <li>
                                    <a href="index.php?page=blog"><img src="assets/img/theme-img/map.svg" alt="">Beach Tours</a>
                                    <span>(6)</span>
                                </li>
                                <li>
                                    <a href="index.php?page=blog"><img src="assets/img/theme-img/map.svg" alt="">Wildlife Tours</a>
                                    <span>(2)</span>
                                </li>
                                <li>
                                    <a href="index.php?page=blog"><img src="assets/img/theme-img/map.svg" alt="">News & Tips</a>
                                    <span>(7)</span>
                                </li>
                                <li>
                                    <a href="index.php?page=blog"><img src="assets/img/theme-img/map.svg" alt="">Adventure Tours</a>
                                    <span>(9)</span>
                                </li>
                                <li>
                                    <a href="index.php?page=blog"><img src="assets/img/theme-img/map.svg" alt="">Mountain Tours</a>
                                    <span>(10)</span>
                                </li>
                            </ul>
                        </div>
                        <div class="widget  ">
                            <h3 class="widget_title">Recent Posts</h3>
                            <div class="recent-post-wrap">
                                <div class="recent-post">
                                    <div class="media-img">
                                        <a href="index.php?page=blog_details"><img src="assets/img/blog/recent-post-1-1.jpg" alt="Blog Image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="post-title"><a class="text-inherit" href="index.php?page=blog_details">Exploring The Green Spaces Of the island maldives</a></h4>
                                        <div class="recent-post-meta">
                                            <a href="index.php?page=blog"><i class="fa-regular fa-calendar"></i>22/6/ 2024</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent-post">
                                    <div class="media-img">
                                        <a href="index.php?page=blog_details"><img src="assets/img/blog/recent-post-1-2.jpg" alt="Blog Image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="post-title"><a class="text-inherit" href="index.php?page=blog_details">Harmony With Nature Of Belgium Tour and travle</a></h4>
                                        <div class="recent-post-meta">
                                            <a href="index.php?page=blog"><i class="fa-regular fa-calendar"></i>25/6/ 2024</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="recent-post">
                                    <div class="media-img">
                                        <a href="index.php?page=blog_details"><img src="assets/img/blog/recent-post-1-3.jpg" alt="Blog Image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="post-title"><a class="text-inherit" href="index.php?page=blog_details">Exploring The Green Spaces Of Realar Residence</a></h4>
                                        <div class="recent-post-meta">
                                            <a href="index.php?page=blog"><i class="fa-regular fa-calendar"></i>27/6/ 2024</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="widget widget_tag_cloud  ">
                            <h3 class="widget_title">Popular Tags</h3>
                            <div class="tagcloud">
                                <a href="index.php?page=blog">Tour</a>
                                <a href="index.php?page=blog">Adventure</a>
                                <a href="index.php?page=blog">Rent</a>
                                <a href="index.php?page=blog">Innovate</a>
                                <a href="index.php?page=blog">Hotel</a>
                                <a href="index.php?page=blog">Modern</a>
                                <a href="index.php?page=blog">Luxury</a>
                                <a href="index.php?page=blog">Travel</a>
                            </div>
                        </div>
                        <div class="widget widget_offer  " data-bg-src="assets/img/bg/widget_bg_1.jpg">
                            <div class="offer-banner">
                                <div class="offer">
                                    <h6 class="box-title">Need Help? We Are Here To Help You</h6>
                                    <div class="banner-logo">
                                        <img src="assets/img/logo2.svg" alt="Tourm">
                                    </div>
                                    <div class="offer">
                                        <h6 class="offer-title">You Get Online support</h6>
                                        <a class="offter-num" href="+256214203215">+256 214 203 215</a>
                                    </div>
                                    <a href="index.php?page=contact" class="th-btn style2 th-icon">Read More</a>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>

            </div>
            <div class="tour-gallery-wrapper">
                <h3 class="page-title mt-50 mb-30">From our gallery</h3>
                <div class="row gy-4 gallery-row filter-active">
                    
                <?php 
// Extract the 'pkgid' from the URL
$pkgid = isset($_GET['pkgid']) ? $_GET['pkgid'] : null;

if ($pkgid !== null) {
    $sql = "SELECT DISTINCT ActivityImage FROM tbltouractivities WHERE PackageId = :pkgid";
    $query = $dbh->prepare($sql);
    $query->bindParam(':pkgid', $pkgid, PDO::PARAM_INT);
    $query->execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);

    // Check if any records were found
    if ($query->rowCount() > 0) {
        // Loop through and display the records
        foreach ($results as $result) { ?>
            <div class="col-md-6 col-xl-auto filter-item">
                <div class="tour-gallery-card">
                    <div class="gallery-img global-img">
                        <img src="admin/pacakgeimages/95995.jpg" alt="gallery image">
                        <a href="admin/pacakgeimages/95995.jpg" class="icon-btn popup-image"><i class="fal fa-magnifying-glass-plus"></i></a>
                    </div>
                </div>
            </div>
            <?php 
        }
    } else {
        echo "No records found for Package ID: " . htmlspecialchars($pkgid);
    }
} else {
    echo "Package ID not found in the URL.";
}
?>

                    <div class="col-md-6 col-xl-auto filter-item">
                        <div class="tour-gallery-card">
                            <div class="gallery-img global-img">
                                <img src="assets/img/gallery/gallery_5_1.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_5_1.jpg" class="icon-btn popup-image"><i class="fal fa-magnifying-glass-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto filter-item">
                        <div class="tour-gallery-card">
                            <div class="gallery-img global-img">
                                <img src="assets/img/gallery/gallery_5_2.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_5_2.jpg" class="icon-btn popup-image"><i class="fal fa-magnifying-glass-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto filter-item">
                        <div class="tour-gallery-card">
                            <div class="gallery-img global-img">
                                <img src="assets/img/gallery/gallery_5_3.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_5_3.jpg" class="icon-btn popup-image"><i class="fal fa-magnifying-glass-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto filter-item">
                        <div class="tour-gallery-card">
                            <div class="gallery-img global-img">
                                <img src="assets/img/gallery/gallery_5_4.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_5_4.jpg" class="icon-btn popup-image"><i class="fal fa-magnifying-glass-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto filter-item">
                        <div class="tour-gallery-card">
                            <div class="gallery-img global-img">
                                <img src="admin/pacakgeimages/95995.jpg" alt="gallery image">
                                <a href="admin/pacakgeimages/95995.jpg" class="icon-btn popup-image"><i class="fal fa-magnifying-glass-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php }} ?>

           
            <div class="location-map">
                <h3 class="page-title mt-45 mb-30">Location</h3>
                <div class="contact-map style3">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3644.7310056272386!2d89.2286059153658!3d24.00527418490799!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe9b97badc6151%3A0x30b048c9fb2129bc!2sAngfuztheme!5e0!3m2!1sen!2sbd!4v1651028958211!5m2!1sen!2sbd" allowfullscreen="" loading="lazy"></iframe>
                    <div class="contact-icon">
                        <img src="assets/img/icon/location-dot3.svg" alt="">
                    </div>
                </div>
            </div>

        </div>
        <div class="shape-mockup about-shape movingX d-none d-xxl-block" data-bottom="40%" data-right="17%">
            <img src="assets/img/normal/about-slide-img.png" alt="shape">
        </div>
        <div class="shape-mockup about-rating d-none d-xxl-block" data-bottom="48%" data-right="12%">
            <i class="fa-sharp fa-solid fa-star"></i><span>4.9k</span>
        </div>
        <div class="shape-mockup about-emoji d-none d-xxl-block" data-bottom="45%" data-right="29%"><img src="assets/img/icon/emoji.png" alt="">
        </div>
        <div class="shape-mockup shape1 d-none d-xxl-block" data-bottom="55%" data-right="12%">
            <img src="assets/img/shape/shape_1.png" alt="shape">
        </div>
        <div class="shape-mockup shape2 d-none d-xl-block" data-bottom="51%" data-right="8%">
            <img src="assets/img/shape/shape_2.png" alt="shape">
        </div>
        <div class="shape-mockup shape3 d-none d-xxl-block" data-bottom="53%" data-right="5%">
            <img src="assets/img/shape/shape_3.png" alt="shape">
        </div>
    </section><!--==============================
	Footer Area
==============================-->