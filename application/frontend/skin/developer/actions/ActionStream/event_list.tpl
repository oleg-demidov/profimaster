{**
 * Список событий активности
 *
 * @param string $sActivityType     Тип активности
 * 									all      Вся активность
 * 									user     Активность пользователя
 * 									custom   Персональная (настраиваемая) активность
 *}

{if $aStreamEvents}
	<ul class="activity-event-list" id="activity-event-list">
		{include file='actions/ActionStream/events.tpl'}
	</ul>

	{if ! $bDisableGetMoreButton}
		{include 'more.tpl'
				 sLoadClasses    = "js-more-activity-$sActivityType"
				 iLoadLastId     = $iStreamLastId
				 sLoadAttributes = "data-param-s-date-last=\"$sDateLast\""}
	{/if}
{else}
	{include 'alert.tpl' mAlerts=$aLang.common.empty sAlertStyle='empty'}
{/if}