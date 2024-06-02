<?php

namespace Database\Seeders;

use App\Models\Education;
use App\Models\Experience;
use App\Models\File;
use App\Models\PersonalInfo;
use App\Models\ProjectCategory;
use App\Models\Service;
use App\Models\Skill;
use App\Models\SocialMedia;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory()->create([
            'id'        => 1,
            'name'      => 'Youssof Antar',
            'email'     => 'youssof.antar@gmail.com',
            'password'  => 'xNTx6014732#',
        ]);

        PersonalInfo::insert(
            [
                [
                    'key'   => 'name',
                    'value' => 'Youssof Antar',
                ],
                [
                    'key'   => 'tags',
                    'value' => 'Web Developer, App Developer, App Design, Robotics Design, Hardware Design',
                ],
                [
                    'key'   => 'working-year',
                    'value' => '2022',
                ],
                [
                    'key'   => 'working-adjective',
                    'value' => 'Afordable Prices, High Quality Product, On Time Project Delivery',
                ],
                [
                    'key'   => 'working-paragraph',
                    'value' => 'Dedicated engineer with experience in programming, web and app development, robotics, and hardware. Demonstrates proficiency in creating and deploying efficient software and hardware solutions. Experienced in leading projects from design through implementation, ensuring functionality and user satisfaction. Strong analytical skills, a proactive team player, and dedicated to staying current with emerging technologies.',
                ],
                [
                    'key'   => 'happy-client-value',
                    'value' => '4',
                ],
                [
                    'key'   => 'happy-client-paragraph',
                    'value' => 'Dedicated in delivering high-quality solutions that aim to exceed client expectations while meeting their needs and ensuring their satisfaction.',
                ],
                [
                    'key'   => 'project-completed-value',
                    'value' => '10',
                ],
                [
                    'key'   => 'project-completed-paragraph',
                    'value' => 'Timely project delivery is a priority, while maintaining high-quality service, and implementing effective solutions to meet objectives and achieve optimal outcomes.',
                ],
                [
                    'key'   => 'working-slogan',
                    'value' => 'of working experience in Development',
                ],
                [
                    'key'   => 'work-adjective',
                    'value' => 'Afordable Prices, High Quality Product, On Time Project Delivery',
                ],
                [
                    'key'   => 'location',
                    'value' => 'Lebanon, South District - Sidon',
                ],
                [
                    'key'   => 'phone-number',
                    'value' => '+961 71 344 727',
                ],
                [
                    'key'   => 'email',
                    'value' => 'youssof.antar@gmail.com',
                ],
            ],
        );

        Skill::insert(
            [
                [
                    'name'      => 'HTML',
                    'value'     => '90',
                    'is_active' => 1,
                    'color'     => 'primary',
                ],
                [
                    'name'      => 'CSS',
                    'value'     => '80',
                    'is_active' => 1,
                    'color'     => 'warning',
                ],
            ]
        );

        Experience::insert(
            [
                [
                    'name'      => 'Junior Software Engineer',
                    'date'      => '2022-2023',
                    'location'  => 'Karim Press',
                    'is_active' => 1,
                ],
            ]
        );

        Education::insert(
            [
                [
                    'name'      => 'Computer Engineer',
                    'date'      => '2021-2024',
                    'location'  => 'LIU',
                    'is_active' => 1,
                ],
            ]
        );

        Service::insert(
            [
                [
                    'title'         => 'Web Development',
                    'description'   => 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.',
                    'icon'          => 'fa-laptop',
                    'is_active'     => 1,
                ],
                [
                    'title'         => 'Application Development',
                    'description'   => 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.',
                    'icon'          => 'fa-mobile',
                    'is_active'     => 1,
                ],
            ]
        );

        ProjectCategory::insert(
            [
                [
                    'title'     => 'Website',
                    'is_active' => 1
                ],
                [
                    'title'     => 'Application',
                    'is_active' => 1
                ],
                [
                    'title'     => 'Robotics',
                    'is_active' => 1
                ],
            ]
        );

        SocialMedia::insert([
            [
                'title'     => 'Instagram',
                'value'     => 'https://www.instagram.com/youssof.antar/',
                'icon'      => 'fa-instagram',
                'is_active' => true,
            ],
            [
                'title'     => 'Whatsapp',
                'value'     => 'https://wa.me/96171344727',
                'icon'      => 'fa-whatsapp',
                'is_active' => true,
            ],
            [
                'title'     => 'GitHub',
                'value'     => 'https://github.com/Yusof-Antar',
                'icon'      => 'fa-github',
                'is_active' => true,
            ],
            [
                'title'     => 'LinkedIn',
                'value'     => 'https://www.linkedin.com/in/youssof-antar-152265180/',
                'icon'      => 'fa-linkedin',
                'is_active' => true,
            ],
        ]);
    }
}
