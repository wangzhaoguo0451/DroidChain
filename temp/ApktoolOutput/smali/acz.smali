.class public final Lacz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lacv;

.field public b:Ljava/lang/ref/WeakReference;

.field c:Lcom/alipay/wandoujia/md;

.field d:Z

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lacv;Lorg/json/JSONObject;Lcom/alipay/wandoujia/md;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lacz;-><init>(Lacv;Lorg/json/JSONObject;Lorg/json/JSONObject;Lach;Lcom/alipay/wandoujia/md;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lacv;Lorg/json/JSONObject;Lorg/json/JSONObject;Lach;Lcom/alipay/wandoujia/md;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lacz;->b:Ljava/lang/ref/WeakReference;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacz;->d:Z

    .line 47
    iput-object p1, p0, Lacz;->a:Lacv;

    .line 48
    iput-object p2, p0, Lacz;->e:Lorg/json/JSONObject;

    .line 49
    iput-object p3, p0, Lacz;->f:Lorg/json/JSONObject;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacz;->b:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object p5, p0, Lacz;->c:Lcom/alipay/wandoujia/md;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter

    .prologue
    .line 98
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v2, p0, Lacz;->c:Lcom/alipay/wandoujia/md;

    sget-object v3, Lcom/alipay/wandoujia/md;->a:Lcom/alipay/wandoujia/md;

    if-ne v2, v3, :cond_0

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v3, "namespace"

    iget-object v4, p0, Lacz;->a:Lacv;

    iget-object v4, v4, Lacv;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v3, "api_name"

    iget-object v4, p0, Lacz;->a:Lacv;

    iget-object v4, v4, Lacv;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v3, "api_version"

    iget-object v4, p0, Lacz;->a:Lacv;

    iget-object v4, v4, Lacv;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v3, p0, Lacz;->e:Lorg/json/JSONObject;

    iget-object v4, p0, Lacz;->f:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Ld;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lacz;->e:Lorg/json/JSONObject;

    .line 111
    const-string v3, "req_data"

    .line 113
    iget-object v4, p0, Lacz;->e:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {p1, v4}, Ld;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :goto_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :goto_1
    return-object v1

    .line 115
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    iget-object v3, p0, Lacz;->f:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Ld;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    const-string v3, "namespace"

    iget-object v4, p0, Lacz;->a:Lacv;

    iget-object v4, v4, Lacv;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v3, "api_name"

    const-string v4, "com.alipay.quickpay"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v3, "api_version"

    iget-object v4, p0, Lacz;->a:Lacv;

    iget-object v4, v4, Lacv;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget-object v3, p0, Lacz;->e:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lacz;->e:Lorg/json/JSONObject;

    .line 124
    :cond_1
    iget-object v3, p0, Lacz;->e:Lorg/json/JSONObject;

    const-string v4, "action"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v3, p0, Lacz;->a:Lacv;

    iget-object v3, v3, Lacv;->c:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v4, "method"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v4, "type"

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    iget-boolean v2, p0, Lacz;->d:Z

    if-eqz v2, :cond_2

    .line 129
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 131
    const-string v3, "req_data"

    .line 133
    iget-object v4, p0, Lacz;->e:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {p1, v4}, Ld;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    :cond_2
    :try_start_1
    const-string v2, "params"

    iget-object v3, p0, Lacz;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lacz;->a:Lacv;

    invoke-virtual {v1}, Lacv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", requestData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lacz;->e:Lorg/json/JSONObject;

    iget-object v2, p0, Lacz;->f:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Ld;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
