<h1>${title!}</h1>
<ul>
	<#list seriesList as series>
		<li>
			<a href="${baseRef}/${series.id}.html">${series.title}</a>
			- ${series.messageCount} <#if series.messageCount == 1>message<#else>messages</#if>
			(
				<#if series.startDate??>
					<#if !(series.endDate??)>Started</#if> <#-- still in progress -->
					${series.startDate?date}
					<#if series.endDate?? && series.endDate?date != series.startDate?date>
						- ${series.endDate?date}
					</#if>
				</#if>
			)
			<#-- (${series.startDate?date?string.iso} - ${series.endDate?date?string.iso}) -->
		</li>
	</#list>
</ul>
