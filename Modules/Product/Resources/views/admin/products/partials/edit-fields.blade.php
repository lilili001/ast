<div class="box-body">
    {!! Form::i18nInput('title', trans('product::products.form.title'), $errors, $lang, $product) !!}
    <?php $oldKeywords = isset($product->translate($lang)->keywords) ? $product->translate($lang)->keywords : ''; ?>
    <div class='form-group{{ $errors->has("$lang.keywords") ? ' has-error=""/>' : '' }}'>
        {!! Form::label("{$lang}[keywords]", trans('product::products.form.keywords')) !!}
        {!! Form::text("{$lang}[keywords]", old("$lang.keywords",$oldKeywords),
        ['class' => 'form-control keywords', 'data-slug' => 'target', 'placeholder' => trans('product::products.form.keywords')]) !!}
        {!! $errors->first("$lang.keywords", '<span class="help-block">:message</span>') !!}
    </div>
    <?php $oldMeta_description = isset($product->translate($lang)->meta_description) ? $product->translate($lang)->meta_description : ''; ?>
    <div class='form-group{{ $errors->has("$lang.meta_description") ? ' has-error=""/>' : '' }}'>
        {!! Form::label("{$lang}[meta_description]", trans('product::products.form.meta_description')) !!}
        {!! Form::text("{$lang}[meta_description]", old("$lang.meta_description",$oldMeta_description),
        ['class' => 'form-control meta_description', 'data-slug' => 'target', 'placeholder' => trans('product::products.form.meta_description')]) !!}
        {!! $errors->first("$lang.meta_description", '<span class="help-block">:message</span>') !!}
    </div>
    @mediaMultiple('gallery',$product)
    {!! Form::i18nTextarea('description', trans('product::products.form.description'), $errors, $lang,$product,['id'=>'description111']) !!}
</div>
