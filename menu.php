<div class="ui three item menu">
  <a class="item <?=empty($action)?' active':''?>" href="http://127.0.0.1/Test/">Home</a>
  <a class="item <?=($action==='DSHC')?' active':''?>" href="http://127.0.0.1/Test/?action=DSHC">Danh Sách Hành Chính</a>
  <a class="item <?=($action==='Upload')?' active':''?>" href="http://127.0.0.1/Test/?action=Upload">UpLoad IMG</a>
</div>