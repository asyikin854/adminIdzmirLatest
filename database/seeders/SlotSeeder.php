<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Slot;
use Carbon\Carbon;

class SlotSeeder extends Seeder
{
    public function run()
    {
        // Define days and times for slots
        $daysOfWeek = ['Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
        $slotTimes = ['08:30', '10:00', '11:30', '14:00', '15:30']; // Example time slots
        $endTimes = ['09:30', '11:00', '12:30', '15:00', '16:30']; // Corresponding end times

        // Get the first day of the current month
        $startDate = Carbon::now()->startOfMonth();

        // Loop through the next 30 days (adjust based on your needs)
        for ($i = 0; $i < 30; $i++) {
            $currentDate = $startDate->copy()->addDays($i);

            // Only create slots for the specified days of the week
            if (in_array($currentDate->format('l'), $daysOfWeek)) {
                // Create slots for each time period
                foreach ($slotTimes as $index => $startTime) {
                    Slot::create([
                        'day' => $currentDate->format('l'),
                        'date' => $currentDate->format('Y-m-d'),
                        'start_time' => $startTime,
                        'end_time' => $endTimes[$index],
                    ]);
                }
            }
        }
    }
}
