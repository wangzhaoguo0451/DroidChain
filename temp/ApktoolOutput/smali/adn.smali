.class public final Ladn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lach;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ladn;->a:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lach;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ladn;->a:I

    .line 44
    iput-object p1, p0, Ladn;->b:Lach;

    .line 45
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lach;Lada;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lach;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, p5, Lada;->a:I

    .line 183
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lada;->b:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Ladn;->b:Lach;

    invoke-static {v1, v0}, Lg;->a(Lach;Lorg/apache/http/HttpResponse;)V

    .line 188
    invoke-static {v0}, Ld;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
.end method

.method private a(Landroid/content/Context;Lacz;Lada;)Lorg/json/JSONObject;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {}, Lg;->d()Ljava/lang/String;

    move-result-object v6

    .line 103
    :try_start_0
    iget-object v0, p2, Lacz;->a:Lacv;

    iget-object v2, v0, Lacv;->a:Ljava/lang/String;

    .line 106
    invoke-virtual {p2, v6}, Lacz;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    iget-object v0, p2, Lacz;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lach;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 105
    invoke-direct/range {v0 .. v5}, Ladn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lach;Lada;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {}, Ld;->e()V

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p3, Lada;->c:J

    .line 114
    iget-boolean v1, p2, Lacz;->d:Z

    if-eqz v1, :cond_3

    .line 115
    invoke-static {v0, p3}, Ladn;->a(Ljava/lang/String;Lada;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p3, Lada;->a:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    iget v1, p0, Ladn;->a:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget v0, p0, Ladn;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ladn;->a:I

    invoke-direct {p0, p1, p2, p3}, Ladn;->a(Landroid/content/Context;Lacz;Lada;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget v1, p3, Lada;->a:I

    if-eqz v1, :cond_1

    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v0

    const-string v1, "server cann\'t respone data"

    invoke-virtual {p2}, Lacz;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lacm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/FailOperatingException;

    iget-object v1, p3, Lada;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 123
    :catch_0
    move-exception v0

    throw v0

    .line 115
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Ladn;->a:I

    const-string v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "response data is empty"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 125
    :catch_1
    move-exception v0

    throw v0

    .line 115
    :cond_2
    :try_start_2
    invoke-static {v6, v0}, Lwo;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ld;->d()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 127
    :catch_2
    move-exception v0

    throw v0

    .line 118
    :cond_3
    :try_start_3
    invoke-static {v0, p3}, Ladn;->a(Ljava/lang/String;Lada;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld;->d()V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 129
    :catch_3
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 131
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/String;Lada;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3e8

    const/16 v2, 0x1f7

    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_4

    .line 203
    const-string v1, "code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lada;->a:I

    .line 204
    const-string v1, "error_msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lada;->b:Ljava/lang/String;

    .line 206
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    iget v1, p1, Lada;->a:I

    if-ne v1, v3, :cond_0

    .line 210
    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lade;->a()Lade;

    move-result-object v2

    iget-object v2, v2, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v2, v1}, Lcom/alipay/android/app/d;->a(Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_0
    new-instance v1, Lacv;

    invoke-direct {v1}, Lacv;-><init>()V

    .line 214
    const-string v2, "next_api_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lacv;->c:Ljava/lang/String;

    .line 215
    const-string v2, "next_api_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lacv;->d:Ljava/lang/String;

    .line 216
    const-string v2, "next_namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lacv;->b:Ljava/lang/String;

    .line 217
    const-string v2, "next_request_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacv;->a(Ljava/lang/String;)V

    .line 218
    iput-object v1, p1, Lada;->k:Lacv;

    .line 230
    :goto_1
    return-object v0

    .line 210
    :cond_1
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v1

    const-string v2, "update rsa key"

    const-string v3, "rsponse data is no key"

    invoke-virtual {v1, v2, v3}, Lacm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    iget v0, p1, Lada;->a:I

    if-ne v0, v3, :cond_3

    .line 222
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v0

    const-string v1, "update rsa key"

    .line 223
    const-string v2, "rsponse data is no key"

    .line 222
    invoke-virtual {v0, v1, v2}, Lacm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 227
    :cond_4
    iput v2, p1, Lada;->a:I

    .line 228
    const-string v0, ""

    iput-object v0, p1, Lada;->b:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lacz;)Ladl;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    new-instance v3, Lada;

    invoke-direct {v3}, Lada;-><init>()V

    .line 56
    invoke-direct {p0, p1, p2, v3}, Ladn;->a(Landroid/content/Context;Lacz;Lada;)Lorg/json/JSONObject;

    move-result-object v4

    .line 57
    const-string v0, "reflected_data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 59
    iget-object v0, p2, Lacz;->c:Lcom/alipay/wandoujia/md;

    .line 60
    if-eqz v5, :cond_0

    .line 61
    const-string v0, "minipay"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v5, "true"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 63
    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    .line 67
    :cond_0
    :goto_0
    :try_start_0
    sget-object v5, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    if-ne v0, v5, :cond_5

    .line 69
    const-string v0, "form"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    const-string v0, "https"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const-string v0, "https"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lada;->j:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    new-instance v0, Ladl;

    invoke-direct {v0, p2, v3}, Ladl;-><init>(Lacz;Lada;)V

    .line 87
    invoke-virtual {v0, v4}, Ladl;->a(Lorg/json/JSONObject;)V

    .line 89
    return-object v0

    .line 63
    :cond_1
    sget-object v0, Lcom/alipay/wandoujia/md;->a:Lcom/alipay/wandoujia/md;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 71
    goto :goto_1

    .line 73
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v3, Lada;->j:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 76
    :cond_4
    iget-boolean v0, p2, Lacz;->d:Z

    iput-boolean v0, v3, Lada;->j:Z

    goto :goto_2

    .line 79
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, v3, Lada;->j:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final b(Landroid/content/Context;Lacz;)Ladl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p2, Lacz;->c:Lcom/alipay/wandoujia/md;

    .line 95
    invoke-virtual {p0, p1, p2}, Ladn;->a(Landroid/content/Context;Lacz;)Ladl;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Ladm;->a(Lcom/alipay/wandoujia/md;Ladl;)Ladl;

    move-result-object v0

    return-object v0
.end method
