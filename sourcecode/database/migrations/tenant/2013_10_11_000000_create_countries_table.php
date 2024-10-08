<?php

use Database\Seeders\Hrm\Country\CountrySeeder;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schema;

class CreateCountriesTable extends Migration
{
    /**   
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('countries', function (Blueprint $table) {
            $table->id();
            $table->string('country_code')->unique();
            $table->string('name')->unique();
            $table->string('time_zone',191)->nullable();
            $table->string('currency_code',191)->nullable();
            $table->string('currency_symbol',191)->nullable();
            $table->string('currency_name',191)->nullable();
            $table->enum('currency_symbol_placement', ['before', 'after'])->nullable();

            $table->timestamps();
        });

        if (config('app.multitenancy') && isModuleActive('Saas')) { 
            DB::statement('SET FOREIGN_KEY_CHECKS=0');
            Artisan::call('db:seed', ['--class' => CountrySeeder::class]);
            DB::statement('SET FOREIGN_KEY_CHECKS=1'); 
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('countries');
    }
}
