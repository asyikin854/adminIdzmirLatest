<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('slots_rts', function (Blueprint $table) {
            $table->id();
            $table->string('day'); // Day of the week (e.g., Tuesday)
            $table->string('start_time'); // Specific slot time
            $table->string('end_time'); // Specific slot time
            $table->boolean('is_available')->default(true); // Admin can mark slot unavailable
            $table->date('date'); // Exact date (for real-time calendar)
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('slots_rts');
    }
};
