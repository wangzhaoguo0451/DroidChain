.class public final Laht;
.super Lahu;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lahu",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lagu;Lagt;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lahu;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(Lagp;)Lags;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")",
            "Lags",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lagp;->a:[B

    iget-object v2, p1, Lagp;->b:Ljava/util/Map;

    invoke-static {v2}, Ld;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ld;->a(Lagp;)Lagi;

    move-result-object v0

    invoke-static {v1, v0}, Lags;->a(Ljava/lang/Object;Lagi;)Lags;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lags;->a(Lcom/android/volley/VolleyError;)Lags;

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lags;->a(Lcom/android/volley/VolleyError;)Lags;

    move-result-object v0

    goto :goto_0
.end method
