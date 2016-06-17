.class final Lebf;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lebb;


# direct methods
.method constructor <init>(Lebb;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lebf;->a:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 232
    :try_start_0
    iget-object v2, p0, Lebf;->a:Lebb;

    const-string v0, "folder_gift_list"

    invoke-static {v0}, Ld;->N(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v2, v0}, Lebb;->a(Lebb;Ljava/util/Map;)Ljava/util/Map;

    .line 235
    invoke-static {}, Lg;->h()I

    move-result v3

    .line 238
    iget-object v0, p0, Lebf;->a:Lebb;

    invoke-static {v0}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lebf;->a:Lebb;

    invoke-static {v0}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v1

    move v2, v1

    .line 241
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 251
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->READ:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    if-ne v0, v3, :cond_d

    .line 252
    add-int/lit8 v0, v1, -0x1

    :goto_2
    move v1, v0

    .line 254
    goto :goto_1

    :cond_0
    move v1, v3

    .line 256
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v4, v5

    move v3, v1

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 261
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    if-ne v0, v2, :cond_c

    .line 262
    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    .line 264
    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    move v2, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_5
    if-eqz v4, :cond_6

    .line 270
    invoke-static {v3}, Lg;->a(I)V

    .line 271
    const-string v0, "folder_gift_list"

    iget-object v1, p0, Lebf;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    :cond_6
    if-eq v2, v3, :cond_7

    .line 276
    invoke-static {v2}, Lg;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_7
    :goto_5
    iget-object v0, p0, Lebf;->a:Lebb;

    invoke-static {v0}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    .line 283
    iget-object v0, p0, Lebf;->a:Lebb;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lebb;->a(Lebb;Ljava/util/Map;)Ljava/util/Map;

    .line 285
    :cond_8
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_1
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 287
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    return-void

    .line 279
    :cond_9
    :try_start_2
    iget-object v0, p0, Lebf;->a:Lebb;

    invoke-virtual {v0}, Lebb;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 282
    :catch_0
    move-exception v0

    iget-object v0, p0, Lebf;->a:Lebb;

    invoke-static {v0}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_a

    .line 283
    iget-object v0, p0, Lebf;->a:Lebb;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lebb;->a(Lebb;Ljava/util/Map;)Ljava/util/Map;

    .line 285
    :cond_a
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_3
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 287
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 289
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lebf;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_b

    .line 283
    iget-object v1, p0, Lebf;->a:Lebb;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lebb;->a(Lebb;Ljava/util/Map;)Ljava/util/Map;

    .line 285
    :cond_b
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_5
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 287
    invoke-static {}, Lebb;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_c
    move v0, v1

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method
