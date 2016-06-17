.class public Lye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/oa;
.implements Lcom/alipay/wandoujia/rh;


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/wandoujia/bd;

.field private e:Lacf;

.field private f:Lcom/alipay/android/mini/window/sdk/k;

.field private g:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    iput-object v0, p0, Lye;->a:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lye;->c:Landroid/os/Handler;

    .line 51
    iget-object v0, p0, Lye;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lye;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lye;)Lcom/alipay/android/mini/window/sdk/k;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 4
    .parameter

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    :cond_0
    iget-object v1, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 423
    :goto_0
    return-void

    .line 405
    :cond_1
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 410
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 412
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    const-string v2, "can not receive activity onload event"

    .line 412
    invoke-virtual {v0, v1, v2}, Lacm;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lye;->e:Lacf;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lye;->e:Lacf;

    invoke-virtual {v0}, Lacf;->b()Z

    goto :goto_0

    .line 418
    :cond_2
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 419
    const-string v2, "can not use exit cmd"

    .line 418
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    invoke-interface {v0}, Lcom/alipay/wandoujia/bd;->a()I

    move-result v1

    .line 382
    iget-object v0, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    invoke-interface {v0}, Lcom/alipay/wandoujia/bd;->b()Lcom/alipay/android/app/c;

    move-result-object v0

    .line 384
    :try_start_0
    iget-object v2, p0, Lye;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v1, v3}, Lcom/alipay/android/app/c;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 387
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 388
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 389
    iget-object v3, p0, Lye;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 391
    const-string v3, "CallingPid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v0}, Lcom/alipay/android/mini/window/sdk/l;->i()V

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic b(Lye;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lye;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 366
    const-class v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    instance-of v1, v1, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    .line 373
    invoke-direct {p0, v0}, Lye;->a(Ljava/lang/String;)V

    .line 374
    const-class v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-direct {p0, v0}, Lye;->a(Ljava/lang/Class;)V

    .line 375
    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v1}, Lcom/alipay/android/mini/window/sdk/k;->i()V

    goto :goto_0
.end method

