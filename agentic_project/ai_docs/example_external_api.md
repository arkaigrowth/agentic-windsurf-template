# Example External API Documentation

## Overview
This document provides information about [API Name], which is used for [brief description of purpose].

**Note:** This document can be initially populated using the `fetch` MCP server on the API's official documentation URL, then refined by a human.

## Authentication
- **Auth Type**: [e.g., API Key, OAuth 2.0, etc.]
- **Token Lifespan**: [if applicable]
- **Rate Limits**: [if known]

## Base URL
```
https://api.example.com/v1
```

## Key Endpoints

### Endpoint 1: [Name]
```
GET /resource
```

**Purpose**: [Brief description]

**Parameters**:
- `param1` (string, required): Description
- `param2` (integer, optional): Description

**Example Request**:
```http
GET /resource?param1=value&param2=123
Authorization: Bearer YOUR_API_KEY
```

**Example Response**:
```json
{
  "id": "resource_id",
  "name": "Resource Name",
  "created_at": "2023-01-01T00:00:00Z"
}
```

**Error Codes**:
- `400`: Bad Request - [explanation]
- `401`: Unauthorized - [explanation]
- `404`: Not Found - [explanation]

### Endpoint 2: [Name]
```
POST /resource
```

[Similar structure as above]

## Implementation Notes
- [Important considerations]
- [Best practices]
- [Common pitfalls]

## SDK/Library Support
- [Language/Framework]: [Link to library if available]
- [Language/Framework]: [Link to library if available]

## References
- [Official Documentation](https://example.com/docs)
- [Developer Portal](https://example.com/developers)
