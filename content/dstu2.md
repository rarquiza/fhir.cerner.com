---
title: DSTU 2
---

# Overview

This describes the resources that make up Cerner's implementation of the HL7<sup>®</sup> FHIR<sup>®</sup> standard. If you have any problems or requests,
please post to our [developer group](https://groups.google.com/d/forum/cerner-fhir-developers).

* TOC
{:toc}

## Current Version

This documentation describes the DSTU 2 Final (1.0.2) implementation which is currently in development and is available in our sandbox environment.
Documentation for our production implementation can be found at [DSTU 2 Ballot (0.5.0)](/may2015).

## Schema

All API access is over HTTPS, and accessed from the `fhir.sandboxcernerpowerchart.com/dstu2`
domain.  All data is sent and received as JSON.

<pre class="terminal">
$ curl -i -H "Accept: application/json+fhir" https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata
HTTP/1.1 200 OK
Date: Tue, 05 Jan 2016 20:02:23 GMT
cache-control: no-cache
vary: Origin,User-Agent
strict-transport-security: max-age=631152000
server-response-time: 6003.4422970000005
x-xss-protection: 1; mode=block
x-request-id: 637dd651-6943-4d45-8e8a-0577da7640a2
x-runtime: 6.003411
x-frame-options: SAMEORIGIN
x-content-type-options: nosniff
Status: 200 OK
Content-Type: application/json+fhir; charset=utf-8
Transfer-Encoding: chunked

{"resourceType":"Conformance","text":{"status":"generated","div":"\u003Cdiv\u003EGenerated Conformance Statement\u003C/div\u003E"},"url":"https://fhir-open.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata","name":"Cerner Conformance Statement","status":"draft","publisher":"Cerner","date":"2015-12-03T00:00:00+00:00","description":"Describes capabilities of this server","kind":"instance","fhirVersion":"1.0.2","acceptUnknown":"no","format":["json"],"rest":[{"mode":"server","documentation":"All the functionality defined in FHIR","security":{"cors":true},"resource":[{"type":"AllergyIntolerance","interaction":[{"code":"search-type"}],"searchParam":[{"name":"patient","type":"reference","documentation":"Who the sensitivity is for. It is a required field"},{"name":"status","type":"token","documentation":"Certainty of the allergy or intolerance"}]},{"type":"Condition","interaction":[{"code":"search-type"}],"searchParam":[{"name":"patient","type":"reference","documentation":"The patient who has the condition. It is a required field if subject field is not given"},{"name":"category","type":"token","documentation":"The category of the condition","modifier":["not"]}]},{"type":"DocumentReference","interaction":[{"code":"search-type"}],"searchParam":[{"name":"patient","type":"reference","documentation":"The patient the document is about"},{"name":"type","type":"token","documentation":"The type of the document"}]},{"type":"MedicationOrder","interaction":[{"code":"search-type"}],"searchParam":[{"name":"patient","type":"reference","documentation":"The identity of a patient to list dispenses for. It is a required field"},{"name":"status","type":"token","documentation":"The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"},{"name":"timing-boundsperiod-end","type":"date","documentation":"The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"},{"name":"_count","type":"number","documentation":"The number of items to include in a page. Currently ignored if querying for active or draft statuses"}]},{"type":"MedicationStatement","interaction":[{"code":"search-type"}],"searchParam":[{"name":"patient","type":"reference","documentation":"The identity of a patient to list statements for. It is a required field."},{"name":"status","type":"token","documentation":"One or more medication statement status values separated by commas."},{"name":"effectivedate","type":"date","documentation":"The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."},{"name":"_count","type":"number","documentation":"The maximum number of results to include in a page."}]},{"type":"Patient","interaction":[{"code":"read"},{"code":"search-type"}],"searchParam":[{"name":"_id","type":"token","documentation":"The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"},{"name":"birthdate","type":"date","documentation":"The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"},{"name":"identifier","type":"token","documentation":"A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"},{"name":"name","type":"string","documentation":"A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"},{"name":"telecom","type":"string","documentation":"The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"},{"name":"_count","type":"number","documentation":"The maximum number of results to return"}]}]}]}
</pre>

Blank fields are omitted.

All timestamps are returned in [FHIR<sup>®</sup> standard date/dateTime formats](http://www.hl7.org/implement/standards/fhir/datatypes.html#date).

### Media Types

Cerner supports the FHIR<sup>®</sup> standard defined media types for JSON content:

    application/json+fhir
    application/json

We encourage you to explicitly request one of these types via the `Accept` header.

## Root Endpoint

The URL takes the form `fhir.sandboxcernerpowerchart.com/dstu2/:ehr_source_id/:resource`.

### Open Endpoint

The `fhir-open.sandboxcernerpowerchart.com` domain allows developers to experiment with the service without requiring
authentication. Use the `fhir.sandboxcernerpowerchart.com` domain to access the authenticated endpoint.

### Source

The `:ehr_source_id` represents the tenant for which data should be retrieved.

### Resource

`:resource` represents the FHIR<sup>®</sup> standard resource to access. Example: <a href="/dstu2/patient/">`Patient`</a>

## Parameters

Many API methods take optional parameters. For GET requests, any parameters not
specified as a segment in the path can be passed as an HTTP query string
parameter:

<pre class="terminal">
$ curl -i -H "Accept: application/json+fhir" "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=2744010&status=active"
</pre>

In this example, the 'd075cf8b-3261-481d-97e5-ba6c48d3b41f' value is provided for the `:ehr_source_id` parameter in the path
while `patient` and `status` are passed in the query string.

## Client Errors

There are seven possible types of client errors on API calls that
receive request bodies:

1. Failing to send a required query parameter will result in a `400 Bad Request` response.

        HTTP/1.1 400 Bad Request

        no supported search parameters provided

2. Requesting the authenticated endpoint (non-`open`) without valid credentials will result in a `401 Unauthorized`
   response.

        HTTP/1.1 401 Unauthorized

3. Requesting an invalid or unauthorized `:ehr_source_id` will result in a `403 Forbidden` response.

        HTTP/1.1 403 Forbidden

        Tenant [:ehr_source_id] not valid or accessible

4. Requesting a resource which does not exist will resule in a `404 Not Found` response.

        HTTP/1.1 404 Not Found

5. Requested a media type other than JSON will result in a `406 Not Acceptable` response.

        HTTP/1.1 406 Not Acceptable
        Content-Length: 0

6. Performing an update with an out-of-date version id will result in a `409 Conflict Error` response.

        HTTP/1.1 409 Conflict Error

7. Performing an add or update with syntactically correct JSON body which is invalid according to business rules will result in a `422 Unprocessable Entity` response.

        HTTP/1.1 422 Unprocessable Entity

## HTTP Verbs

Where possible, the FHIR<sup>®</sup> standard strives to use appropriate HTTP verbs for each action.

Verb | Description
-----|-----------
`GET` | Used for retrieving resources.
`POST` | Used for creating resources.
`PUT` | Used for updating resources.

## Authorization

We have an endpoint secured with [OAuth 2.0](http://oauth.net/2/) with support for [SMART Applications](http://docs.smarthealthit.org/).
Refer to the extensions on the `Conformance.rest.security` element in our server [metadata](conformance/).

Please reference the <a href="/dstu2/authorization/">authorization</a> documentation for more information. 

## Pagination

The pagination links are included in the Bundle when a resource returns multiple items. It is important to
follow these Link header values instead of constructing your own URLs.

    {
        "resourceType": "Bundle",
        "id": "962a50b1-a367-475f-b9c9-810c1b3c6b35",
        "type": "searchset",
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Jones&start=0&_count=20"
            },
            {
                "relation": "next",
                "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Jones&start=20&_count=20"
            }
        ],
        ...
    }

The possible `relation` values are:

Name | Description
-----------|-----------|
`self` |Shows the URL of the current page of results.
`next` |Shows the URL of the immediate next page of results.

## Cross Origin Resource Sharing

The API supports Cross Origin Resource Sharing (CORS) for AJAX requests from
any origin.
You can read the [CORS W3C Recommendation](http://www.w3.org/TR/cors), or
[this intro](http://code.google.com/p/html5security/wiki/CrossOriginRequestSecurity) from the
HTML 5 Security Guide.

Here's a sample request sent from the origin `http://example.com`:

<pre class="terminal">
$ curl -i -H "Origin: http://example.com" -H "Accept: application/json+fhir" https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata
HTTP/1.1 200 OK
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
Access-Control-Max-Age: 0
Access-Control-Allow-Credentials: true
</pre>

This is what a CORS preflight request looks like:

<pre class="terminal">
$ curl -X OPTIONS -i -H "Origin: http://example.com" https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata
HTTP/1.1 204 No Content
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
Access-Control-Max-Age: 0
Access-Control-Allow-Credentials: true
</pre>