.method static synthetic c(Lye;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lye;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic d(Lye;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lye;->c:Landroid/os/Handler;

    return-void
.end method

.method private static synthetic d()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lye;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/wandoujia/ra;->values()[Lcom/alipay/wandoujia/ra;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/wandoujia/ra;->j:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_17

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/wandoujia/ra;->c:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_16

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/wandoujia/ra;->r:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/wandoujia/ra;->t:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/wandoujia/ra;->g:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/wandoujia/ra;->v:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/wandoujia/ra;->d:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/wandoujia/ra;->w:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/wandoujia/ra;->f:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/wandoujia/ra;->o:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alipay/wandoujia/ra;->b:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alipay/wandoujia/ra;->q:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alipay/wandoujia/ra;->u:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_d
    :try_start_d
    sget-object v1, Lcom/alipay/wandoujia/ra;->l:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_e
    :try_start_e
    sget-object v1, Lcom/alipay/wandoujia/ra;->i:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_f
    :try_start_f
    sget-object v1, Lcom/alipay/wandoujia/ra;->h:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_10
    :try_start_10
    sget-object v1, Lcom/alipay/wandoujia/ra;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_11
    :try_start_11
    sget-object v1, Lcom/alipay/wandoujia/ra;->n:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_12
    :try_start_12
    sget-object v1, Lcom/alipay/wandoujia/ra;->e:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_13
    :try_start_13
    sget-object v1, Lcom/alipay/wandoujia/ra;->k:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    :goto_14
    :try_start_14
    sget-object v1, Lcom/alipay/wandoujia/ra;->m:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_15
    :try_start_15
    sget-object v1, Lcom/alipay/wandoujia/ra;->p:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_16
    :try_start_16
    sget-object v1, Lcom/alipay/wandoujia/ra;->s:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_17
    :try_start_17
    sget-object v1, Lcom/alipay/wandoujia/ra;->x:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_18
    sput-object v0, Lye;->h:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_18

    :catch_1
    move-exception v1

    goto :goto_17

    :catch_2
    move-exception v1

    goto :goto_16

    :catch_3
    move-exception v1

    goto :goto_15

    :catch_4
    move-exception v1

    goto :goto_14

    :catch_5
    move-exception v1

    goto :goto_13

    :catch_6
    move-exception v1

    goto :goto_12

    :catch_7
    move-exception v1

    goto :goto_11

    :catch_8
    move-exception v1

    goto :goto_10

    :catch_9
    move-exception v1

    goto :goto_f

    :catch_a
    move-exception v1

    goto :goto_e

    :catch_b
    move-exception v1

    goto/16 :goto_d

    :catch_c
    move-exception v1

    goto/16 :goto_c

    :catch_d
    move-exception v1

    goto/16 :goto_b

    :catch_e
    move-exception v1

    goto/16 :goto_a

    :catch_f
    move-exception v1

    goto/16 :goto_9

    :catch_10
    move-exception v1

    goto/16 :goto_8

    :catch_11
    move-exception v1

    goto/16 :goto_7

    :catch_12
    move-exception v1

    goto/16 :goto_6

    :catch_13
    move-exception v1

    goto/16 :goto_5

    :catch_14
    move-exception v1

    goto/16 :goto_4

    :catch_15
    move-exception v1

    goto/16 :goto_3

    :catch_16
    move-exception v1

    goto/16 :goto_2

    :catch_17
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic e(Lye;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lye;->e:Lacf;

    return-void
.end method

.method static synthetic f(Lye;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    return-void
.end method

.method static synthetic g(Lye;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    return-void
.end method

.method static synthetic h(Lye;)Lcom/alipay/android/mini/window/sdk/l;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    return-object v0
.end method


# virtual methods
.method public a(Lacf;Ladq;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p2}, Ladq;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-static {}, Ld;->g()V

    const-class v0, Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lye;->a(Ljava/lang/String;)V

    const-class v0, Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-direct {p0, v0}, Lye;->a(Ljava/lang/Class;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p2}, Ladq;->b()I

    move-result v0

    .line 86
    iget-object v1, p2, Ladl;->d:Lorg/json/JSONObject;

    .line 87
    const-string v2, "form_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    sparse-switch v0, :sswitch_data_0

    .line 89
    :goto_1
    iget-object v2, p2, Ladl;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v3, v0}, Lcom/alipay/android/mini/window/sdk/l;->a(I)V

    :cond_2
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v1, v2}, Lcom/alipay/android/mini/window/sdk/l;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lye;->c()V

    iget-object v1, p0, Lye;->c:Landroid/os/Handler;

    new-instance v2, Lyi;

    invoke-direct {v2, p0, v0}, Lyi;-><init>(Lye;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v0}, Lcom/alipay/android/mini/window/sdk/l;->b()Lcom/alipay/wandoujia/rg;

    move-result-object v0

    new-instance v1, Ladu;

    sget-object v2, Lcom/alipay/wandoujia/ra;->d:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v2}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/wandoujia/rg;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    goto :goto_0

    .line 88
    :sswitch_1
    invoke-direct {p0}, Lye;->b()V

    new-instance v2, Lzk;

    iget-object v3, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    invoke-direct {v2, v3}, Lzk;-><init>(Lcom/alipay/wandoujia/bd;)V

    iput-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lye;->b()V

    new-instance v2, Lzj;

    iget-object v3, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    iget-object v4, p0, Lye;->c:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lzj;-><init>(Lcom/alipay/wandoujia/bd;Landroid/os/Handler;)V

    iput-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lye;->b()V

    const-string v2, "cashier-card-no"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lym;

    iget-object v3, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    invoke-direct {v2, v3}, Lym;-><init>(Lcom/alipay/wandoujia/bd;)V

    iput-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    :goto_2
    iget-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v2, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lyq;

    iget-object v3, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    invoke-direct {v2, v3}, Lyq;-><init>(Lcom/alipay/wandoujia/bd;)V

    iput-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    goto :goto_2

    :sswitch_4
    invoke-direct {p0}, Lye;->b()V

    new-instance v2, Lzi;

    iget-object v3, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    invoke-direct {v2, v3}, Lzi;-><init>(Lcom/alipay/wandoujia/bd;)V

    iput-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    goto :goto_1

    .line 89
    :sswitch_5
    invoke-direct {p0}, Lye;->c()V

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v4, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    invoke-interface {v3, v4}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/k;)V

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v3, v2}, Lcom/alipay/android/mini/window/sdk/l;->a(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    const-string v4, "form"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/android/mini/window/sdk/l;->b(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    const-string v4, "subforms"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/alipay/android/mini/window/sdk/l;->c(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v2, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lye;->c:Landroid/os/Handler;

    new-instance v2, Lyg;

    invoke-direct {v2, p0, v0}, Lyg;-><init>(Lye;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v3, v2}, Lcom/alipay/android/mini/window/sdk/l;->a(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v3, v2}, Lcom/alipay/android/mini/window/sdk/l;->b(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    const-string v4, "subforms"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/alipay/android/mini/window/sdk/l;->c(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v2, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lye;->c()V

    iget-object v1, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v2, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    invoke-interface {v1, v2}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/k;)V

    iget-object v1, p0, Lye;->c:Landroid/os/Handler;

    new-instance v2, Lyh;

    invoke-direct {v2, p0, v0}, Lyh;-><init>(Lye;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v0}, Lcom/alipay/android/mini/window/sdk/l;->b()Lcom/alipay/wandoujia/rg;

    move-result-object v0

    new-instance v1, Ladu;

    sget-object v2, Lcom/alipay/wandoujia/ra;->n:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v2}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/wandoujia/rg;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    goto/16 :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_4
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
    .end sparse-switch

    .line 89
    :sswitch_data_1
    .sparse-switch
        -0xa -> :sswitch_0
        0x4 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Lacf;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 239
    :cond_0
    invoke-direct {p0}, Lye;->c()V

    .line 241
    :cond_1
    instance-of v0, p2, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    new-instance v1, Lyl;

    invoke-direct {v1, p0}, Lyl;-><init>(Lye;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_2
    instance-of v0, p2, Lcom/alipay/android/app/exception/ValifyException;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    new-instance v1, Lyk;

    invoke-direct {v1, p0, p2}, Lyk;-><init>(Lye;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    new-instance v1, Lyj;

    invoke-direct {v1, p0, p2}, Lyj;-><init>(Lye;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lacf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    return-void
.end method

.method public a(Lcom/alipay/wandoujia/bd;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lye;->d:Lcom/alipay/wandoujia/bd;

    .line 76
    invoke-interface {p1}, Lcom/alipay/wandoujia/bd;->c()Lacf;

    move-result-object v0

    iput-object v0, p0, Lye;->e:Lacf;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    check-cast p1, Lcom/alipay/android/mini/window/sdk/k;

    iput-object p1, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    .line 324
    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    invoke-interface {v0, p0}, Lcom/alipay/android/mini/window/sdk/k;->a(Lcom/alipay/wandoujia/rh;)V

    .line 325
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lye;->f:Lcom/alipay/android/mini/window/sdk/k;

    instance-of v0, v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    if-eqz v0, :cond_0

    .line 331
    const-class v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lye;->a(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/android/mini/window/sdk/k;

    check-cast p2, Ladu;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lye;->d()[I

    move-result-object v1

    iget-object v2, p2, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v2}, Lcom/alipay/wandoujia/ra;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    invoke-interface {v0}, Lcom/alipay/android/mini/window/sdk/l;->b()Lcom/alipay/wandoujia/rg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/wandoujia/rg;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    iget-object v0, p0, Lye;->e:Lacf;

    invoke-virtual {v0}, Lacf;->b()Z

    move-result v0

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lye;->g:Lcom/alipay/android/mini/window/sdk/l;

    if-eqz v1, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public i()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lye;->c:Landroid/os/Handler;

    new-instance v1, Lyf;

    invoke-direct {v1, p0}, Lyf;-><init>(Lye;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
