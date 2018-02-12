<div class="box-body">
     {!! Form::i18nInput('title', trans('product::products.form.title'), $errors, $lang, null) !!}
     <div class='form-group{{ $errors->has("$lang.keywords") ? ' has-error=""/>' : '' }}'>
       {!! Form::label("{$lang}[keywords]", trans('product::products.form.keywords')) !!}
       {!! Form::text("{$lang}[keywords]", old("$lang.keywords"),
       ['class' => 'form-control keywords', 'data-slug' => 'target', 'placeholder' => trans('product::products.form.keywords')]) !!}
       {!! $errors->first("$lang.keywords", '<span class="help-block">:message</span>') !!}
     </div>
     <div  class='form-group{{ $errors->has("$lang.meta_description") ? ' has-error=""/>' : '' }}'>
        {!! Form::label("{$lang}[meta_description]", trans('product::products.form.meta_description')) !!}
        {!! Form::text("{$lang}[meta_description]", old("$lang.meta_description"),
        ['class' => 'form-control meta_description', 'data-slug' => 'target', 'placeholder' => trans('product::products.form.meta_description')]) !!}
        {!! $errors->first("$lang.meta_description", '<span class="help-block">:message</span>') !!}
     </div>
     @mediaMultiple('gallery')
     {!! Form::i18nTextarea('description', trans('product::products.form.description'), $errors, $lang) !!}
</div>
