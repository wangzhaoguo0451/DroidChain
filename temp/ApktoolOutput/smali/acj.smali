.class public final Lacj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lada;

.field public b:Lorg/json/JSONObject;

.field c:Lorg/json/JSONObject;

.field d:J

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Z


# direct methods
.method protected constructor <init>(Lacd;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacj;->f:Z

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacj;->e:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lacj;->c:Lorg/json/JSONObject;

    .line 50
    return-void
.end method


# virtual methods
.method protected final a()Lacz;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lacj;->a:Lada;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lacj;->a:Lada;

    iget-object v3, v1, Lada;->g:Lorg/json/JSONObject;

    .line 99
    iget-object v1, p0, Lacj;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lacj;->f:Z

    if-eqz v1, :cond_3

    .line 101
    iget-object v0, p0, Lacj;->b:Lorg/json/JSONObject;

    move-object v1, v0

    .line 103
    :goto_0
    iget-object v0, p0, Lacj;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacd;

    invoke-virtual {v0}, Lacd;->m()Lach;

    move-result-object v4

    .line 104
    invoke-static {}, Ladi;->b()Ladi;

    move-result-object v0

    .line 106
    if-nez v1, :cond_2

    .line 107
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    if-eqz v0, :cond_0

    .line 110
    :try_start_1
    const-string v1, "tid"

    iget-object v0, v0, Ladi;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_0
    :goto_2
    new-instance v0, Lacz;

    iget-object v1, p0, Lacj;->a:Lada;

    iget-object v1, v1, Lada;->k:Lacv;

    .line 116
    iget-object v5, p0, Lacj;->a:Lada;

    iget-object v5, v5, Lada;->i:Lcom/alipay/wandoujia/md;

    .line 115
    invoke-direct/range {v0 .. v5}, Lacz;-><init>(Lacv;Lorg/json/JSONObject;Lorg/json/JSONObject;Lach;Lcom/alipay/wandoujia/md;)V

    .line 118
    iget-object v1, p0, Lacj;->a:Lada;

    iget-boolean v1, v1, Lada;->j:Z

    iput-boolean v1, v0, Lacz;->d:Z

    .line 121
    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method protected final a(Ladl;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    instance-of v0, p1, Ladq;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 64
    check-cast v0, Ladq;

    .line 65
    invoke-virtual {v0}, Ladq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lacj;->c()V

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lacj;->b(Ladl;)V

    .line 70
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lacj;->c()V

    .line 126
    return-void
.end method

.method protected final b(Ladl;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p1, Ladl;->b:Lada;

    iput-object v0, p0, Lacj;->a:Lada;

    .line 81
    instance-of v0, p1, Ladq;

    iput-boolean v0, p0, Lacj;->f:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lacj;->b:Lorg/json/JSONObject;

    .line 89
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lacj;->a:Lada;

    .line 133
    iput-object v0, p0, Lacj;->b:Lorg/json/JSONObject;

    .line 134
    iget-object v0, p0, Lacj;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacd;

    invoke-virtual {v0}, Lacd;->m()Lach;

    move-result-object v0

    invoke-virtual {v0}, Lach;->b()V

    .line 136
    return-void
.end method
