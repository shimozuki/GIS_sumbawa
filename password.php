<div class="page-header">
<center><a href="#" class="s-link" data-link-text="Ubah Password">
    <span><h1>Ubah Password</h1></span>
    </a></center>
</div>
<div class="row">
    <div class="col-sm-5">
        <?php if($_POST) include'aksi.php'?>
        <form method="post" action="?m=password&act=password_ubah">
        <div class="form-group">
            <label>Password Lama <span class="text-danger">*</span></label>
            <input class="form-control" type="password" name="pass1"/>
        </div>
        <div class="form-group">
            <label>Password Baru <span class="text-danger">*</span></label>
            <input class="form-control" type="password" name="pass2"/>
        </div>
        <div class="form-group">
            <label>Konfirmasi Password Baru <span class="text-danger">*</span></label>
            <input class="form-control" type="password" name="pass3"/>
        </div>
        <button class="btn btn-success"><span class="glyphicon glyphicon-save"></span> Simpan</button>
        </form>
    </div>
</div>