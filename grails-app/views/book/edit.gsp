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

<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
  <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<a href="#edit-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
  <ul>
    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
  </ul>
</div>

<div id="edit-book" class="content scaffold-edit" role="main">
  <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${book}">
    <ul class="errors" role="alert">
      <g:eachError bean="${book}" var="error">
        <li
          <g:if
              test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
            error="${error}"/></li>
      </g:eachError>
    </ul>
  </g:hasErrors>
  <g:form resource="${book}" method="PUT">
    <g:hiddenField name="version" value="${book?.version}"/>
    <fieldset class="form">
      <f:all bean="book"/>
    </fieldset>
    <fieldset class="buttons">
      <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}"/>
    </fieldset>
  </g:form>
</div>
</body>
</html>
