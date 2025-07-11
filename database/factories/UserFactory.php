<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected static ?string $password;
    public function definition(): array
    {
            // do {
            //     $number12 = rand(0, 9);
            // } while ($number12 == 0 || $number12 == 1 || $number12 == 2);
            
        return [
            'name' => fake()->name(),
            'mobile' => '01'.rand(3, 9).fake()->ean8(),
            'otp' => fake()->ean8(),
            'email' => fake()->unique()->freeEmail(),
            'email_verified_at' => fake()->dateTime(),
            'password' => static::$password ??= Hash::make('password'),
            'remember_token' => Str::random(10),
        ];
    }
}
