.class public final Lacd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/bd;


# static fields
.field private static f:Ljava/lang/Class;


# instance fields
.field public a:I

.field b:Lacg;

.field public c:Ladr;

.field private d:I

.field private e:Ljava/lang/Object;

.field private g:Lcom/alipay/wandoujia/bc;

.field private h:Lach;

.field private i:Lacj;

.field private j:Lacf;


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lacd;->d:I

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lacd;->a:I

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lacd;->e:Ljava/lang/Object;

    .line 52
    new-instance v0, Lach;

    invoke-direct {v0}, Lach;-><init>()V

    iput-object v0, p0, Lacd;->h:Lach;

    .line 53
    new-instance v0, Lacj;

    invoke-direct {v0, p0}, Lacj;-><init>(Lacd;)V

    iput-object v0, p0, Lacd;->i:Lacj;

    .line 54
    new-instance v0, Lacg;

    iget-object v1, p0, Lacd;->i:Lacj;

    invoke-direct {v0, v1}, Lacg;-><init>(Lacj;)V

    iput-object v0, p0, Lacd;->b:Lacg;

    .line 55
    new-instance v0, Ladr;

    invoke-direct {v0}, Ladr;-><init>()V

    iput-object v0, p0, Lacd;->c:Ladr;

    .line 56
    iget-object v0, p0, Lacd;->c:Ladr;

    iput-object p0, v0, Ladr;->b:Lcom/alipay/wandoujia/bd;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    sput-object p0, Lacd;->f:Ljava/lang/Class;

    .line 177
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lacd;->d:I

    return v0
.end method

.method public final b()Lcom/alipay/android/app/c;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    .line 70
    iget v1, p0, Lacd;->a:I

    .line 69
    invoke-virtual {v0, v1}, Lace;->e(I)Lcom/alipay/android/app/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lacf;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lacd;->j:Lacf;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lacf;

    invoke-direct {v0, p0}, Lacf;-><init>(Lacd;)V

    iput-object v0, p0, Lacd;->j:Lacf;

    .line 78
    :cond_0
    iget-object v0, p0, Lacd;->j:Lacf;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lacd;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lacd;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    iget-object v0, p0, Lacd;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_5
    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lacd;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lacd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lacd;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Lcom/alipay/wandoujia/nd;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lacj;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lacd;->i:Lacj;

    return-object v0
.end method

.method public final h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    iget v1, p0, Lacd;->d:I

    invoke-virtual {v0, v1}, Lace;->d(I)V

    .line 117
    iget-object v0, p0, Lacd;->c:Ladr;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lacd;->c:Ladr;

    invoke-virtual {v0}, Ladr;->b()V

    .line 119
    :cond_0
    sget-object v0, Lado;->a:Lado;

    if-nez v0, :cond_1

    new-instance v0, Lado;

    invoke-direct {v0}, Lado;-><init>()V

    sput-object v0, Lado;->a:Lado;

    :cond_1
    sget-object v1, Lado;->a:Lado;

    iget v2, p0, Lacd;->d:I

    iget-object v0, v1, Lado;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/nd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/wandoujia/nd;->i()V

    iget-object v0, v1, Lado;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    :cond_2
    :try_start_0
    iget-object v0, p0, Lacd;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iput-object v3, p0, Lacd;->j:Lacf;

    .line 125
    iput-object v3, p0, Lacd;->c:Ladr;

    .line 126
    iput v4, p0, Lacd;->d:I

    .line 127
    iput v4, p0, Lacd;->a:I

    .line 128
    iput-object v3, p0, Lacd;->e:Ljava/lang/Object;

    .line 129
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final i()Lcom/alipay/wandoujia/bc;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lacd;->f:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacd;->g:Lcom/alipay/wandoujia/bc;

    if-nez v0, :cond_0

    .line 167
    :try_start_0
    sget-object v0, Lacd;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/bc;

    iput-object v0, p0, Lacd;->g:Lcom/alipay/wandoujia/bc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lacd;->g:Lcom/alipay/wandoujia/bc;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final m()Lach;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lacd;->h:Lach;

    return-object v0
.end method

.method public final p()Ladq;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v3, p0, Lacd;->b:Lacg;

    iget-object v0, v3, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, v3, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;

    invoke-virtual {v0}, Ladq;->b()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Ladq;->b()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method
