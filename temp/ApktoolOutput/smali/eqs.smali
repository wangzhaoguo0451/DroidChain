.class public abstract Leqs;
.super Lcom/android/volley/Request;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final l:Leqr;

.field public m:Z

.field public n:Leqt;

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:[Ljava/lang/String;

.field private final q:Lagu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<TT;>;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Leqr;Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Leqr;",
            "Lagu",
            "<TT;>;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 143
    invoke-interface {p4}, Leqr;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Leqs;->a(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lagt;)V

    .line 146
    iput-object p2, p0, Leqs;->t:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Leqs;->u:Ljava/util/Map;

    .line 148
    iput-object p4, p0, Leqs;->l:Leqr;

    .line 149
    iput-object p5, p0, Leqs;->q:Lagu;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqs;->r:Z

    .line 152
    iput-boolean v3, p0, Leqs;->m:Z

    .line 154
    new-instance v0, Lagw;

    const/16 v1, 0x1770

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v3, v2}, Lagw;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/volley/Request;->j:Lagw;

    .line 155
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 189
    packed-switch p0, :pswitch_data_0

    .line 198
    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_1
    return-object p1

    .line 191
    :pswitch_0
    invoke-static {p2, p3}, Leqs;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 203
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_0
    if-eqz p0, :cond_1

    .line 171
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected final a(Lagp;)Lags;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")",
            "Lags",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Leqs;->b(Lagp;)Ljava/lang/Object;

    move-result-object v1

    .line 346
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/volley/Request;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/volley/Request;->a:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lags;->a(Ljava/lang/Object;Lagi;)Lags;

    move-result-object v0

    .line 352
    :goto_1
    return-object v0

    .line 346
    :cond_1
    iget-object v0, p0, Leqs;->n:Leqt;

    if-nez v0, :cond_2

    invoke-static {p1}, Lg;->a(Lagp;)Lagi;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lg;->a(Lagp;)Lagi;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v4, v2

    iput-wide v4, v0, Lagi;->e:J

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    iput-wide v2, v0, Lagi;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-static {v0}, Lcom/wandoujia/base/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 350
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, p1}, Lcom/android/volley/ParseError;-><init>(Lagp;)V

    .line 351
    invoke-virtual {v1, v0}, Lcom/android/volley/ParseError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 352
    invoke-static {v1}, Lags;->a(Lcom/android/volley/VolleyError;)Lags;

    move-result-object v0

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    iget v1, p0, Lcom/android/volley/Request;->a:I

    if-eqz v1, :cond_0

    .line 293
    invoke-super {p0}, Lcom/android/volley/Request;->a()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 295
    :cond_0
    iget-object v1, p0, Leqs;->s:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 296
    const-string v1, "%s#%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Leqs;->t:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leqs;->s:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Leqs;->u:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Leqs;->p:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 300
    iget-object v0, p0, Leqs;->p:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 302
    :goto_1
    iget-object v0, p0, Leqs;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 303
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leqs;->s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leqs;->s:Ljava/lang/String;

    goto :goto_2

    .line 310
    :cond_3
    iget-object v0, p0, Leqs;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Leqs;->q:Lagu;

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-boolean v0, p0, Leqs;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Leqs;->r:Z

    if-nez v0, :cond_0

    .line 337
    :cond_2
    iget-object v0, p0, Leqs;->q:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqs;->r:Z

    goto :goto_0
.end method

.method protected abstract b(Lagp;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")TT;"
        }
    .end annotation
.end method

.method public final c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget-object v1, p0, Leqs;->l:Leqr;

    invoke-interface {v1}, Leqr;->b()Ljava/util/Map;

    move-result-object v1

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 249
    iget-object v1, p0, Leqs;->o:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Leqs;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 252
    :cond_0
    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Leqs;->u:Ljava/util/Map;

    iget-object v1, p0, Leqs;->l:Leqr;

    invoke-interface {v1}, Leqr;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Leqs;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Lcom/android/volley/Request;->i()Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Leqs;->l:Leqr;

    invoke-interface {v0}, Leqr;->a()Lagr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lagr;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 421
    return-void
.end method
