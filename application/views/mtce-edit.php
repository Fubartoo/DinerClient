<h2>Menu Maintenance - {action}</h2>
{error_messages}
<form action="/crud/save" method="post" enctype="multipart/form-data">
    {fid}
    {fname}
    {fdescription}
    {fprice}
    {fpicture}
    <div class="form-group">
        <label for="replacement">Replacement picture</label>
        <input type="file" class=""form-control" id="replacement" name="replacement"/>
    </div>
    {fcategory}
    {zsubmit} <a class="btn btn-default" role="button" href="/crud/cancel">Cancel</a>
    <a class="btn btn-default" role="button" href="/crud/delete">Delete</a>
</form>