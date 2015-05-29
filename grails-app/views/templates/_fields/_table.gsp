%{--
  - Copyright 2015 the original author or authors
  -
  - Licensed under the Apache License, Version 2.0 (the "License");
  - you may not use this file except in compliance with the License.
  - You may obtain a copy of the License at
  -
  -     http://www.apache.org/licenses/LICENSE-2.0
  -
  - Unless required by applicable law or agreed to in writing, software
  - distributed under the License is distributed on an "AS IS" BASIS,
  - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  - See the License for the specific language governing permissions and
  - limitations under the License.
  --}%

<table class="table table-hover">
  <thead>
  <tr>
    <g:each in="${domainProperties}" var="p" status="i">
      <g:set var="propTitle">${domainClass.propertyName}.${p.name}.label</g:set>
      <g:sortableColumn property="${p.name}" title="${message(code: propTitle, default: p.naturalName)}"/>
    </g:each>
  </tr>
  </thead>
  <tbody>
  <g:each in="${collection}" var="bean" status="i">
    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
      <g:each in="${domainProperties}" var="p" status="j">
        <g:if test="${j == 0}">
          <td>%{--<g:link method="GET" resource="${bean}">--}%<f:display bean="${bean}" property="${p.name}"/>%{--</g:link>--}%</td>
        </g:if>
        <g:else>
          <td><f:display bean="${bean}" property="${p.name}"/></td>
        </g:else>
      </g:each>
    </tr>
  </g:each>
  </tbody>
</table>
