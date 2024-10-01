<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('payments', function (Blueprint $table) {
        $table->id();
        $table->foreignId('child_id')->constrained('child_infos')->onDelete('cascade');
        $table->foreignId('parent_id')->constrained('parent_accounts')->onDelete('cascade');
        $table->string('payment_id')->unique(); // Custom generated payment ID
        $table->string('reference');
        $table->decimal('total_amount', 8, 2);
        $table->string('currency')->default('MYR');
        $table->string('payment_method');
        $table->string('status')->default('pending');
        $table->text('description')->nullable();
        $table->timestamp('payment_date')->nullable();
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
