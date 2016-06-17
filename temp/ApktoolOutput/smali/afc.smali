.class public final Lafc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafc;->f:Z

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lafc;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v1, Lafc;

    invoke-direct {v1}, Lafc;-><init>()V

    .line 75
    iput-object p0, v1, Lafc;->a:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-object v0, v1, Lafc;->g:Ljava/lang/String;

    .line 77
    iput-object p2, v1, Lafc;->b:Ljava/lang/String;

    .line 78
    iput-object p3, v1, Lafc;->c:Ljava/lang/String;

    .line 79
    iput-object p4, v1, Lafc;->d:Ljava/lang/String;

    .line 80
    iput-boolean p5, v1, Lafc;->e:Z

    .line 81
    iput-boolean p6, v1, Lafc;->f:Z

    move-object v0, v1

    .line 82
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 35
    if-eqz v7, :cond_0

    const-string v1, "name"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v0, "name"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    if-eqz v7, :cond_6

    const-string v1, "host"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    const-string v1, "host"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_0
    if-eqz v7, :cond_5

    const-string v2, "params"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    const-string v2, "params"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    :goto_1
    if-eqz v7, :cond_4

    const-string v3, "enctype"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    const-string v3, "enctype"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    :goto_2
    if-eqz v7, :cond_1

    const-string v5, "request_param"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    const-string v4, "request_param"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    :cond_1
    if-eqz v7, :cond_3

    const-string v5, "validate"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    const-string v5, "validate"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 60
    :goto_3
    if-eqz v7, :cond_2

    const-string v8, "https"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 61
    const-string v8, "https"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    .line 64
    :cond_2
    invoke-static/range {v0 .. v6}, Lafc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lafc;

    move-result-object v0

    return-object v0

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v2, v4

    goto :goto_1

    :cond_6
    move-object v1, v4

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lafc;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafc;->g:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lafc;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lafc;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
