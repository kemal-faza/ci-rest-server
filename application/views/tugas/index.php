    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-5 text-center">
            
                <!-- Link API -->
                <h5>API Link</h5>
                <div class="alert alert-secondary" role="alert">
                    <b>$ GET</b> http://localhost/tugas-rest-server/api/kelas9/
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-5 text-center">

                <!-- APIKEY -->
                <h5>API Key Kamu</h5>
                <div class="alert alert-secondary" role="alert">
                    <?= $session['key'] ?>
                </div>
            </div>
            <div class="col text-center">

                <!-- PARAMETER -->
                <h5>Parameter</h5>
                <div class="alert alert-secondary" role="alert">
                    <h6>key = untuk untuk memasukkan api key</h6>
                    <h6>id = untuk mencari data berdasarkan id</h6>
                    <h6>st = untuk mencari data berdasarkan nama tugas</h6>
                </div>
            </div>
        </div>
    </div>