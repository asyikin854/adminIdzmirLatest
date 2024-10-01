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
        Schema::table('child_infos', function (Blueprint $table) {
            $table->foreignId('package_id')->nullable()->constrained('packages');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('child_infos', function (Blueprint $table) {
            $table->dropColumn('package_id');
        });
    }
};
