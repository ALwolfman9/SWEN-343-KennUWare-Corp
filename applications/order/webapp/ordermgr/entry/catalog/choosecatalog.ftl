<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<#-- Only show if there is more than 1 (one) catalog, no sense selecting when there is only one option... -->
<#if (catalogCol?size > 1)>
    <@section title=uiLabelMap.ProductChooseCatalog>
        <form name="choosecatalogform" method="post" action="<@ofbizUrl>choosecatalog</@ofbizUrl>">
          <select name="CURRENT_CATALOG_ID">
            <option value="${currentCatalogId}">${currentCatalogName}</option>
            <option value="${currentCatalogId}"></option>
            <#list catalogCol as catalogId>
              <#assign thisCatalogName = Static["org.ofbiz.product.catalog.CatalogWorker"].getCatalogName(request, catalogId)>
              <option value="${catalogId}">${thisCatalogName}</option>
            </#list>
          </select>
          <div><a href="javascript:document.choosecatalogform.submit()" class="${styles.link_run_session!} ${styles.action_select!}">${uiLabelMap.CommonChange}</a></div>
        </form>
    </@section>
</#if>