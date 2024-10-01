<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SessionReport extends Model
{
    use HasFactory;

    protected $table = 'session_reports';

    protected $fillable = [
        'schedules_id',
        'std_name',
        'std_ic',
        'therapist',
        'session_attended',
        'date',
        'treatment_provided',
        'ques1_1',
        'ques1_2',
        'ques1_3',
        'ques1_4',
        'ques1_5',
        'ques1_6',
        'ques1_7',
        'ques1_8',
        'ques2_1',
        'ques2_2',
        'ques2_3',
        'ques2_4',
        'ques2_5',
        'ques2_6',
        'ques2_7a',
        'ques2_7b',
        'ques2_7c',
        'ques2_7d',
        'ques2_7e',
        'ques2_7f',
        'ques2_7g',
        'ques2_8a',
        'ques2_8b',
        'ques2_8c',
        'ques2_8d',
        'ques2_8e',
        'ques2_8f',
        'ques2_8g',
        'ques2_8h',
        'ques2_8i',
        'ques3_1',
        'ques3_2',
        'ques3_3',
        'ques3_4',
        'ques3_5',
        'ques3_6',
        'ques3_7',
        'ques4_1a',
        'ques4_1b',
        'ques4_1c',
        'ques4_1d',
        'ques4_2',
        'ques4_3',
        'ques4_4',
        'ques4_5',
        'ques4_6',
        'ques5_1',
        'ques5_2',
        'ques5_3',
        'ques5_4',
        'ques5_5',
        'ques5_6',
        'ques5_7a',
        'ques5_7b',
        'ques5_7c',
        'ques5_8a',
        'ques5_8b',
        'ques5_8c',
        'ques6_1a',
        'ques6_1b',
        'ques6_1c',
        'ques6_1d',
        'ques6_1e',
        'ques6_1f',
        'ques6_1g',
        'ques7_1a',
        'ques7_1b',
        'ques7_1c',
        'ques7_2a',
        'ques7_2b',
        'ques7_3',
        'ques7_4',
        'ques7_5',
        'ques7_6',
        'ques7_7',
        'ques7_8',
        'ques7_9',
        'ques7_10',
        'ques8_0',
        'remark1',
        'remark2',
        'remark3',
        'remark4',
        'remark5',
        'remark6',
        'remark7',
        'analysis',
        'plan',
        'status',
    ];
    public function childSchedule()
    {
        return $this->belongsTo(ChildSchedule::class, 'schedules_id');
    }
}
