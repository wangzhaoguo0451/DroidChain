.class final Lepc;
.super Landroid/os/Handler;
.source "AsyncHttpClient.java"


# instance fields
.field private synthetic a:Lepb;


# direct methods
.method constructor <init>(Lepb;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lepc;->a:Lepb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lepc;->a:Lepb;

    aget-object v2, v0, v4

    iget-object v1, v1, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/net/HttpTransaction;

    if-ne v1, v2, :cond_0

    move-object v2, v1

    .line 60
    :goto_0
    if-nez v2, :cond_4

    .line 61
    const-wide/16 v2, 0x0

    .line 62
    aget-object v1, v0, v4

    instance-of v1, v1, Leqg;

    if-eqz v1, :cond_3

    .line 63
    aget-object v0, v0, v4

    check-cast v0, Leqg;

    iget-wide v0, v0, Leqg;->e:J

    .line 67
    :goto_1
    iget-object v2, p0, Lepc;->a:Lepb;

    invoke-virtual {v2, v0, v1}, Lepb;->c(J)Lcom/wandoujia/net/HttpTransaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    :goto_2
    return-void

    .line 59
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    .line 64
    :cond_3
    aget-object v1, v0, v4

    instance-of v1, v1, Lept;

    if-eqz v1, :cond_5

    .line 65
    aget-object v0, v0, v4

    check-cast v0, Lept;

    iget-wide v0, v0, Lept;->e:J

    goto :goto_1

    .line 73
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    iget-object v1, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v1, v1, Lepj;->h:Leps;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/wandoujia/net/TrackInfo;

    invoke-direct {v2}, Lcom/wandoujia/net/TrackInfo;-><init>()V

    iput-object v2, v1, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    iget-object v2, v1, Leps;->a:Ljava/util/List;

    iget-object v3, v1, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Leps;->c:J

    iget-object v1, v1, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    iput-object v0, v1, Lcom/wandoujia/net/TrackInfo;->url:Ljava/lang/String;

    goto :goto_2

    .line 78
    :pswitch_1
    iget-object v1, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v1, v1, Lepj;->h:Leps;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    iput-object v0, v2, Lcom/wandoujia/net/TrackInfo;->ip:Ljava/lang/String;

    iget-object v0, v1, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    invoke-virtual {v1}, Leps;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/net/TrackInfo;->ipResolveDuration:J

    goto :goto_2

    .line 81
    :pswitch_2
    iget-object v0, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v0, v0, Lepj;->h:Leps;

    iget-object v1, v0, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    invoke-virtual {v0}, Leps;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/wandoujia/net/TrackInfo;->connectDuration:J

    goto :goto_2

    .line 84
    :pswitch_3
    iget-object v1, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v1, v1, Lepj;->h:Leps;

    iget-object v3, v1, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    invoke-virtual {v1}, Leps;->a()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/wandoujia/net/TrackInfo;->headerReceiveDuration:J

    .line 85
    iget-object v3, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lepj;->f:J

    .line 86
    iget-object v1, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lepj;->g:J

    .line 87
    iget-object v0, p0, Lepc;->a:Lepb;

    iget-object v0, v0, Lepb;->a:Lepi;

    iget-wide v2, v2, Lcom/wandoujia/net/HttpTransaction;->e:J

    invoke-interface {v0, v2, v3}, Lepi;->a(J)V

    goto/16 :goto_2

    .line 90
    :pswitch_4
    iget-object v1, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lepj;->f:J

    .line 91
    iget-object v0, p0, Lepc;->a:Lepb;

    iget-object v0, v0, Lepb;->a:Lepi;

    iget-wide v2, v2, Lcom/wandoujia/net/HttpTransaction;->e:J

    invoke-interface {v0, v2, v3}, Lepi;->b(J)V

    goto/16 :goto_2

    .line 94
    :pswitch_5
    iget-object v0, p0, Lepc;->a:Lepb;

    iget-object v0, v0, Lepb;->a:Lepi;

    iget-wide v4, v2, Lcom/wandoujia/net/HttpTransaction;->e:J

    invoke-interface {v0, v4, v5}, Lepi;->d(J)V

    .line 95
    iget-object v0, p0, Lepc;->a:Lepb;

    iget-object v0, v0, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 98
    :pswitch_6
    iget-object v0, v2, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v0, v0, Lepj;->h:Leps;

    iget-object v1, v0, Leps;->b:Lcom/wandoujia/net/TrackInfo;

    invoke-virtual {v0}, Leps;->a()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/wandoujia/net/TrackInfo;->bodyReceiveDuration:J

    .line 99
    iget-object v0, p0, Lepc;->a:Lepb;

    iget-object v0, v0, Lepb;->a:Lepi;

    iget-wide v4, v2, Lcom/wandoujia/net/HttpTransaction;->e:J

    invoke-interface {v0, v4, v5}, Lepi;->c(J)V

    .line 100
    iget-object v0, p0, Lepc;->a:Lepb;

    iget-object v0, v0, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 103
    :pswitch_7
    invoke-virtual {v2}, Lcom/wandoujia/net/HttpTransaction;->g()Lcom/wandoujia/net/HttpTransaction;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lepc;->a:Lepb;

    iget-object v1, v1, Lepb;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lepc;->a:Lepb;

    invoke-virtual {v1, v0}, Lepb;->a(Lcom/wandoujia/net/HttpTransaction;)J

    goto/16 :goto_2

    :cond_5
    move-wide v0, v2

    goto/16 :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
