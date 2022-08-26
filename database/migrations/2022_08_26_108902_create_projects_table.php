<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('project_ref');
            $table->string('title');
            $table->integer('grant_amount');
            $table->string('date_from_gcf');
            $table->string('start_date');
            $table->integer('duration');
            $table->string('end_date');
            $table->string('readiness_or_nap');
            $table->integer('first_disbursement_amount');
            $table->unsignedBigInteger('country_id');
            $table->unsignedBigInteger('status_id');
            $table->unsignedBigInteger('office_id');
            $table->unsignedBigInteger('readiness_type_id');
            $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
            $table->foreign('status_id')->references('id')->on('statuses')->onDelete('cascade');
            $table->foreign('office_id')->references('id')->on('offices')->onDelete('cascade');
            $table->foreign('readiness_type_id')->references('id')->on('readiness_types')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects');
    }
}
