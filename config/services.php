<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
        'scheme' => 'https',
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'chip' => [
    'brand_id' => '569e81ce-3a2d-4891-bb74-fbc6eec2954f',
    'api_key' => 'Y_QP5kB8keYaB_sBmGQk3tLg-aBvxXK8DHFs60xlk7Rzta9sJ7mJdzEa4WkOVA54kBrDWr7-ejzpiOpQrl66RA==',
    'endpoint' => 'https://gate.chip-in.asia/api/v1', // Keep this the same
    'baseUrl' => 'https://2f6c-2001-d08-218c-b000-cc2d-775c-f4e1-51ea.ngrok-free.app', // Added missing comma
    'webhook_public_key' => "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEA66AR8afDI85VVBsU79U7jyd0BHs1c402wCEAVIM0aK+Es+0HALHe68SBAt/ncvDiCLnmoNeT80pt0hnbuJ2jGGg5eFuZhdMghshx13QBnJhmCfVLjZy6NaFf0x9jll7yo2Cxf/kQ+iIPgOsLMAwHFmMrX5LMaBiEdsa9RvgYhmCDMD2jbXvXSlBc4DspLP/CPHzAVdOwNHo25eOI9uAlXXDORvi1ZlnN8Y3yghLtgp6elbY1hhIqpP9dniW1tb+T3GeTQFixg/Sf0G7XLBD5bgfGH77632jdL1Gnvisl7vf81KCCqagI9hJDN7nNKLW2o+RsgjvmKo0zpW1hrcItIGnGh8qBIdok2WA+you82iJEmPPqt9ZAqKJ9A9t/HXtbqxGRTp3JDdI66fNT3TstfLxTedYe3R4D+KC6RBPU534+8RnvuL3Rz8AXSTlkprXtWzhSTLnJN3GAR7vEjhSNlmNWOa4igu25veSpid9U6bhybRmvHKOvUJGACiSReATnAgMBAAE=" // Corrected key format
],


];
