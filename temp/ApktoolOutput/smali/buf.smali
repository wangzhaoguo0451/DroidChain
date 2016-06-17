.class public final Lbuf;
.super Ljava/lang/Object;
.source "WbAppInstallActivator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbue;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbuf;->a:Lbue;

    iput-object p2, p0, Lbuf;->b:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->a(Lbue;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbuf;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbue;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->c(Lbue;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 88
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->d(Lbue;)Lbuh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->d(Lbue;)Lbuh;

    move-result-object v0

    iget-object v0, v0, Lbuh;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->d(Lbue;)Lbuh;

    move-result-object v0

    iget-object v2, v0, Lbuh;->b:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->d(Lbue;)Lbuh;

    move-result-object v0

    iget-object v3, v0, Lbuh;->a:Ljava/lang/String;

    .line 92
    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lbuf;->a:Lbue;

    invoke-static {v4}, Lbue;->d(Lbue;)Lbuh;

    move-result-object v4

    iget v4, v4, Lbuh;->c:I

    if-lt v0, v4, :cond_2

    .line 94
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->a(Lbue;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lbue;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_1
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->b(Lbue;)V

    .line 108
    :goto_2
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    :try_start_1
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->a(Lbue;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->a(Lbue;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lbue;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 104
    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->b(Lbue;)V

    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    iget-object v1, p0, Lbuf;->a:Lbue;

    invoke-static {v1}, Lbue;->b(Lbue;)V

    .line 107
    throw v0
.end method
