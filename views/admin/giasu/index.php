<?php
if (isset($data['giasu']['data'])) {
    $ds_giasu = $data['giasu']['data'];
} else {
    $ds_giasu = array();
}
?>
<style>
    .nv_ds:hover {
        cursor: pointer;
    }
</style>

<div class="container-fluid pt-5">
    <div class="d-flex mb-3">
        <a href="index.php" class="btn btn-outline-dark mr-auto">Quay về</a>
    </div>
    <?php if ( isset($data['result']['code']) ) { 
    if( $data['result']['code']==0 ) {
        echo "<div class='alert alert-success text-center'>Cập nhập thành công</div>";
    } else if ( $data['result']['code']>0 ) {
        $mess = $data['result']['message'];
        echo "<div class='alert alert-danger text-center'><p>Xảy ra lỗi khi cập nhập: $mess</p></div>";
    }}?>
    <h2 class="text-center">DANH SÁCH GIA SƯ</h2>
    <table class="table table-striped text-center">
        <thead class="thead-dark">
            <tr>
                <th scope="col">SĐT</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Giới tính</th>
                <th scope="col">Email</th>
                <th scope="col">Hiện là</th>
                <th scope="col">Trường</th>
                <th scope="col">Lĩnh vực</th>
                <th scope="col">Khu vực có thể dạy</th>
                <th scope="col">Tình trạng tài khoản</th>
                <th scope="col">Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php
                for ($i = 0; $i < count($ds_giasu); $i++) {
                    $tutor = $ds_giasu[$i];
                    $phone = $tutor['phoneNumber'];
                    $name = $tutor['name'];
                    $birthday = $tutor['birthday'];
                    $area = $tutor['area'];
                    $status = $tutor['status'];
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
                    $gender = $tutor['gender'];
                    if($gender == 0){
                        $gender = "Nam";
                    } else {
                        $gender = "Nữ";
                    }
                    $email = $tutor['email'];
                    $fields = $tutor['fields'];
                    $avatar = $tutor['avatar'];
                    $school = $tutor['school'];
                    $hocvan = $tutor['academicLevel'];
                    $areas = $tutor['areas'];

                    ?>
                        <tr>
                            <th scope="row"><?=$phone?></th>
                            <td><?=$name?></td>
                            <td><?=$birthday?></td>
                            <td><?=$area?></td>
                            <td><?=$gender?></td>
                            <td><?=$email?></td>
                            <td><?=$hocvan?></td>
                            <td><?=$school?></td>
                            <td><?=$fields?></td>
                            <td><?=$areas?></td>
                            <td><?=$status_str?></td>
                            <td class = "d-flex justify-content-center">
                                <button onclick="unblockTutor('<?=$phone?>', '<?=$name?>')" type="button" class="btn btn-success <?=$disable_unblock?>" data-toggle="modal" data-target="#xacnhan-unblock">Mở khóa tài khoản</button>
                                <button onclick="blockTutor('<?=$phone?>', '<?=$name?>')"  type="button" class="btn btn-danger <?=$disable_block?>"  data-toggle="modal" data-target="#xacnhan-block">Khóa tài khoản</button>
                                <button onclick="acceptTutor('<?=$phone?>', '<?=$name?>')" type="button" class="btn btn-primary <?=$disable_accept?>"  data-toggle="modal" data-target="#xacnhan-accept">Duyệt tài khoản</button>
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
                    <p>Bạn có chắc muốn mở khóa cho gia sư <span id="gs-unblock" style="font-weight:bold"></span></p>
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
                    <p>Bạn có chắc muốn khóa tài khoản gia sư <span id="gs-block" style="font-weight:bold"></span></p>
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
                    <p>Bạn có chắc muốn xác minh tài khoản cho gia sư <span id="gs-accept" style="font-weight:bold"></span></p>
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
    function unblockTutor(username, name) {
        $("#unblock-form").attr('action', "?controller=giasu&action=update");
        $("#gs-unblock").html(name);
        $("#unblock-id").val(username);
    }

    function blockTutor(username, name) {
        $("#block-form").attr('action', "?controller=giasu&action=update");
        $("#gs-block").html(name);
        $("#block-id").val(username);
    }

    function acceptTutor(username, name) {
        $("#accept-form").attr('action', "?controller=giasu&action=update");
        $("#gs-accept").html(name);
        $("#accept-id").val(username);
    }

window.addEventListener('load', (event) => {
    $(".nv_ds").on("mouseover", function(){
        $(this).css("background-color", "#a1a1a1");
    });
    $(".nv_ds").on("mouseout", function(){
        $(this).css("background-color", "");
    })
    $(".nv_chitiet").on('click', function(){
        $(location).attr('href','?controller=nhanvien&action=view&id='+$(this).attr('id'))
    });
});
</script>