
<?php
    if (isset($data['hocvien']['data'])) {
        $ds_students = $data['hocvien']['data'];
    } else {
        $ds_students = array();
    }

?>
<style>
    .hv_ds:hover {
        cursor: pointer;
    }
</style>

<div class="container-fluid pt-5">
    <div class="d-flex mb-3">
        <a href="index.php" class="btn btn-outline-dark mr-auto">Quay về</a>
    </div>
    <?php if ( isset($data['result']['code']) ) { 
    if( $data['result']['code']==0 ) {
        echo "<div class='alert alert-success text-center'>Mở khóa cho học viên thành công</div>";
    } else if ( $data['result']['code']>0 ) {
        $mess = $data['result']['message'];
        echo "<div class='alert alert-danger text-center'><p>Xảy ra lỗi khi cập nhập tính trạng: $mess</p></div>";
    }}?>
    <h2 class="text-center">DANH SÁCH HỌC VIÊN</h2>
    <table class="table table-striped text-center">
        <thead class="thead-dark">
            <tr>
                <th scope="col">SĐT</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Giới tính</th>
                <th scope="col">Email</th>
                <th scope="col">Tình trạng tài khoản</th>
                <th scope="col">Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php
                for ($i = 0; $i < count($ds_students); $i++) {
                    $student = $ds_students[$i];
                    $phone = $student['phoneNumber'];
                    $name = $student['name'];
                    $birthday = $student['birthday'];
                    $area = $student['area'];
                    $status = $student['status'];
                    if ($status == 1) {
                        $status_str = "Tài khoản đã được xác minh";
                        $disable_block = "d-block"; 
                        $disable_unblock = "d-none"; 
                        $disable_accept = "d-none";
                    } else if($status == 0) {
                        $status_str = "Tài khoản chưa được xác minh";
                        $disable_block = "d-none"; 
                        $disable_unblock = "d-none";
                        $disable_accept = "d-block";

                    } else {
                        $status_str = "Tài khoản đã bị khóa";
                        $disable_block = "d-none"; 
                        $disable_unblock = "d-block"; 
                        $disable_accept = "d-none";

                    } 
                    $email = $student['email'];
                    $gender = $student['gender'];
                    if($gender == 0){
                        $gender = "Nam";
                    } else {
                        $gender = "Nữ";
                    }
                    $field = $student['fields'];
                    $avatar = $student['avatar'];
                    ?>
                        <tr class = "hv_ds">
                            <th scope="row"><?=$phone?></th>
                            <td><?=$name?></td>
                            <td><?=$birthday?></td>
                            <td><?=$area?></td>
                            <td><?=$gender?></td>
                            <td><?=$email?></td>
                            <td><?=$status_str?></td>
                            <td class = "d-flex justify-content-center">
                                <button onclick="unblockStudent('<?=$phone?>', '<?=$name?>')" type="button" class="btn btn-success <?=$disable_unblock?>" data-toggle="modal" data-target="#xacnhan-unblock">Mở khóa tài khoản</button>
                                <button onclick="blockStudent('<?=$phone?>', '<?=$name?>')"  type="button" class="btn btn-danger <?=$disable_block?>"  data-toggle="modal" data-target="#xacnhan-block">Khóa tài khoản</button>
                                <button onclick="acceptStudent('<?=$phone?>', '<?=$name?>')" type="button" class="btn btn-primary <?=$disable_accept?>"  data-toggle="modal" data-target="#xacnhan-accept">Duyệt tài khoản</button>
                            </td>
                        </tr>
                    <?php
                }
            ?>
        </tbody>
    </table>
</div>
</div>

<div class="modal fade" role="dialog" id="xacnhan-unblock">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" id="unblock-form">
                <div class="modal-header">
                    <h5 class="modal-title">Mở khóa tài khoản</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Bạn có chắc muốn mở khóa cho học viên <span id="hv-unblock" style="font-weight:bold"></span></p>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="id" value="" id="unblock-id">
                    <input type="hidden" name="status" value="1">
                    <button type="submit" class="btn btn-danger">Xác nhận</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" role="dialog" id="xacnhan-block">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" id="block-form">
                <div class="modal-header">
                    <h5 class="modal-title">Khóa tài khoản</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Bạn có chắc muốn khóa tài khoản học viên <span id="hv-block" style="font-weight:bold"></span></p>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="id" value="" id="block-id">
                    <input type="hidden" name="status" value="-1">
                    <button type="submit" class="btn btn-danger">Xác nhận</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" role="dialog" id="xacnhan-accept">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" id="accept-form">
                <div class="modal-header">
                    <h5 class="modal-title">Xác minh tài khoản</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Bạn có chắc muốn xác minh tài khoản cho học viên <span id="hv-accept" style="font-weight:bold"></span></p>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="id" value="" id="accept-id">
                    <input type="hidden" name="status" value="1">
                    <button type="submit" class="btn btn-danger">Xác nhận</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function unblockStudent(username, name) {
        $("#unblock-form").attr('action', "?controller=hocvien&action=update");
        $("#hv-unblock").html(name);
        $("#unblock-id").val(username);
    }

    function blockStudent(username, name) {
        $("#block-form").attr('action', "?controller=hocvien&action=update");
        $("#hv-block").html(name);
        $("#block-id").val(username);
    }

    function acceptStudent(username, name) {
        $("#accept-form").attr('action', "?controller=hocvien&action=update");
        $("#hv-accept").html(name);
        $("#accept-id").val(username);
    }

    window.addEventListener('load', (event) => {
        $(".hv_ds").on("mouseover", function(){
            $(this).css("background-color", "#a1a1a1");
        });
        $(".hv_ds").on("mouseout", function(){
            $(this).css("background-color", "");
        })
        
    });
</script>