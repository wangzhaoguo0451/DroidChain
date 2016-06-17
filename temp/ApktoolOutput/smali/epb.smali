.class public final Lepb;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# instance fields
.field final a:Lepi;

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/wandoujia/net/HttpTransaction;",
            ">;"
        }
    .end annotation
.end field

.field c:Leqp;

.field private final d:Landroid/os/Handler;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lepi;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lepb;->a:Lepi;

    .line 55
    new-instance v0, Lepc;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lepc;-><init>(Lepb;Landroid/os/Looper;)V

    iput-object v0, p0, Lepb;->d:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lepb;->b:Ljava/util/LinkedList;

    .line 113
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v0

    new-instance v1, Lepd;

    invoke-direct {v1, p0, p1}, Lepd;-><init>(Lepb;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Leqe;->a(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method private a()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 47
    iget-wide v0, p0, Lepb;->e:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lepb;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 48
    iget-wide v0, p0, Lepb;->e:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lepb;->e:J

    .line 50
    :cond_0
    iget-wide v0, p0, Lepb;->e:J

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v0

    new-instance v1, Lepg;

    invoke-direct {v1, p0}, Lepg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Leqe;->a(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/net/AsyncHttpRequest;)J
    .locals 4
    .parameter

    .prologue
    .line 122
    new-instance v0, Leqg;

    invoke-direct {p0}, Lepb;->a()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3, p1}, Leqg;-><init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;)V

    invoke-virtual {p0, v0}, Lepb;->a(Lcom/wandoujia/net/HttpTransaction;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)J
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lept;

    invoke-direct {p0}, Lepb;->a()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lept;-><init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lepb;->a(Lcom/wandoujia/net/HttpTransaction;)J

    move-result-wide v0

    return-wide v0
.end method

.method final a(Lcom/wandoujia/net/HttpTransaction;)J
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v0

    new-instance v1, Lepe;

    invoke-direct {v1, p1}, Lepe;-><init>(Lcom/wandoujia/net/HttpTransaction;)V

    invoke-virtual {v0, v1}, Leqe;->a(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {p1}, Lcom/wandoujia/net/HttpTransaction;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)Lepj;
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lepb;->c(J)Lcom/wandoujia/net/HttpTransaction;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/net/HttpTransaction;->i()Lepj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(I[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lepb;->d:Landroid/os/Handler;

    iget-object v1, p0, Lepb;->d:Landroid/os/Handler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method

.method final varargs a(J[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lepb;->d:Landroid/os/Handler;

    iget-object v1, p0, Lepb;->d:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v0

    new-instance v1, Lepf;

    invoke-direct {v1, p0, p1}, Lepf;-><init>(Lepb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Leqe;->a(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public final b(J)V
    .locals 3
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lepb;->c(J)Lcom/wandoujia/net/HttpTransaction;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v1

    new-instance v2, Leph;

    invoke-direct {v2, v0}, Leph;-><init>(Lcom/wandoujia/net/HttpTransaction;)V

    invoke-virtual {v1, v2}, Leqe;->a(Ljava/lang/Runnable;)V

    .line 193
    :cond_0
    return-void
.end method

.method final c(J)Lcom/wandoujia/net/HttpTransaction;
    .locals 5
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/HttpTransaction;

    .line 215
    invoke-virtual {v0}, Lcom/wandoujia/net/HttpTransaction;->h()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 219
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
