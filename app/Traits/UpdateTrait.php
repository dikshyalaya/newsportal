<?php

namespace App\Traits;

use ZipArchive;
use Illuminate\Support\Facades\File;
use Modules\Setting\Entities\Setting;
use Illuminate\Support\Facades\Artisan;

trait UpdateTrait
{

    private $files = [];

    public function recurse_copy($src, $dst)
    {
        // return $src;
        $dir = opendir($src);

        if (!is_dir($dst)) {
            mkdir($dst, 0777, true);
        }
        while (false !== ($file = readdir($dir))) {
            if (($file != '.') && ($file != '..')) {
                if (is_dir($src . '/' . $file)) {
                    $this->recurse_copy($src . '/' . $file, $dst . '/' . $file);
                } else {
                    copy($src . '/' . $file, $dst . '/' . $file);
                    chmod($dst . '/' . $file, 0777);
                }
            }
        }
        closedir($dir);
    }

    function backup($src, $dst)
    {
        $zipname = base_path('public/backup_update.zip');
        $new_zip = new ZipArchive;

        $new_zip->open($zipname, ZipArchive::CREATE | ZipArchive::OVERWRITE);
        $this->recurse($src, $dst);

        foreach ($this->files as $file) {
            if (!is_dir($file) && file_exists($file)) {
                $new_zip->addFile($file);
            }
        }

        $new_zip->close();
    }

    function recurse($src, $dst)
    {
        $dir = opendir($src);

        if (!is_dir($dst)) {
            mkdir($dst, 0777, true);
        }

        while (false !== ($file = readdir($dir))) {
            if (($file != '.') && ($file != '..')) {
                if (is_dir($src . '/' . $file)) {
                    $this->files[] = $dst . '/' . $file;
                    $this->recurse($src . '/' . $file, $dst . '/' . $file);
                } else {
                    $file_location = str_replace('public/updater', '', $src);
                    $this->files[] = $file_location . '/' . $file;
                }
            }
        }
        closedir($dir);
    }

    public function delete_directory($dirname,$is_remove = true): bool
    {
        $dir_handle = '';
        if (is_dir($dirname))
            $dir_handle = opendir($dirname);
        if (!$dir_handle)
            return false;
        while ($file = readdir($dir_handle)) {
            if ($file != "." && $file != ".." && $file != ".gitignore") {
                if (!is_dir($dirname . "/" . $file))
                    unlink($dirname . "/" . $file);
                else
                    $this->delete_directory($dirname . '/' . $file);
            }
        }
        closedir($dir_handle);
        if ($is_remove) {
            rmdir($dirname);
        }
        return true;
    }

}