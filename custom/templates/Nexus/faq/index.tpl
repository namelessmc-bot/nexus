{include file='header.tpl'} 
{include file='navbar.tpl'}

<h2 class="ui center aligned icon header">
  <i class="question circle outline icon"></i>
  {$FAQ_TITLE}
</h2>

{if $AMOUNT <= 0}
    <div class="ui segments" style="width: 60% !important; margin: 1em auto !important; -webkit-box-shadow: none !important; box-shadow: none !important; border: 0 !important;" >
        <div class="ui center aligned segment">
             {$NO_FAQ}
        </div>
    </div>
{else}

    <div class="ui segments" style="width: 60% !important; margin: auto !important; -webkit-box-shadow: none !important; box-shadow: none !important; border: 0 !important;" >
        <div class="ui segment" style="background: transparent !important; box-shadow: none !important;">
            <div class="ui styled fluid accordion">
                {foreach from=$QUESTIONS item=q}
                    {if isset($q->enabled) && $q->enabled == "1"}
                        <div class="{if $q->nameid == $ACTIVE || $q->id == $ACTIVE}active {/if}title">
                            <i class="dropdown icon"></i>
                            {$q->question}
                        </div>
                        <div class="{if $q->nameid == $ACTIVE || $q->id == $ACTIVE}active {/if}content">
                            {$q->answer}                   
                        </div>
                    {/if}
                {/foreach}
                
            </div>
        </div>
    </div>

{/if}
{if isset($MAIN_TITLE)}
    <div class="ui center aligned" style="margin: 1em;">{$MAIN_TITLE}</div>
{/if}
{include file='footer.tpl'}
<script>
    $(document).ready(function() {
        $('.ui.accordion').accordion();
    });
</script>