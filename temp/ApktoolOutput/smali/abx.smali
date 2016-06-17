.class public final Labx;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/alipay/ut/b/b$a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private synthetic c:Labw;


# direct methods
.method public constructor <init>(Labw;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Labx;->c:Labw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labx;->a:Ljava/util/Map;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Labx;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)Lcom/alipay/ut/b/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit p0

    return-object p0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/alipay/ut/b/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit p0

    return-object p0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/alipay/ut/b/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    monitor-exit p0

    return-object p0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/alipay/ut/b/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit p0

    return-object p0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/ut/b/b$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit p0

    return-object p0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final commit()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    .line 285
    invoke-static {}, Labv;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 286
    :try_start_0
    iget-object v3, p0, Labx;->c:Labw;

    invoke-static {v3}, Labw;->a(Labw;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v2, v1

    .line 287
    :cond_0
    if-eqz v2, :cond_9

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Labx;->c:Labw;

    invoke-static {v3}, Labw;->a(Labw;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v1

    .line 293
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    iget-boolean v0, p0, Labx;->b:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Labx;->c:Labw;

    invoke-static {v0}, Labw;->b(Labw;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Labx;->b:Z

    .line 299
    :cond_1
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 302
    if-ne v0, p0, :cond_3

    .line 303
    iget-object v0, p0, Labx;->c:Labw;

    invoke-static {v0}, Labw;->b(Labw;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_2
    if-eqz v2, :cond_2

    .line 309
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 319
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 305
    :cond_3
    :try_start_3
    iget-object v7, p0, Labx;->c:Labw;

    invoke-static {v7}, Labw;->b(Labw;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 313
    :cond_4
    iget-object v0, p0, Labx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 314
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :try_start_4
    iget-object v0, p0, Labx;->c:Labw;

    invoke-static {v0}, Labw;->c(Labw;)Z

    move-result v6

    .line 316
    if-eqz v6, :cond_5

    .line 317
    iget-object v1, p0, Labx;->c:Labw;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Labw;->b:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 319
    :cond_5
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 321
    if-eqz v2, :cond_8

    .line 322
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v2, :cond_8

    .line 323
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/ut/b/b$b;

    .line 325
    if-eqz v1, :cond_6

    .line 326
    iget-object v7, p0, Labx;->c:Labw;

    invoke-interface {v1, v7, v0}, Lcom/alipay/ut/b/b$b;->a(Lcom/alipay/ut/b/b;Ljava/lang/String;)V

    goto :goto_4

    .line 317
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 322
    :cond_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    .line 333
    :cond_8
    return v6

    :cond_9
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_0
.end method

.method public final n()Lcom/alipay/ut/b/b$a;
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Labx;->b:Z

    .line 274
    monitor-exit p0

    return-object p0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
