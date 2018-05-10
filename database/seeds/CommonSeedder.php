<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Storage as Storage;
class CommonSeedder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $files = Storage::files('csv');
        foreach ( $files as $file ){
            $this->importFile( $file );
        }
    }
    //导入csv文件
    public function importFile( $file ){

        $table_name = explode('/', $file )[1];
        $table_name = explode( '.',$table_name )[0];

        Excel::load( 'public/uploads/'.$file , function($reader ) use ( $table_name ) {
            $data = $reader->toArray();
            DB::table( $table_name )->insert(  $data  );
        });
    }
}
