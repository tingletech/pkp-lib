{**
 * buttonConfirmationLinkAction.tpl
 *
 * Copyright (c) 2000-2011 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Attach a link action to a button that opens a confirmation dialog and
 * only clicks the button when the user confirms the dialog.
 *
 * Parameters:
 *  buttonSelector: A jQuery selector that designates the button to attach this
 *   link action to.
 *  dialogText: A tranlation key for the message to be displayed in the dialog.
 *}

<script type="text/javascript">
	$(function() {ldelim}
		$('{$buttonSelector|escape:javascript}').pkpHandler(
				'$.pkp.controllers.linkAction.LinkActionHandler',
				{ldelim}
					actionRequest: '$.pkp.classes.linkAction.ModalRequest',
					actionRequestOptions: {ldelim}
						modalHandler: '$.pkp.controllers.modal.ButtonConfirmationModalHandler',
						title: '{translate|escape:javascript key="form.confirmSubmit.title"}',
						okButton: '{translate|escape:javascript key="common.ok"}',
						cancelButton: '{translate|escape:javascript key="common.cancel"}',
						dialogText: '{translate|escape:javascript key=$dialogText}',
						$button: $('{$buttonSelector|escape:javascript}')
					{rdelim},
			{rdelim});
	{rdelim});
</script>