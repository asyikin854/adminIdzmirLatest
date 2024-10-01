<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SlotRTS extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Define days and times for slots
        $daysOfWeek = ['Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
        $slotTimes = ['09:00', '14:00']; // Example time slots
        $endTimes = ['11:30', '16:30']; // Corresponding end times

        // Start from the first day of the current month
        $startDate = Carbon::now()->startOfMonth();

        // Loop through each of the 12 months
        for ($month = 0; $month < 12; $month++) {
            // Get the first day of the current month we're generating slots for
            $firstDayOfMonth = $startDate->copy()->addMonths($month);

            // Get the number of days in the month
            $daysInMonth = $firstDayOfMonth->daysInMonth;

            // Loop through all the days of the month
            for ($i = 0; $i < $daysInMonth; $i++) {
                $currentDate = $firstDayOfMonth->copy()->addDays($i);

                // Only create slots for the specified days of the week
                if (in_array($currentDate->format('l'), $daysOfWeek)) {
                    // Create slots for each time period
                    foreach ($slotTimes as $index => $startTime) {
                        DB::table('slots_rts')->insert([
                            'day' => $currentDate->format('l'),
                            'date' => $currentDate->format('Y-m-d'),
                            'start_time' => $startTime,
                            'end_time' => $endTimes[$index],
                            'created_at' => now(),
                            'updated_at' => now(),
                        ]);
                    }
                }
            }
        }
    }
}
