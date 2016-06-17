.class public final Lhdn;
.super Laqb;
.source "RippleImagePipelineFactory.java"


# static fields
.field private static a:Lhdn;


# instance fields
.field private final b:Lapx;

.field private c:Laog;

.field private d:Lanr;

.field private e:Lant;

.field private f:Lapc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapc",
            "<",
            "Laip;",
            "Laqv;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Laip;",
            "Laqv;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lapc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapc",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Laox;

.field private k:Laje;

.field private l:Laqo;

.field private m:Lapw;

.field private n:Laos;

.field private o:Laqh;

.field private p:Laqi;

.field private q:Laox;

.field private r:Laje;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lhdn;->a:Lhdn;

    return-void
.end method

.method private constructor <init>(Lapx;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Laqb;-><init>(Lapx;)V

    .line 124
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapx;

    iput-object v0, p0, Lhdn;->b:Lapx;

    .line 125
    return-void
.end method

.method public static a(Lapx;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    new-instance v0, Lhdn;

    invoke-direct {v0, p0}, Lhdn;-><init>(Lapx;)V

    sput-object v0, Lhdn;->a:Lhdn;

    .line 91
    return-void
.end method

.method public static i()Lhdn;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lhdn;->a:Lhdn;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Ld;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdn;

    return-object v0
.end method

.method private j()Laog;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lhdn;->c:Laog;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Laog;

    invoke-direct {v0}, Laog;-><init>()V

    iput-object v0, p0, Lhdn;->c:Laog;

    .line 133
    :cond_0
    iget-object v0, p0, Lhdn;->c:Laog;

    return-object v0
.end method

.method private k()Laos;
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lhdn;->n:Laos;

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v1, v0, Lapx;->j:Lars;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    new-instance v0, Laoq;

    invoke-direct {v0}, Laoq;-><init>()V

    :cond_0
    new-instance v2, Laon;

    new-instance v0, Laop;

    invoke-virtual {v1}, Lars;->d()Larv;

    invoke-direct {v0}, Laop;-><init>()V

    invoke-virtual {v1}, Lars;->b()Lari;

    move-result-object v0

    invoke-direct {v2, v0}, Laon;-><init>(Lari;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    new-instance v0, Laom;

    invoke-virtual {v1}, Lars;->a()Lare;

    move-result-object v3

    invoke-virtual {v1}, Lars;->c()I

    move-result v1

    invoke-direct {v0, v3, v1}, Laom;-><init>(Lare;I)V

    :goto_0
    new-instance v1, Laos;

    invoke-direct {v1, v2, v0}, Laos;-><init>(Laon;Laom;)V

    iput-object v1, p0, Lhdn;->n:Laos;

    .line 273
    :cond_1
    iget-object v0, p0, Lhdn;->n:Laos;

    return-object v0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lapc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapc",
            "<",
            "Laip;",
            "Laqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lhdn;->f:Lapc;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v0, v0, Lapx;->a:Lakd;

    invoke-static {v0}, Ld;->a(Lakd;)Lapc;

    move-result-object v0

    iput-object v0, p0, Lhdn;->f:Lapc;

    .line 170
    :cond_0
    iget-object v0, p0, Lhdn;->f:Lapc;

    return-object v0
.end method

.method public final b()Lapm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapm",
            "<",
            "Laip;",
            "Laqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lhdn;->g:Lapm;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lhdn;->a()Lapc;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Lapc;)Lapm;

    move-result-object v0

    iput-object v0, p0, Lhdn;->g:Lapm;

    .line 180
    :cond_0
    iget-object v0, p0, Lhdn;->g:Lapm;

    return-object v0
.end method

.method public final c()Lapc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapc",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lhdn;->h:Lapc;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v0, v0, Lapx;->d:Lakd;

    invoke-static {v0}, Lg;->a(Lakd;)Lapc;

    move-result-object v0

    iput-object v0, p0, Lhdn;->h:Lapc;

    .line 190
    :cond_0
    iget-object v0, p0, Lhdn;->h:Lapc;

    return-object v0
.end method

.method public final d()Lapm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapm",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lhdn;->i:Lapm;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lhdn;->c()Lapc;

    move-result-object v0

    invoke-static {v0}, Lg;->a(Lapc;)Lapm;

    move-result-object v0

    iput-object v0, p0, Lhdn;->i:Lapm;

    .line 200
    :cond_0
    iget-object v0, p0, Lhdn;->i:Lapm;

    return-object v0
.end method

.method public final e()Laje;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lhdn;->k:Laje;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v0, v0, Lapx;->h:Laja;

    invoke-static {v0}, Ld;->a(Laja;)Laje;

    move-result-object v0

    iput-object v0, p0, Lhdn;->k:Laje;

    .line 233
    :cond_0
    iget-object v0, p0, Lhdn;->k:Laje;

    return-object v0
.end method

.method public final f()Lapw;
    .locals 23

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->m:Lapw;

    if-nez v2, :cond_6

    .line 238
    new-instance v15, Lapw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->p:Laqi;

    if-nez v2, :cond_5

    new-instance v16, Laqi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->o:Laqh;

    if-nez v2, :cond_4

    new-instance v17, Laqh;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-object v0, v2, Lapx;->c:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-object v2, v2, Lapx;->j:Lars;

    invoke-virtual {v2}, Lars;->f()Larp;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->l:Laqo;

    if-nez v2, :cond_1

    new-instance v2, Laqo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhdn;->e:Lant;

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lhdn;->j()Laog;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lhdn;->k()Laos;

    new-instance v4, Lhdo;

    invoke-direct {v4, v3}, Lhdo;-><init>(Laog;)V

    new-instance v3, Lant;

    invoke-direct {v3}, Lant;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lhdn;->e:Lant;

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lhdn;->e:Lant;

    invoke-direct/range {p0 .. p0}, Lhdn;->k()Laos;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Laqo;-><init>(Lant;Laos;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lhdn;->l:Laqo;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdn;->l:Laqo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-object v0, v2, Lapx;->k:Laqq;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-boolean v0, v2, Lapx;->m:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-object v8, v2, Lapx;->e:Lapv;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-object v2, v2, Lapx;->j:Lars;

    invoke-virtual {v2}, Lars;->d()Larv;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lhdn;->b()Lapm;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lhdn;->d()Lapm;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->j:Laox;

    if-nez v2, :cond_2

    new-instance v2, Laox;

    invoke-virtual/range {p0 .. p0}, Lhdn;->e()Laje;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lhdn;->b:Lapx;

    iget-object v4, v4, Lapx;->j:Lars;

    invoke-virtual {v4}, Lars;->d()Larv;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lhdn;->b:Lapx;

    iget-object v5, v5, Lapx;->j:Lars;

    invoke-virtual {v5}, Lars;->e()Lary;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lhdn;->b:Lapx;

    iget-object v6, v6, Lapx;->e:Lapv;

    iget-object v6, v6, Lapv;->a:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lhdn;->b:Lapx;

    iget-object v7, v7, Lapx;->e:Lapv;

    iget-object v7, v7, Lapv;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Laox;-><init>(Lajj;Larv;Lary;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lhdn;->j:Laox;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lhdn;->j:Laox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->q:Laox;

    if-nez v2, :cond_3

    new-instance v2, Laox;

    invoke-virtual/range {p0 .. p0}, Lhdn;->g()Laje;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lhdn;->b:Lapx;

    iget-object v4, v4, Lapx;->j:Lars;

    invoke-virtual {v4}, Lars;->d()Larv;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lhdn;->b:Lapx;

    iget-object v5, v5, Lapx;->j:Lars;

    invoke-virtual {v5}, Lars;->e()Lary;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lhdn;->b:Lapx;

    iget-object v6, v6, Lapx;->e:Lapv;

    iget-object v6, v6, Lapv;->a:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lhdn;->b:Lapx;

    iget-object v7, v7, Lapx;->e:Lapv;

    iget-object v7, v7, Lapv;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Laox;-><init>(Lajj;Larv;Lary;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lhdn;->q:Laox;

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lhdn;->q:Laox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->b:Lapx;

    iget-object v14, v2, Lapx;->b:Lapa;

    invoke-direct/range {p0 .. p0}, Lhdn;->k()Laos;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    invoke-direct/range {v2 .. v14}, Laqh;-><init>(Landroid/content/Context;Larp;Laqo;Laqq;ZLapv;Larv;Lapm;Lapm;Laox;Laox;Lapa;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lhdn;->o:Laqh;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->o:Laqh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhdn;->b:Lapx;

    iget-object v3, v3, Lapx;->i:Laub;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhdn;->b:Lapx;

    iget-boolean v4, v4, Lapx;->m:Z

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Laqi;-><init>(Laqh;Laub;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lhdn;->p:Laqi;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->p:Laqi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhdn;->b:Lapx;

    iget-object v3, v3, Lapx;->l:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lhdn;->b:Lapx;

    iget-object v4, v4, Lapx;->g:Lakd;

    invoke-virtual/range {p0 .. p0}, Lhdn;->b()Lapm;

    invoke-virtual/range {p0 .. p0}, Lhdn;->d()Lapm;

    invoke-virtual/range {p0 .. p0}, Lhdn;->e()Laje;

    invoke-virtual/range {p0 .. p0}, Lhdn;->g()Laje;

    invoke-direct {v15, v2, v3, v4}, Lapw;-><init>(Laqi;Ljava/util/Set;Lakd;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lhdn;->m:Lapw;

    .line 249
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdn;->m:Lapw;

    return-object v2
.end method

.method public final g()Laje;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lhdn;->r:Laje;

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v0, v0, Lapx;->n:Laja;

    invoke-static {v0}, Ld;->a(Laja;)Laje;

    move-result-object v0

    iput-object v0, p0, Lhdn;->r:Laje;

    .line 315
    :cond_0
    iget-object v0, p0, Lhdn;->r:Laje;

    return-object v0
.end method

.method public final h()Lanr;
    .locals 5

    .prologue
    .line 333
    iget-object v0, p0, Lhdn;->d:Lanr;

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lhdn;->j()Laog;

    move-result-object v1

    .line 335
    invoke-static {}, Laku;->b()Laku;

    move-result-object v2

    .line 336
    new-instance v3, Lajp;

    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v0, v0, Lapx;->e:Lapv;

    iget-object v0, v0, Lapv;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v0}, Lajp;-><init>(Ljava/util/concurrent/Executor;)V

    .line 338
    iget-object v0, p0, Lhdn;->b:Lapx;

    iget-object v0, v0, Lapx;->c:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 341
    new-instance v4, Lhdp;

    invoke-direct {v4, v3, v0, v1, v2}, Lhdp;-><init>(Lajt;Landroid/app/ActivityManager;Laog;Lakt;)V

    .line 357
    new-instance v0, Lhdq;

    invoke-direct {v0, v1}, Lhdq;-><init>(Laog;)V

    .line 364
    new-instance v1, Lanr;

    invoke-static {}, Lajv;->a()Lajv;

    move-result-object v2

    iget-object v3, p0, Lhdn;->b:Lapx;

    iget-object v3, v3, Lapx;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v0, v4, v2, v3}, Lanr;-><init>(Lanv;Laob;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lhdn;->d:Lanr;

    .line 371
    :cond_0
    iget-object v0, p0, Lhdn;->d:Lanr;

    return-object v0
.end method
