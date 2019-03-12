<?php

use Illuminate\Database\Seeder;
use App\SocketMeta;
use App\Lead;
use App\User;
use App\LeadUser;
use App\EachDomain;
use App\CSV;
use \Carbon\Carbon;

class SocketMetaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SocketMeta::truncate();
        $socketMeta = new SocketMeta;
        $socketMeta->leads_unlocked = LeadUser::count();;
        $socketMeta->total_domains = EachDomain::count();;
        $socketMeta->total_users = User::count();;
        $socketMeta->leads_added_last_day = CSV::orderBy('id', 'desc')->first()->leads_inserted;
        $socketMeta->save();
    }
}
