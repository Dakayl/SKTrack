{if $sk['log_autorefresh']}
<script type="text/javascript">
<!--
setTimeout("location.reload(true);", {$sk['__log_autorefresh_time']});
-->
</script>
{/if}
<h2>Rangliste und Item-Log</h2>
<table>
	<tr>
		<td style="vertical-align: top;">
			<table>
				<tr>
					<td style="vertical-align: top;">
						<table style="border: 2px solid grey; width: 250px;">
							<tr style="background: black; font-weight: bold;"><td style="border-bottom: 2px solid grey; width: 40px;">#</td><td style="border-bottom: 2px solid grey;">Spieler</td></tr>
							<!-- Complete List -->
							{foreach $pool as $player}
							<tr {if ($player['active'] || $lists[$list_sel]['active_raid'] == -1) }style="color: white;"{else}style="color: grey;"{/if}>
								<td>{$player['pos'] + 1}</td>
								<td><a href="{$sk['baselink_character']}{$player['name']}" target="{$sk['external_link_target']}">{$player['name']}</a></td>
							</tr>
							{/foreach}
						</table>
					</td>
					<td>&nbsp;</td>
					<td style="vertical-align: top;">
						<table style="border: 2px solid grey; width: 710px;">
							<tr>
								<td style="border-bottom: 2px solid grey; background: black; font-weight: bold;" colspan="4">Letzte Items</td>
							</tr>
							<!-- Item Log -->
							{foreach $items as $raid}
							<tr>
								<td colspan="4" style="background: black; border-bottom: 2px solid grey;">
									<table width="100%">
										<tr>
											<td>{$raid['0']['raid_title']}</td>
											<td style="text-align: right;">{$raid['0']['raid_start']} - {$raid['0']['raid_end']}</td>
										</tr>
									</table>
								</td>
							</tr>
							{foreach $raid as $item}
							<tr>
								<td style="width:120px"><a href="{$sk['baselink_character']}{$item['username']}" target="{$sk['external_link_target']}">{$item['username']}</a></td>
								<td style="width:350px"><a href="{$sk['baselink_item']}{$item['item_id']}" target="{$sk['external_link_target']}" class="q{$item['item_quality']}" rel="domain=de,item={$item['item_id']}"><img alt="{$item['item_name']} ({$item['item_id']})" src="http://www.wow-castle.de/bboard/images/proxy.php?item={$item['item_id']}" class="item" />&nbsp;{$item['item_name']}</a></td>
								<td style="width:140px">{$item['lootmode']}</td>
								<td style="width:100px">{$item['loottime']}</td>
							</tr>
							{/foreach}
							{/foreach}
						</table>
					</td>
				</tr>
			</table>
	</tr>
</table>