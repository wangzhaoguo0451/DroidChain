.class public final Ladt;
.super Ladq;
.source "SourceFile"


# instance fields
.field public f:Z

.field private g:I


# direct methods
.method protected constructor <init>(Lacz;Lada;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ladq;-><init>(Lacz;Lada;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladt;->f:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Ladq;->a(Lorg/json/JSONObject;)V

    .line 71
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "oneTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 76
    iput-boolean v2, p0, Ladq;->e:Z

    .line 77
    const-string v2, "page"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladt;->f:Z

    .line 80
    const/16 v0, 0x9

    iput v0, p0, Ladt;->g:I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v2, "toast"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    const-string v1, "onload"

    .line 83
    invoke-static {v0, v1}, Lafc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;

    move-result-object v0

    .line 85
    const/4 v1, 0x6

    iput v1, p0, Ladt;->g:I

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/alipay/wandoujia/ra;->r:Lcom/alipay/wandoujia/ra;

    if-ne v0, v1, :cond_0

    .line 89
    const/16 v0, 0xa

    iput v0, p0, Ladt;->g:I

    goto :goto_0

    .line 92
    :cond_2
    const-string v2, "confirm"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ladt;->f:Z

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Ladt;->g:I

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/alipay/wandoujia/qb;->a(Ljava/lang/String;)Lcom/alipay/wandoujia/qb;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/alipay/wandoujia/qb;->h:Lcom/alipay/wandoujia/qb;

    if-ne v0, v1, :cond_4

    .line 102
    const/16 v0, -0xa

    iput v0, p0, Ladt;->g:I

    goto :goto_0

    .line 104
    :cond_4
    const/16 v0, 0x8

    iput v0, p0, Ladt;->g:I

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Ladt;->g:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Ladt;->g:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 41
    iget v0, p0, Ladt;->g:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Ladt;->g:I

    return v0
.end method
