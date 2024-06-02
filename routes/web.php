<?php

use App\Models\Education;
use App\Models\Experience;
use App\Models\File;
use App\Models\Image;
use App\Models\PersonalInfo;
use App\Models\Project;
use App\Models\ProjectCategory;
use App\Models\Service;
use App\Models\Skill;
use App\Models\SocialMedia;
use App\Models\Testimonial;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    $personalInfos = PersonalInfo::get();
    $files = File::get();
    $skills = Skill::whereActive()->get();
    $experiences = Experience::whereActive()->get();
    $educations = Education::whereActive()->get();
    $services = Service::whereActive()->get();
    $projectCategories = ProjectCategory::whereActive()->get();
    $projects = Project::whereActive()->get();
    $testimonials = Testimonial::whereActive()->get();
    $socialMediaLinks = SocialMedia::whereActive()->get();


    return view('index', [
        'personal_info' => $personalInfos,
        'files'         => $files,
        'skills'        => $skills,
        'experiences'   => $experiences,
        'educations'    => $educations,
        'services'      => $services,
        'project_categories' => $projectCategories,
        'projects'      => $projects,
        'testimonials'  => $testimonials,
        'social_media_links' => $socialMediaLinks,
    ],);
});
