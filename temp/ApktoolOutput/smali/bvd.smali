.class public final Lbvd;
.super Ljava/lang/Object;
.source "ShareRequestParam.java"


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, -0x2

    iput v0, p0, Lbvd;->a:I

    .line 330
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbvd;
    .locals 4
    .parameter

    .prologue
    .line 341
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 344
    :cond_0
    new-instance v0, Lbvd;

    invoke-direct {v0}, Lbvd;-><init>()V

    .line 346
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 347
    const-string v2, "code"

    .line 348
    const/4 v3, -0x2

    .line 347
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lbvd;->a:I

    .line 349
    const-string v2, "data"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbvd;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
