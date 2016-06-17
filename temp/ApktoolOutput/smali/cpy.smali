.class final Lcpy;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcpx;


# direct methods
.method constructor <init>(Lcpx;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcpy;->a:Lcpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcpy;->a:Lcpx;

    invoke-static {v0}, Lcpx;->a(Lcpx;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 99
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcpy;->a:Lcpx;

    invoke-static {v0}, Lcpx;->a(Lcpx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    iget-object v0, p0, Lcpy;->a:Lcpx;

    invoke-static {v0}, Lcpx;->a(Lcpx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Landroid/content/Intent;

    .line 105
    invoke-static {}, Lcpx;->a()Ljava/util/Set;

    move-result-object v6

    monitor-enter v6

    .line 106
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqd;

    .line 107
    iget-object v3, v0, Lcqd;->a:Ljava/lang/String;

    invoke-static {v3}, Lcpx;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 108
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v8, v3, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    add-int/lit8 v3, v2, 0x1

    aput-object v8, v5, v2

    .line 113
    invoke-static {}, Lcpx;->a()Ljava/util/Set;

    move-result-object v2

    iget-object v0, v0, Lcqd;->d:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v3

    .line 114
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 115
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    const/16 v0, 0xb

    :try_start_4
    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcpy;->a:Lcpx;

    invoke-static {v0}, Lcpx;->b(Lcpx;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 130
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqd;

    .line 131
    iget-object v2, v0, Lcqd;->c:Lcpw;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, v0, Lcqd;->c:Lcpw;

    iget-object v0, v0, Lcqd;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcpw;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 122
    :cond_3
    :try_start_6
    array-length v2, v5

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_1

    aget-object v1, v5, v0

    .line 123
    iget-object v3, p0, Lcpy;->a:Lcpx;

    invoke-static {v3}, Lcpx;->b(Lcpx;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqd;

    .line 131
    iget-object v2, v0, Lcqd;->c:Lcpw;

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, v0, Lcqd;->c:Lcpw;

    iget-object v0, v0, Lcqd;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcpw;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqd;

    .line 131
    iget-object v3, v0, Lcqd;->c:Lcpw;

    if-eqz v3, :cond_5

    .line 132
    iget-object v3, v0, Lcqd;->c:Lcpw;

    iget-object v0, v0, Lcqd;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcpw;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 134
    :cond_6
    throw v1

    .line 135
    :cond_7
    return-void
.end method
