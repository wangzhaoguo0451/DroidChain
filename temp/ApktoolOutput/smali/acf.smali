.class public final Lacf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/bh;


# static fields
.field private static synthetic o:[I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Lacd;

.field private e:Ladn;

.field private f:Lcom/alipay/wandoujia/be;

.field private g:Ljava/util/Queue;

.field private h:Lcom/alipay/wandoujia/be;

.field private i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Lcom/alipay/wandoujia/md;


# direct methods
.method public constructor <init>(Lacd;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v2, p0, Lacf;->l:Z

    .line 63
    iput-object p1, p0, Lacf;->d:Lacd;

    .line 65
    sget-object v0, Lcom/alipay/wandoujia/be;->a:Lcom/alipay/wandoujia/be;

    iput-object v0, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lacf;->g:Ljava/util/Queue;

    .line 67
    iget-object v0, p0, Lacf;->g:Ljava/util/Queue;

    iget-object v1, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ladn;

    invoke-virtual {p1}, Lacd;->m()Lach;

    move-result-object v1

    invoke-direct {v0, v1}, Ladn;-><init>(Lach;)V

    iput-object v0, p0, Lacf;->e:Ladn;

    .line 70
    iget-object v0, p1, Lacd;->b:Lacg;

    iget-object v0, v0, Lacg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lacf;->i:J

    .line 72
    iput v2, p0, Lacf;->j:I

    .line 73
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v0, v0, Lacd;->b:Lacg;

    invoke-virtual {v0}, Lacg;->a()Ladl;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 365
    :goto_0
    iget-object v3, p0, Lacf;->n:Lcom/alipay/wandoujia/md;

    sget-object v4, Lcom/alipay/wandoujia/md;->a:Lcom/alipay/wandoujia/md;

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    move v2, v1

    .line 370
    :cond_0
    :goto_1
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v1, v0, Lacd;->c:Ladr;

    sget-object v0, Ladr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Ladr;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no such window type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 363
    goto :goto_0

    .line 367
    :cond_2
    iget-object v1, p0, Lacf;->n:Lcom/alipay/wandoujia/md;

    sget-object v3, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    if-ne v1, v3, :cond_0

    if-nez v0, :cond_0

    .line 368
    const/4 v2, 0x4

    goto :goto_1

    .line 370
    :cond_3
    iget-object v3, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-eqz v3, :cond_4

    iget-object v3, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_4

    iget-object v0, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    iput-object v0, v1, Ladr;->d:Lcom/alipay/wandoujia/oa;

    const/4 v0, 0x0

    iput-object v0, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    :cond_4
    iget-object v0, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-nez v0, :cond_5

    invoke-virtual {v1, v2}, Ladr;->a(I)Lcom/alipay/wandoujia/oa;

    move-result-object v0

    iput-object v0, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    :cond_5
    iget-object v0, v1, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-interface {v0, p0, p1}, Lcom/alipay/wandoujia/oa;->a(Lacf;Ljava/lang/Exception;)V

    .line 371
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v0, v0, Lacd;->b:Lacg;

    invoke-virtual {v0}, Lacg;->b()Z

    move-result v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lacf;->d:Lacd;

    iget-object v1, v1, Lacd;->b:Lacg;

    invoke-virtual {v1}, Lacg;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v0, v0, Lacd;->b:Lacg;

    invoke-virtual {v0}, Lacg;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 286
    :goto_0
    return v0

    .line 284
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v0, v0, Lacd;->b:Lacg;

    invoke-virtual {v0}, Lacg;->d()Z

    move-result v0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lacf;->d:Lacd;

    iget-object v1, v1, Lacd;->b:Lacg;

    invoke-virtual {v1}, Lacg;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 297
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 299
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 405
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 406
    iget-wide v4, p0, Lacf;->i:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 407
    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lacf;->j:I

    if-lez v4, :cond_0

    iget v4, p0, Lacf;->j:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 409
    :try_start_0
    iget v2, p0, Lacf;->j:I

    int-to-long v2, v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_1
    return-void

    .line 406
    :cond_1
    iget-wide v4, p0, Lacf;->i:J

    sub-long/2addr v0, v4

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static synthetic g()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lacf;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/wandoujia/be;->values()[Lcom/alipay/wandoujia/be;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/wandoujia/be;->d:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/wandoujia/be;->a:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/wandoujia/be;->e:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/wandoujia/be;->b:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/wandoujia/be;->f:Lcom/alipay/wandoujia/be;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lacf;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lacg;Ladl;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 431
    instance-of v0, p2, Ladq;

    if-eqz v0, :cond_1

    .line 432
    check-cast p2, Ladq;

    .line 433
    if-eqz p2, :cond_0

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lacf;->k:Ljava/lang/String;

    .line 436
    :cond_0
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v0, v0, Lacd;->c:Ladr;

    invoke-virtual {v0, p0, p2}, Ladr;->a(Lacf;Ladq;)V

    .line 438
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 103
    move v2, v5

    .line 105
    :goto_0
    if-nez v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    iput-object v10, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 171
    iput-object v10, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    move v5, v2

    .line 174
    :goto_1
    return v5

    .line 107
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lacf;->f()V

    .line 108
    iget-object v2, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/wandoujia/be;

    iput-object v2, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    invoke-static {}, Lacf;->g()[I

    move-result-object v2

    .line 109
    iget-object v3, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    invoke-virtual {v3}, Lcom/alipay/wandoujia/be;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_2
    move v2, v4

    .line 140
    goto :goto_0

    :pswitch_0
    move v2, v5

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    iget-boolean v2, p0, Lacf;->l:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lacf;->d:Lacd;

    iget-object v2, v2, Lacd;->b:Lacg;

    invoke-virtual {v2}, Lacg;->a()Ladl;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Ladl;->b:Lada;

    invoke-virtual {v2}, Lada;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lacf;->l:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lacf;->m:Z

    move v6, v5

    :goto_3
    iget-object v2, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/wandoujia/be;

    iput-object v2, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    :cond_4
    iget-object v2, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    sget-object v3, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    if-ne v2, v3, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    sget-object v3, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    if-ne v2, v3, :cond_6

    move v2, v5

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    sget-object v3, Lcom/alipay/wandoujia/be;->f:Lcom/alipay/wandoujia/be;

    if-ne v2, v3, :cond_7

    move v2, v5

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lacf;->f()V

    invoke-static {}, Lade;->a()Lade;

    move-result-object v2

    iget-object v3, v2, Lade;->a:Landroid/content/Context;

    iget-object v2, p0, Lacf;->d:Lacd;

    invoke-virtual {v2}, Lacd;->g()Lacj;

    move-result-object v2

    invoke-virtual {v2}, Lacj;->a()Lacz;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lacf;->d:Lacd;

    invoke-virtual {v2}, Lacd;->g()Lacj;

    move-result-object v2

    iget-object v2, v2, Lacj;->c:Lorg/json/JSONObject;

    iget-object v7, p0, Lacf;->d:Lacd;

    invoke-virtual {v7}, Lacd;->m()Lach;

    move-result-object v7

    iget-object v8, p0, Lacf;->a:Ljava/lang/String;

    invoke-static {v7, v8, v2}, Lg;->a(Lach;Ljava/lang/String;Lorg/json/JSONObject;)Lacz;

    move-result-object v2

    :cond_8
    iget-object v7, v2, Lacz;->c:Lcom/alipay/wandoujia/md;

    iput-object v7, p0, Lacf;->n:Lcom/alipay/wandoujia/md;

    iget-object v7, p0, Lacf;->d:Lacd;

    invoke-virtual {v7}, Lacd;->g()Lacj;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lacj;->d:J

    iget-object v7, p0, Lacf;->e:Ladn;

    invoke-virtual {v7, v3, v2}, Ladn;->b(Landroid/content/Context;Lacz;)Ladl;

    move-result-object v3

    if-eqz v3, :cond_10

    if-eqz v3, :cond_9

    instance-of v2, v3, Ladq;

    if-eqz v2, :cond_9

    move-object v0, v3

    check-cast v0, Ladq;

    move-object v2, v0

    invoke-virtual {v2}, Ladq;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_9
    :pswitch_2
    move v2, v5

    :goto_4
    iget-object v6, v3, Ladl;->b:Lada;

    invoke-virtual {v6}, Lada;->a()Z

    move-result v6

    iput-boolean v6, p0, Lacf;->l:Z

    if-nez v2, :cond_b

    iget-boolean v6, p0, Lacf;->l:Z

    if-nez v6, :cond_b

    move v6, v5

    :goto_5
    iput-boolean v6, p0, Lacf;->m:Z

    iget-object v6, v3, Ladl;->b:Lada;

    iget-wide v6, v6, Lada;->c:J

    iput-wide v6, p0, Lacf;->i:J

    iget v6, v3, Ladl;->c:I

    iput v6, p0, Lacf;->j:I

    iget-object v6, p0, Lacf;->d:Lacd;

    iget-object v6, v6, Lacd;->b:Lacg;

    invoke-virtual {v6, v3}, Lacg;->a(Ladl;)V

    :goto_6
    iget-boolean v6, p0, Lacf;->m:Z

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lacf;->f()V

    const/4 v6, 0x0

    iput-object v6, p0, Lacf;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lacf;->l:Z

    if-eqz v6, :cond_a

    iget-object v6, v3, Ladl;->b:Lada;

    invoke-virtual {v6}, Lada;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lacf;->b:Ljava/lang/String;

    iget-object v3, v3, Ladl;->b:Lada;

    iget-object v3, v3, Lada;->h:Ljava/lang/String;

    iput-object v3, p0, Lacf;->c:Ljava/lang/String;

    :cond_a
    if-eqz v2, :cond_c

    move v2, v5

    goto/16 :goto_0

    :pswitch_3
    move v2, v4

    goto :goto_4

    :cond_b
    move v6, v4

    goto :goto_5

    :cond_c
    iget-boolean v2, p0, Lacf;->l:Z

    goto/16 :goto_0

    .line 117
    :pswitch_4
    invoke-direct {p0}, Lacf;->c()Z

    move-result v2

    goto/16 :goto_0

    .line 120
    :pswitch_5
    invoke-direct {p0}, Lacf;->d()Z

    move-result v2

    goto/16 :goto_0

    .line 123
    :pswitch_6
    invoke-direct {p0}, Lacf;->e()Z

    move-result v2

    goto/16 :goto_0

    .line 126
    :pswitch_7
    iget-object v2, p0, Lacf;->d:Lacd;

    invoke-virtual {v2}, Lacd;->g()Lacj;

    move-result-object v2

    invoke-virtual {v2}, Lacj;->b()V

    iget-object v2, p0, Lacf;->d:Lacd;

    iget-object v2, v2, Lacd;->b:Lacg;

    invoke-virtual {v2}, Lacg;->f()V

    iget-object v2, p0, Lacf;->g:Ljava/util/Queue;

    sget-object v3, Lcom/alipay/wandoujia/be;->a:Lcom/alipay/wandoujia/be;

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v5

    .line 127
    goto/16 :goto_0

    .line 130
    :pswitch_8
    :try_start_2
    iget-object v2, p0, Lacf;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 131
    const-string v2, "no show first window"

    iput-object v2, p0, Lacf;->k:Ljava/lang/String;

    .line 133
    :cond_d
    iget-boolean v2, p0, Lacf;->l:Z

    if-nez v2, :cond_e

    .line 135
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v2

    iget-object v3, p0, Lacf;->k:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Exit]Android--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lade;->a()Lade;

    move-result-object v7

    iget-object v7, v7, Lade;->a:Landroid/content/Context;

    invoke-static {v7}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v7

    iget-object v7, v7, Ladd;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_7
    :try_start_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Laco;

    sget-object v7, Lcom/alipay/wandoujia/fa;->m:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6}, Laco;-><init>(Lcom/alipay/wandoujia/fa;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lacm;->a(Laco;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_4 .. :try_end_4} :catch_1

    .line 139
    :cond_e
    :goto_8
    :try_start_5
    iget-object v2, p0, Lacf;->d:Lacd;

    iget-object v2, v2, Lacd;->b:Lacg;

    invoke-virtual {v2}, Lacg;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 148
    :catch_0
    move-exception v2

    .line 150
    :try_start_6
    invoke-static {}, Lade;->a()Lade;

    move-result-object v3

    .line 151
    iget-object v3, v3, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v3}, Lcom/alipay/android/app/d;->p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6002"

    const-string v6, ""

    .line 150
    invoke-static {v3, v4, v6}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lacf;->b:Ljava/lang/String;

    .line 152
    invoke-direct {p0, v2}, Lacf;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 170
    iput-object v10, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 171
    iput-object v10, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    goto/16 :goto_1

    .line 154
    :catch_1
    move-exception v2

    .line 156
    :try_start_7
    invoke-static {}, Lade;->a()Lade;

    move-result-object v3

    .line 157
    iget-object v3, v3, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v3}, Lcom/alipay/android/app/d;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6001"

    const-string v6, ""

    .line 156
    invoke-static {v3, v4, v6}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lacf;->b:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v2}, Lacf;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    iput-object v10, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 171
    iput-object v10, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    goto/16 :goto_1

    .line 160
    :catch_2
    move-exception v2

    .line 161
    :try_start_8
    invoke-static {v2}, Ld;->b(Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v3

    const-string v4, "crash"

    invoke-virtual {v3, v2, v4}, Lacm;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lade;->a()Lade;

    move-result-object v3

    .line 165
    iget-object v3, v3, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v3}, Lcom/alipay/android/app/d;->r()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6001"

    const-string v6, ""

    .line 164
    invoke-static {v3, v4, v6}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lacf;->b:Ljava/lang/String;

    .line 166
    invoke-direct {p0, v2}, Lacf;->a(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 170
    iput-object v10, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 171
    iput-object v10, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    goto/16 :goto_1

    .line 168
    :catchall_0
    move-exception v2

    .line 170
    iput-object v10, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 171
    iput-object v10, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    .line 172
    throw v2

    :catch_3
    move-exception v2

    goto :goto_8

    :catch_4
    move-exception v7

    goto/16 :goto_7

    :cond_f
    move v6, v2

    goto/16 :goto_3

    :cond_10
    move v2, v6

    goto/16 :goto_6

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch -0xa
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized a(Lcom/alipay/wandoujia/be;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 441
    monitor-enter p0

    const/4 v1, 0x0

    .line 451
    :try_start_0
    sget-object v2, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    if-ne p1, v2, :cond_0

    .line 452
    sget-object v1, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    iput-object v1, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    .line 453
    sget-object v1, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    iput-object v1, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 454
    iget-object v1, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 455
    iget-object v1, p0, Lacf;->g:Ljava/util/Queue;

    sget-object v2, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v1, p0, Lacf;->d:Lacd;

    invoke-virtual {v1}, Lacd;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_0
    monitor-exit p0

    return v0

    .line 458
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    if-ne p1, v2, :cond_1

    .line 459
    sget-object v1, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    iput-object v1, p0, Lacf;->f:Lcom/alipay/wandoujia/be;

    .line 460
    sget-object v1, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    iput-object v1, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 461
    iget-object v1, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 462
    iget-object v1, p0, Lacf;->g:Ljava/util/Queue;

    sget-object v2, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v1, p0, Lacf;->d:Lacd;

    invoke-virtual {v1}, Lacd;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lacf;->m:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    if-eq v2, p1, :cond_3

    .line 466
    :cond_2
    iget-object v2, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 467
    iget-object v2, p0, Lacf;->g:Ljava/util/Queue;

    sget-object v3, Lcom/alipay/wandoujia/be;->f:Lcom/alipay/wandoujia/be;

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 468
    iput-object p1, p0, Lacf;->h:Lcom/alipay/wandoujia/be;

    .line 469
    iget-object v1, p0, Lacf;->g:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lacf;->d:Lacd;

    invoke-virtual {v1}, Lacd;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lacf;->d:Lacd;

    iget-object v0, v0, Lacd;->b:Lacg;

    invoke-virtual {v0}, Lacg;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    sget-object v0, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    invoke-virtual {p0, v0}, Lacf;->a(Lcom/alipay/wandoujia/be;)Z

    move-result v0

    return v0

    .line 353
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
