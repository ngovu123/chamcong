<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLeaveRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_requests', function (Blueprint $table) {
            $table->id();
            $table->foreignId('assign_leave_id')->constrained('assign_leaves')->cascadeOnDelete();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->date('apply_date');
            $table->date('leave_from');
            $table->date('leave_to');
            $table->integer('days');
            $table->longText('reason')->nullable();
            $table->foreignId('substitute_id')->nullable()->constrained('users');
            $table->foreignId('attachment_file_id')->nullable()->constrained('uploads');
            $table->text('image_url')->nullable();
            $table->foreignId('status_id')->constrained('statuses')->comment('1 for Approve, 2 for Pending, 6 for Reject 7 for cancelled , 17 referred');
            $table->foreignId('author_info_id')->nullable()->constrained('author_infos');
            $table->timestamps();

            //modified on 10 Nov 2023
            $table->unsignedBigInteger('company_id')->nullable()->default(1);
            $table->unsignedBigInteger('branch_id')->nullable()->default(1);
            $table->index([ 'status_id', 'company_id', 'branch_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('leave_requests');
    }
}
