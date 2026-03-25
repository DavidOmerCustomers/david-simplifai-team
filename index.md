export default {
  async fetch(request) {
    const incomingUrl = new URL(request.url);

    // Target Wix site
    const targetUrl = new URL(request.url);
    targetUrl.protocol = "https:";
    targetUrl.hostname = "etalsolutions.wixstudio.com";
    targetUrl.pathname = "/david";
    targetUrl.search = incomingUrl.search;

    // Copy request headers
    const requestHeaders = new Headers(request.headers);
    requestHeaders.set("host", "etalsolutions.wixstudio.com");
    requestHeaders.set("x-forwarded-host", incomingUrl.hostname);
    requestHeaders.set("x-forwarded-proto", "https");

    const proxyRequest
  };
