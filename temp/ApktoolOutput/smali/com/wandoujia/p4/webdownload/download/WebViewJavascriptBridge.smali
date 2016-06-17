.class public Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;
.super Ljava/lang/Object;
.source "WebViewJavascriptBridge.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "play exp"

.field private static final serialVersionUID:J = -0x302b38673847c465L


# instance fields
.field private final _messageHandler:Lgsx;

.field private _messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgsx;",
            ">;"
        }
    .end annotation
.end field

.field private _responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgsy;",
            ">;"
        }
    .end annotation
.end field

.field private _uniqueId:J

.field private final mContext:Landroid/content/Context;

.field private final mWebView:Landroid/webkit/WebView;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lgsx;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mWebView:Landroid/webkit/WebView;

    .line 45
    iput-object p3, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_messageHandler:Lgsx;

    .line 46
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mainHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_messageHandlers:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_responseCallbacks:Ljava/util/Map;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_uniqueId:J

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mWebView:Landroid/webkit/WebView;

    const-string v1, "wdjwvjb"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private _callbackJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, "responseId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "responseData"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_dispatchMessage(Ljava/util/Map;)V

    .line 99
    return-void
.end method

.method private _dispatchMessage(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "play exp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string v1, "javascript:wandoujia.wvjb._handleMessageFromNative(\'%s\');"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->doubleEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lgsv;

    invoke-direct {v2, p0, v1}, Lgsv;-><init>(Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_1
    return-void
.end method

.method private _sendData(Ljava/lang/String;Lgsy;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    if-eqz p2, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java_cb_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_uniqueId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_responseCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "callbackId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    if-eqz p3, :cond_1

    .line 161
    const-string v1, "handlerName"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_dispatchMessage(Ljava/util/Map;)V

    .line 164
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_callbackJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 56
    const-string v0, ""

    .line 58
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doubleEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 202
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "\u000c"

    const-string v2, "\\f"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method


# virtual methods
.method public _handleMessageFromJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string v0, "play exp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " _handleMessageFromJS data : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "responseId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callbackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handlerName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_responseCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsy;

    .line 109
    invoke-interface {v0, p3}, Lgsy;->a(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_responseCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    if-eqz p4, :cond_3

    .line 114
    new-instance v0, Lgsw;

    invoke-direct {v0, p0, p4}, Lgsw;-><init>(Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;Ljava/lang/String;)V

    move-object v1, v0

    .line 117
    :goto_1
    if-eqz p5, :cond_1

    .line 118
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsx;

    .line 119
    if-nez v0, :cond_2

    .line 120
    const-string v0, "play exp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WVJB Warning: No handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_messageHandler:Lgsx;

    .line 126
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lgsu;

    invoke-direct {v3, v0, p1, v1}, Lgsu;-><init>(Lgsx;Ljava/lang/String;Lgsy;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "play exp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewJavascriptBridge: WARNING: java handler threw. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public callHandler(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, v0, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Lgsy;)V

    .line 184
    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Lgsy;)V

    .line 188
    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;Lgsy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p2, p3, p1}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_sendData(Ljava/lang/String;Lgsy;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Lgsx;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->send(Ljava/lang/String;Lgsy;)V

    .line 146
    return-void
.end method

.method public send(Ljava/lang/String;Lgsy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/download/WebViewJavascriptBridge;->_sendData(Ljava/lang/String;Lgsy;Ljava/lang/String;)V

    .line 150
    return-void
.end method
