{* Feedback form - Full view *}

{def $siteKey="6Lf5z4cpAAAAAIph9m-QKGVfzEnruQ0owKz42NdG"}

<div class="border-box">
<div class="border-tl"><div class="border-tr"><div class="border-tc"></div></div></div>
<div class="border-ml"><div class="border-mr"><div class="border-mc float-break">

<div class="content-view-full">
    <div class="class-feedback-form">

        <div class="attribute-header">
            <h1>{$node.name|wash()}</h1>
        </div>

        {include name=Validation uri='design:content/collectedinfo_validation.tpl'
                 class='message-warning'
                 validation=$validation collection_attributes=$collection_attributes}

        <div class="attribute-short">
                {attribute_view_gui attribute=$node.data_map.description}
        </div>
        <form method="post" action={"content/action"|ezurl} enctype="multipart/form-data">

        <h4>{$node.data_map.sender_name.contentclass_attribute.name}</h4>
        <div class="attribute-sender-name">
                {attribute_view_gui attribute=$node.data_map.sender_name}
        </div>

        <h4>{$node.data_map.email.contentclass_attribute.name}</h4>
        <div class="attribute-email">
                {attribute_view_gui attribute=$node.data_map.email}
        </div>

        <h4>{$node.data_map.subject.contentclass_attribute.name}</h4>
        <div class="attribute-subject">
                {attribute_view_gui attribute=$node.data_map.subject}
        </div>

        <h4>{$node.data_map.message.contentclass_attribute.name}</h4>
        <div class="attribute-message">
                {attribute_view_gui attribute=$node.data_map.message}
        </div>

        <h4>{$node.data_map.design_image.contentclass_attribute.name}</h4>
        <div class="attribute-attachment">
                {attribute_view_gui attribute=$node.data_map.design_image}
        </div>

        <div class="content-action">
            <input type="hidden" class="defaultbutton" name="ActionCollectInformation" value="{"Send form"|i18n("design/ezwebin/full/feedback_form")}" onclick="onClick">

            <button class="g-recaptcha btn btn-primary" style="width: 100%;" data-sitekey="{$siteKey}" data-action="submit">Submit</button>
            <input type="hidden" name="ContentNodeID" value="{$node.node_id}" />
            <input type="hidden" name="ContentObjectID" value="{$node.object.id}" />
            <input type="hidden" name="ViewMode" value="full" />
        </div>
        <script src="https://www.google.com/recaptcha/api.js"></script>
        </form>

    </div>
</div>

</div></div></div>
<div class="border-bl"><div class="border-br"><div class="border-bc"></div></div></div>
</div>

<script>
        {literal}
                document.addEventListener("DOMContentLoaded", (event) => {
                        const submitButtons = Array.from(document.querySelectorAll('[data-action="submit"]'));

                        submitButtons.forEach((btn) => {
                                btn.addEventListener('click', () => {
                                        const form = btn.closest('form');

                                        form.submit();
                                });
                        });
                });
        {/literal}
</script>