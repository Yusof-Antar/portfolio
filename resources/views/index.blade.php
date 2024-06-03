<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Youssof Antar - Portfolio</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="{{ asset('img/favicon.ico') }}" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('assets/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/lib/lightbox/css/lightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="51">
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light fixed-top shadow py-lg-0 px-4 px-lg-5 wow fadeIn"
        data-wow-delay="0.1s">
        {{-- <a href="index.html" class="navbar-brand d-block d-lg-none">
            <h1 class="text-primary fw-bold m-0">ProMan</h1>
        </a> --}}
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between py-4 py-lg-0" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="#home" class="nav-item nav-link active">Home</a>
                <a href="#about" class="nav-item nav-link">About</a>
                <a href="#skill" class="nav-item nav-link">Skills</a>
                <a href="#service" class="nav-item nav-link">Services</a>
            </div>

            <div class="navbar-nav me-auto py-0">
                <a href="#project" class="nav-item nav-link">Projects</a>
                <a href="#team" class="nav-item nav-link">Team</a>
                <a href="#testimonial" class="nav-item nav-link">Testimonial</a>
                <a href="#contact" class="nav-item nav-link">Contact</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Header Start -->
    <div class="container-fluid bg-light my-6 mt-0" id="home">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 py-6 pb-0 pt-lg-0">
                    <h3 class="text-primary mb-3">I'm</h3>
                    <h1 class="display-3 mb-3">{{ $personal_info->where('key', '=', 'name')->first()->value }}</h1>
                    <h2 class="typed-text-output d-inline"></h2>
                    <div class="typed-text d-none">{{ $personal_info->where('key', '=', 'tags')->first()->value }}</div>
                    <div class="d-flex align-items-center pt-5">
                        <a class="btn btn-primary py-3 px-4 me-5"
                            href="{{ asset('storage/' . $files->where('key', '=', 'resume')->first()->file) }}"
                            download="Youssof-Antar-Resume.pdf">Download
                            CV</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img class="img-fluid"
                        src="{{ asset('storage/' . $files->where('key', '=', 'profile')->first()->file) }}"
                        alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    {{-- <!-- Video Modal Start -->
    <div class="modal modal-video fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content rounded-0">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Youtube Video</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- 16:9 aspect ratio -->
                    <div class="ratio ratio-16x9">
                        <iframe class="embed-responsive-item" src="" id="video" allowfullscreen
                            allowscriptaccess="always" allow="autoplay"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Video Modal End --> --}}


    <!-- About Start -->
    @if ($personal_info->contains('key', 'working-paragraph'))
        <div class="container-xxl py-6" id="about">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex align-items-center mb-5">
                            <div class="years flex-shrink-0 text-center me-4">
                                <h1 class="display-1 mb-0">
                                    {{ Carbon\Carbon::now()->year - $personal_info->where('key', '=', 'working-year')->first()->value }}
                                </h1>
                                <h5 class="mb-0">Years</h5>
                            </div>
                            <h3 class="lh-base mb-0">
                                {{ $personal_info->where('key', '=', 'working-slogan')->first()->value }}</h3>
                        </div>
                        <p class="mb-4">{{ $personal_info->where('key', '=', 'working-paragraph')->first()->value }}
                        </p>
                        @foreach (explode(',', $personal_info->where('key', '=', 'work-adjective')->first()->value) as $item)
                            <p class="mb-3"><i class="far fa-check-circle text-primary me-3"></i>{{ $item }}
                            </p>
                        @endforeach
                        </p>
                        {{-- <a class="btn btn-primary py-3 px-5 mt-3" href="">Read More</a> --}}
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="row g-3 mb-4">
                            <div class="col-sm-6">
                                <img class="about-img img-fluid rounded"
                                    src="{{ asset('storage/' . $files->where('key', '=', 'about-1')->first()->file) }}"
                                    alt="">
                            </div>
                            <div class="col-sm-6">
                                <img class="about-img img-fluid rounded"
                                    src="{{ asset('storage/' . $files->where('key', '=', 'about-2')->first()->file) }}"
                                    alt="">
                            </div>
                        </div>
                        @if ($personal_info->contains('key', 'happy-client-paragraph'))
                            <div class="d-flex align-items-center mb-3">
                                <h5 class="border-end pe-3 me-3 mb-0">Happy Clients</h5>
                                <h2 class="text-primary fw-bold mb-0" data-toggle="counter-up">
                                    {{ $personal_info->where('key', '=', 'happy-client-value')->first()->value }}</h2>
                            </div>
                            <p class="mb-4">
                                {{ $personal_info->where('key', '=', 'happy-client-paragraph')->first()->value }}</p>
                        @endif
                        @if ($personal_info->contains('key', 'project-completed-paragraph'))
                            <div class="d-flex align-items-center mb-3">
                                <h5 class="border-end pe-3 me-3 mb-0">Projects Completed</h5>
                                <h2 class="text-primary fw-bold mb-0" data-toggle="counter-up">
                                    {{ $personal_info->where('key', '=', 'project-completed-value')->first()->value }}
                                </h2>
                            </div>
                            <p class="mb-0">
                                {{ $personal_info->where('key', '=', 'project-completed-paragraph')->first()->value }}
                            </p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endif
    <!-- About End -->


    <!-- Expertise Start -->
    @if ($personal_info->contains('key', 'skill-paragraph'))
        <div class="container-xxl py-6 pb-5" id="skill">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <h1 class="display-5 mb-5">Skills & Experience</h1>
                        <p class="mb-4">{{ $personal_info->where('key', '=', 'skill-paragraph')->first()->value }}
                        </p>
                        <h3 class="mb-4">My Skills</h3>
                        <div class="row align-items-center">

                            @foreach ($skills as $skill)
                                <div class="skill col-6 mb-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="font-weight-bold">{{ $skill->name }}</h6>
                                        <h6 class="font-weight-bold">{{ $skill->value }}%</h6>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar bg-{{ $skill->color }}" role="progressbar"
                                            aria-valuenow="{{ $skill->value }}" aria-valuemin="0"
                                            aria-valuemax="100">
                                        </div>
                                    </div>
                                </div>
                            @endforeach


                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <ul class="nav nav-pills rounded border border-2 border-primary mb-5">
                            <li class="nav-item w-50">
                                <button class="nav-link w-100 py-3 fs-5 active" data-bs-toggle="pill"
                                    href="#tab-1">Experience</button>
                            </li>
                            <li class="nav-item w-50">
                                <button class="nav-link w-100 py-3 fs-5" data-bs-toggle="pill"
                                    href="#tab-2">Education</button>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane fade show p-0 active">
                                <div class="row gy-5 gx-4">
                                    @foreach ($experiences as $experience)
                                        <div class="col-sm-6">
                                            <h5>{{ $experience->name }}</h5>
                                            <hr class="text-primary my-2">
                                            <p class="text-primary mb-1">{{ $experience->date }}</p>
                                            <h6 class="mb-0">{{ $experience->location }}</h6>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                            <div id="tab-2" class="tab-pane fade show p-0">
                                <div class="row gy-5 gx-4">
                                    @foreach ($educations as $education)
                                        <div class="col-sm-6">
                                            <h5>{{ $education->name }}</h5>
                                            <hr class="text-primary my-2">
                                            <p class="text-primary mb-1">{{ $education->date }}</p>
                                            <h6 class="mb-0">{{ $education->location }}</h6>
                                        </div>
                                    @endforeach


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    <!-- Expertise End -->


    <!-- Service Start -->
    @if (count($services) > 0)
        <div class="container-fluid bg-light my-5 py-6" id="service">
            <div class="container">
                <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="col-lg-6">
                        <h1 class="display-5 mb-0">My Services</h1>
                    </div>
                    <div class="col-lg-6 text-lg-end">
                        <a class="btn btn-primary py-3 px-5" href="#contact">Hire Me</a>
                    </div>
                </div>
                <div class="row g-4">
                    @foreach ($services as $service)
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item d-flex flex-column flex-sm-row bg-white rounded h-100 p-4 p-lg-5">
                                <div class="bg-icon flex-shrink-0 mb-3">
                                    <i class="fa {{ $service->icon }} fa-2x text-light"></i>
                                </div>
                                <div class="ms-sm-4">
                                    <h4 class="mb-3">{{ $service->title }}</h4>
                                    <span>{{ $service->description }}</span>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    @endif
    <!-- Service End -->


    <!-- Projects Start -->
    @if (count($projects) > 0)
        <div class="container-xxl py-6 pt-5" id="project">
            <div class="container">
                <div class="row g-5 mb-5 align-items-center wow fadeInUp" data-wow-delay="0.1s">
                    <div class="col-lg-6">
                        <h1 class="display-5 mb-0">My Projects</h1>
                    </div>
                    <div class="col-lg-6 text-lg-end">
                        <ul class="list-inline mx-n3 mb-0" id="portfolio-flters">
                            <li class="mx-3 active" data-filter="*">All Projects</li>
                            @foreach ($project_categories as $category)
                                <li class="mx-3 active" data-filter=".{{ $category->title }}">{{ $category->title }}
                                </li>
                            @endforeach

                        </ul>
                    </div>
                </div>
                <div class="row g-4 portfolio-container wow fadeInUp" data-wow-delay="0.1s">
                    @foreach ($projects as $project)
                        <div class="col-lg-4 col-md-6 portfolio-item {{ $project->category->title }}">
                            <div style="height: 360px" class="portfolio-img rounded overflow-hidden ratio ratio-1x1">
                                {{-- <div> --}}

                                <img class="img-fluid object-fit-cover"
                                    src="{{ asset('storage/' . $project->images[0]) }}" alt="">
                                {{-- </div> --}}
                                <div class="portfolio-btn justify-content-between">

                                    <h3 class="portfolio-project-title">{{ $project->title }}</h3>
                                    <div class="d-flex">
                                        @if (count($project->images) > 1)
                                            <a class="btn btn-lg-square btn-outline-secondary border-2 mx-1"
                                                href=""><i class="fa fa-images"></i></a>
                                        @endif
                                        @if ($project->link != null)
                                            <a target="_blank"
                                                class="btn btn-lg-square btn-outline-secondary border-2 mx-1"
                                                href="{{ $project->link }}"><i class="fa fa-link"></i></a>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    @endif
    <!-- Projects End -->

    {{-- 
    <!-- Team Start -->
    <div class="container-xxl py-6 pb-5" id="team">
        <div class="container">
            <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-0">Team Members</h1>
                </div>
                <div class="col-lg-6 text-lg-end">
                    <a class="btn btn-primary py-3 px-5" href="">Contact Us</a>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative">
                        <img class="img-fluid rounded" src="{{ asset('assets/img/team-1.jpg') }}" alt="">
                        <div class="team-text bg-white rounded-end p-4">
                            <div>
                                <h5>Full Name</h5>
                                <span>Designer</span>
                            </div>
                            <i class="fa fa-arrow-right fa-2x text-primary"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item position-relative">
                        <img class="img-fluid rounded" src="{{ asset('assets/img/team-2.jpg') }}" alt="">
                        <div class="team-text bg-white rounded-end p-4">
                            <div>
                                <h5>Full Name</h5>
                                <span>Designer</span>
                            </div>
                            <i class="fa fa-arrow-right fa-2x text-primary"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item position-relative">
                        <img class="img-fluid rounded" src="{{ asset('assets/img/team-3.jpg') }}" alt="">
                        <div class="team-text bg-white rounded-end p-4">
                            <div>
                                <h5>Full Name</h5>
                                <span>Designer</span>
                            </div>
                            <i class="fa fa-arrow-right fa-2x text-primary"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End --> --}}


    <!-- Testimonial Start -->
    @if (count($testimonials) > 0)
        <div class="container-fluid bg-light py-5 my-5" id="testimonial">
            <div class="container-fluid py-5">
                <h1 class="display-5 text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">Testimonial</h1>
                <div class="row justify-content-center">
                    <div class="col-lg-3 d-none d-lg-block">
                        <div class="testimonial-left h-100">
                            @if (count($testimonials) > 2)
                                <img class="object-fit-cover img-fluid wow fadeIn" data-wow-delay="0.1s"
                                    src="{{ asset('storage/' . $testimonials[2]->image) }}" alt="">
                            @endif
                            @if (count($testimonials) > 0)
                                <img class="object-fit-cover img-fluid wow fadeIn" data-wow-delay="0.3s"
                                    src="{{ asset('storage/' . $testimonials[0]->image) }}" alt="">
                            @endif
                            @if (count($testimonials) > 4)
                                <img class="object-fit-cover img-fluid wow fadeIn" data-wow-delay="0.5s"
                                    src="{{ asset('storage/' . $testimonials[4]->image) }}" alt="">
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="owl-carousel testimonial-carousel">
                            @foreach ($testimonials as $testimonial)
                                <div class="testimonial-item text-center">
                                    <div class="position-relative mb-5">
                                        <img class="object-fit-cover img-fluid rounded-circle border border-secondary p-2 mx-auto"
                                            src="{{ asset('storage/' . $testimonial->image) }}" alt="">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left text-primary"></i>
                                        </div>
                                    </div>
                                    <p class="fs-5 fst-italic">{{ $testimonial->testimonial }}</p>
                                    <hr class="w-25 mx-auto">
                                    <h5>{{ $testimonial->name }}</h5>
                                    <span>{{ $testimonial->profession }}</span>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block">
                        <div class="testimonial-right h-100">
                            @if (count($testimonials) > 1)
                                <img class="object-fit-cover img-fluid wow fadeIn" data-wow-delay="0.1s"
                                    src="{{ asset('storage/' . $testimonials[1]->image) }}" alt="">
                            @endif
                            @if (count($testimonials) > 3)
                                <img class="object-fit-cover img-fluid wow fadeIn" data-wow-delay="0.3s"
                                    src="{{ asset('storage/' . $testimonials[3]->image) }}" alt="">
                            @endif
                            @if (count($testimonials) > 5)
                                <img class="object-fit-cover img-fluid wow fadeIn" data-wow-delay="0.5s"
                                    src="{{ asset('storage/' . $testimonials[5]->image) }}" alt="">
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    <!-- Testimonial End -->


    <!-- Contact Start -->
    <div class="container-xxl pb-5" id="contact">
        <div class="container py-5">
            <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-0">Let's Work Together</h1>
                </div>
                <div class="col-lg-6 text-lg-end">
                    <a class="btn btn-primary py-3 px-5" href="">Say Hello</a>
                </div>
            </div>
            <div class="row g-5">
                <div class="col-lg-5 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="mb-2">My office:</p>
                    <h3 class="fw-bold">{{ $personal_info->where('key', '=', 'location')->first()->value }}</h3>
                    <hr class="w-100">
                    <p class="mb-2">Call me:</p>
                    <h3 class="fw-bold">{{ $personal_info->where('key', '=', 'phone-number')->first()->value }}</h3>
                    <hr class="w-100">
                    <p class="mb-2">Mail me:</p>
                    <h3 class="fw-bold">{{ $personal_info->where('key', '=', 'email')->first()->value }}</h3>
                    <hr class="w-100">
                    <p class="mb-2">Follow me:</p>
                    <div class="d-flex pt-2">
                        @foreach ($social_media_links as $social_media_link)
                            <a target=”_blank” class="btn btn-square btn-primary me-2"
                                href="{{ $social_media_link->value }}"><i
                                    class="fab {{ $social_media_link->icon }}"></i></a>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-7 col-md-6 wow fadeInUp" data-wow-delay="0.5s">

                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name"
                                        placeholder="Your Name">
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email"
                                        placeholder="Your Email">
                                    <label for="email">Your Email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject">
                                    <label for="subject">Subject</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                    <label for="message">Message</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary py-3 px-5" type="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    {{-- 
    <!-- Map Start -->
    <div class="container-xxl pt-5 px-0 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container-xxl pt-5 px-0">
            <div class="bg-dark">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
                    frameborder="0" style="width: 100%; height: 450px; border:0;" allowfullscreen=""
                    aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
    </div>
    <!-- Map End --> --}}

    <!-- Footer Start -->
    <footer class="bg-dark text-white pt-5 pb-4">
        <div class="container text-center text-md-left">
            <div class="row text-center text-md-left">
                <!-- About Me Section -->
                <div class="col-md-3 col-lg-3 col-xl-4 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">About Me</h5>
                    <p>
                        {{ $personal_info->where('key', '=', 'about-paragpraph')->first()->value }}
                    </p>
                </div>

                <!-- Contact Section -->
                <div class="col-md-2 col-lg-2 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact</h5>
                    <p>
                        <i class="fas fa-home mr-3 pe-1"></i>
                        {{ $personal_info->where('key', '=', 'location')->first()->value }}
                    </p>
                    <p>
                        <i class="fas fa-envelope mr-3 pe-1"></i>
                        {{ $personal_info->where('key', '=', 'email')->first()->value }}
                    </p>
                    <p>
                        <i class="fas fa-phone mr-3 pe-1"></i>
                        {{ $personal_info->where('key', '=', 'phone-number')->first()->value }}
                    </p>
                </div>

                <!-- Social Media Section -->
                <div class="col-md-3 col-lg-2 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Follow Me</h5>
                    <div class="d-flex justify-content-center">
                        @foreach ($social_media_links as $social_media_link)
                            <a target=”_blank” class="btn btn-square btn-outline-light m-1"
                                href="{{ $social_media_link->value }}"><i
                                    class="fab {{ $social_media_link->icon }}"></i></a>
                        @endforeach
                    </div>

                </div>

                <!-- Quick Links Section -->
                {{-- <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Quick Links</h5>
                    <p>
                        <a href="#about" class="text-white">About Me</a>
                    </p>
                    <p>
                        <a href="#skills" class="text-white">Skills</a>
                    </p>
                    <p>
                        <a href="#projects" class="text-white">Projects</a>
                    </p>
                    <p>
                        <a href="#contact" class="text-white">Contact</a>
                    </p>
                </div> --}}
            </div>

            <!-- Copyright Section -->
            <hr class="mb-4">
            <div class="row align-items-center">
                <p class="text-center text-md-left">
                    © 2024 {{ $personal_info->where('key', '=', 'name')->first()->value }}. All Rights Reserved.
                </p>

            </div>
        </div>
    </footer>
    <!-- Footer End -->

    {{-- <!-- Copyright Start -->
        
    <div class="container-fluid bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom text-secondary" href="#">Your Site Name</a>, All Right
                    Reserved.
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    Designed By <a class="border-bottom text-secondary" href="https://htmlcodex.com">HTML Codex</a>
                    <br>Distributed By: <a class="border-bottom" href="https://themewagon.com"
                        target="_blank">ThemeWagon</a>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Copyright End --> --}}


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="{{ asset('assets/lib/wow/wow.min.js') }}"></script>
    <script src="{{ asset('assets/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('assets/lib/waypoints/waypoints.min.js') }}"></script>
    <script src="{{ asset('assets/lib/typed/typed.min.js') }}"></script>
    <script src="{{ asset('assets/lib/counterup/counterup.min.js') }}"></script>
    <script src="{{ asset('assets/lib/owlcarousel/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('assets/lib/isotope/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/lib/lightbox/js/lightbox.min.js') }}"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('assets/js/main.js') }}"></script>
</body>

</html>
