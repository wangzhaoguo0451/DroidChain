.class public abstract Lflh;
.super Ljava/lang/Object;
.source "AbsCommunityPoster.java"


# instance fields
.field final a:Landroid/app/Activity;

.field final b:I

.field final c:I

.field d:Landroid/app/ProgressDialog;

.field e:Lflm;

.field f:Ljava/util/Map;
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

.field protected final g:Ljava/lang/String;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lfmy;

.field private final j:Lfmz;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflh;->f:Ljava/util/Map;

    .line 47
    new-instance v0, Lfli;

    invoke-direct {v0, p0}, Lfli;-><init>(Lflh;)V

    iput-object v0, p0, Lflh;->j:Lfmz;

    .line 85
    iput-object p1, p0, Lflh;->a:Landroid/app/Activity;

    .line 86
    iput-object p2, p0, Lflh;->g:Ljava/lang/String;

    .line 87
    iput p3, p0, Lflh;->b:I

    .line 88
    iput p4, p0, Lflh;->c:I

    .line 89
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lfln;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfln;-><init>(Lflh;B)V

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->NORMAL:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V

    .line 128
    return-void
.end method

.method public final a(Lflm;)V
    .locals 4
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lflh;->e:Lflm;

    .line 96
    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lflh;->a:Landroid/app/Activity;

    const v2, 0x7f0e0598

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lflh;->a:Landroid/app/Activity;

    const v3, 0x7f0e0226

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lflh;->d:Landroid/app/ProgressDialog;

    .line 99
    iget-object v0, p0, Lflh;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflh;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lflh;->a()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Lfmy;

    iget-object v1, p0, Lflh;->j:Lfmz;

    invoke-direct {v0, v1}, Lfmy;-><init>(Lfmz;)V

    iput-object v0, p0, Lflh;->i:Lfmy;

    iget-object v0, p0, Lflh;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lflh;->i:Lfmy;

    iget-object v3, v2, Lfmy;->a:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lfmy;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lflh;->i:Lfmy;

    invoke-virtual {v0}, Lfmy;->start()V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lflh;->i:Lfmy;

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lflh;->i:Lfmy;

    .line 167
    :cond_0
    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    new-instance v1, Lflk;

    invoke-direct {v1, p0, p1}, Lflk;-><init>(Lflh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lflh;->i:Lfmy;

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lflh;->i:Lfmy;

    .line 204
    :cond_0
    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lflh;->a:Landroid/app/Activity;

    new-instance v1, Lfll;

    invoke-direct {v1, p0, p1, p2}, Lfll;-><init>(Lflh;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lflh;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflh;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 135
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    iget-object v0, p0, Lflh;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lflh;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_3
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c()V
.end method
