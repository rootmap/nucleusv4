<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInStoreRepairProblemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('in_store_repair_problems', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('device_id');
            $table->string('device_name');            
            $table->integer('model_id');
            $table->string('model_name');
            $table->string('name');
            $table->integer('store_id');
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('in_store_repair_problems');
    }
}
