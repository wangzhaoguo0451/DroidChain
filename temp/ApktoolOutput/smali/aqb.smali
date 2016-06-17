.class public Laqb;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# instance fields
.field private final a:Lapx;

.field private b:Laog;

.field private c:Lanr;

.field private d:Lant;

.field private e:Lapc;
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

.field private f:Lapm;
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

.field private g:Lapc;
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

.field private h:Lapm;
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

.field private i:Laox;

.field private j:Laje;

.field private k:Laqo;

.field private l:Lapw;

.field private m:Laos;

.field private n:Laqh;

.field private o:Laqi;

.field private p:Laox;

.field private q:Laje;


# direct methods
.method public constructor <init>(Lapx;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapx;

    iput-object v0, p0, Laqb;->a:Lapx;

    .line 116
    return-void
.end method

.method private i()Laog;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Laqb;->b:Laog;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Laog;

    invoke-direct {v0}, Laog;-><init>()V

    iput-object v0, p0, Laqb;->b:Laog;

    .line 124
    :cond_0
    iget-object v0, p0, Laqb;->b:Laog;

    return-object v0
.end method

.method private j()Laos;
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Laqb;->m:Laos;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Laqb;->a:Lapx;

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

    iput-object v1, p0, Laqb;->m:Laos;

    .line 264
    :cond_1
    iget-object v0, p0, Laqb;->m:Laos;

    return-object v0

    .line 261
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lapc;
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
    .line 155
    iget-object v0, p0, Laqb;->e:Lapc;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Laqb;->a:Lapx;

    iget-object v0, v0, Lapx;->a:Lakd;

    invoke-static {v0}, Ld;->a(Lakd;)Lapc;

    move-result-object v0

    iput-object v0, p0, Laqb;->e:Lapc;

    .line 161
    :cond_0
    iget-object v0, p0, Laqb;->e:Lapc;

    return-object v0
.end method

.method public b()Lapm;
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
    .line 165
    iget-object v0, p0, Laqb;->f:Lapm;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Laqb;->a()Lapc;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Lapc;)Lapm;

    move-result-object v0

    iput-object v0, p0, Laqb;->f:Lapm;

    .line 171
    :cond_0
    iget-object v0, p0, Laqb;->f:Lapm;

    return-object v0
.end method

.method public c()Lapc;
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
    .line 175
    iget-object v0, p0, Laqb;->g:Lapc;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Laqb;->a:Lapx;

    iget-object v0, v0, Lapx;->d:Lakd;

    invoke-static {v0}, Lg;->a(Lakd;)Lapc;

    move-result-object v0

    iput-object v0, p0, Laqb;->g:Lapc;

    .line 181
    :cond_0
    iget-object v0, p0, Laqb;->g:Lapc;

    return-object v0
.end method

.method public d()Lapm;
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
    .line 185
    iget-object v0, p0, Laqb;->h:Lapm;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Laqb;->c()Lapc;

    move-result-object v0

    invoke-static {v0}, Lg;->a(Lapc;)Lapm;

    move-result-object v0

    iput-object v0, p0, Laqb;->h:Lapm;

    .line 191
    :cond_0
    iget-object v0, p0, Laqb;->h:Lapm;

    return-object v0
.end method

.method public e()Laje;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Laqb;->j:Laje;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Laqb;->a:Lapx;

    iget-object v0, v0, Lapx;->h:Laja;

    invoke-static {v0}, Ld;->a(Laja;)Laje;

    move-result-object v0

    iput-object v0, p0, Laqb;->j:Laje;

    .line 224
    :cond_0
    iget-object v0, p0, Laqb;->j:Laje;

    return-object v0
.end method

.method public f()Lapw;
    .locals 23

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->l:Lapw;

    if-nez v2, :cond_6

    .line 229
    new-instance v15, Lapw;

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->o:Laqi;

    if-nez v2, :cond_5

    new-instance v16, Laqi;

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->n:Laqh;

    if-nez v2, :cond_4

    new-instance v17, Laqh;

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-object v0, v2, Lapx;->c:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-object v2, v2, Lapx;->j:Lars;

    invoke-virtual {v2}, Lars;->f()Larp;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->k:Laqo;

    if-nez v2, :cond_1

    new-instance v2, Laqo;

    move-object/from16 v0, p0

    iget-object v3, v0, Laqb;->d:Lant;

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Laqb;->i()Laog;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Laqb;->j()Laos;

    new-instance v4, Laqc;

    invoke-direct {v4, v3}, Laqc;-><init>(Laog;)V

    new-instance v3, Lant;

    invoke-direct {v3}, Lant;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Laqb;->d:Lant;

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Laqb;->d:Lant;

    invoke-direct/range {p0 .. p0}, Laqb;->j()Laos;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Laqo;-><init>(Lant;Laos;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Laqb;->k:Laqo;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb;->k:Laqo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-object v0, v2, Lapx;->k:Laqq;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-boolean v0, v2, Lapx;->m:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-object v8, v2, Lapx;->e:Lapv;

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-object v2, v2, Lapx;->j:Lars;

    invoke-virtual {v2}, Lars;->d()Larv;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Laqb;->b()Lapm;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Laqb;->d()Lapm;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->i:Laox;

    if-nez v2, :cond_2

    new-instance v2, Laox;

    invoke-virtual/range {p0 .. p0}, Laqb;->e()Laje;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Laqb;->a:Lapx;

    iget-object v4, v4, Lapx;->j:Lars;

    invoke-virtual {v4}, Lars;->d()Larv;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Laqb;->a:Lapx;

    iget-object v5, v5, Lapx;->j:Lars;

    invoke-virtual {v5}, Lars;->e()Lary;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Laqb;->a:Lapx;

    iget-object v6, v6, Lapx;->e:Lapv;

    iget-object v6, v6, Lapv;->a:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v7, v0, Laqb;->a:Lapx;

    iget-object v7, v7, Lapx;->e:Lapv;

    iget-object v7, v7, Lapv;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Laox;-><init>(Lajj;Larv;Lary;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Laqb;->i:Laox;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Laqb;->i:Laox;

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->p:Laox;

    if-nez v2, :cond_3

    new-instance v2, Laox;

    invoke-virtual/range {p0 .. p0}, Laqb;->g()Laje;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Laqb;->a:Lapx;

    iget-object v4, v4, Lapx;->j:Lars;

    invoke-virtual {v4}, Lars;->d()Larv;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Laqb;->a:Lapx;

    iget-object v5, v5, Lapx;->j:Lars;

    invoke-virtual {v5}, Lars;->e()Lary;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Laqb;->a:Lapx;

    iget-object v6, v6, Lapx;->e:Lapv;

    iget-object v6, v6, Lapv;->a:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v7, v0, Laqb;->a:Lapx;

    iget-object v7, v7, Lapx;->e:Lapv;

    iget-object v7, v7, Lapv;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Laox;-><init>(Lajj;Larv;Lary;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Laqb;->p:Laox;

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Laqb;->p:Laox;

    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->a:Lapx;

    iget-object v14, v2, Lapx;->b:Lapa;

    invoke-direct/range {p0 .. p0}, Laqb;->j()Laos;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    invoke-direct/range {v2 .. v14}, Laqh;-><init>(Landroid/content/Context;Larp;Laqo;Laqq;ZLapv;Larv;Lapm;Lapm;Laox;Laox;Lapa;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Laqb;->n:Laqh;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->n:Laqh;

    move-object/from16 v0, p0

    iget-object v3, v0, Laqb;->a:Lapx;

    iget-object v3, v3, Lapx;->i:Laub;

    move-object/from16 v0, p0

    iget-object v4, v0, Laqb;->a:Lapx;

    iget-boolean v4, v4, Lapx;->m:Z

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Laqi;-><init>(Laqh;Laub;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Laqb;->o:Laqi;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->o:Laqi;

    move-object/from16 v0, p0

    iget-object v3, v0, Laqb;->a:Lapx;

    iget-object v3, v3, Lapx;->l:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Laqb;->a:Lapx;

    iget-object v4, v4, Lapx;->g:Lakd;

    invoke-virtual/range {p0 .. p0}, Laqb;->b()Lapm;

    invoke-virtual/range {p0 .. p0}, Laqb;->d()Lapm;

    invoke-virtual/range {p0 .. p0}, Laqb;->e()Laje;

    invoke-virtual/range {p0 .. p0}, Laqb;->g()Laje;

    invoke-direct {v15, v2, v3, v4}, Lapw;-><init>(Laqi;Ljava/util/Set;Lakd;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Laqb;->l:Lapw;

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Laqb;->l:Lapw;

    return-object v2
.end method

.method public g()Laje;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Laqb;->q:Laje;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Laqb;->a:Lapx;

    iget-object v0, v0, Lapx;->n:Laja;

    invoke-static {v0}, Ld;->a(Laja;)Laje;

    move-result-object v0

    iput-object v0, p0, Laqb;->q:Laje;

    .line 306
    :cond_0
    iget-object v0, p0, Laqb;->q:Laje;

    return-object v0
.end method

.method public h()Lanr;
    .locals 5

    .prologue
    .line 324
    iget-object v0, p0, Laqb;->c:Lanr;

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0}, Laqb;->i()Laog;

    move-result-object v1

    .line 326
    invoke-static {}, Laku;->b()Laku;

    move-result-object v2

    .line 327
    new-instance v3, Lajp;

    iget-object v0, p0, Laqb;->a:Lapx;

    iget-object v0, v0, Lapx;->e:Lapv;

    iget-object v0, v0, Lapv;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v0}, Lajp;-><init>(Ljava/util/concurrent/Executor;)V

    .line 329
    iget-object v0, p0, Laqb;->a:Lapx;

    iget-object v0, v0, Lapx;->c:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 332
    new-instance v4, Laqd;

    invoke-direct {v4, v3, v0, v1, v2}, Laqd;-><init>(Lajt;Landroid/app/ActivityManager;Laog;Lakt;)V

    .line 348
    new-instance v0, Laqe;

    invoke-direct {v0, v1}, Laqe;-><init>(Laog;)V

    .line 355
    new-instance v1, Lanr;

    invoke-static {}, Lajv;->a()Lajv;

    move-result-object v2

    iget-object v3, p0, Laqb;->a:Lapx;

    iget-object v3, v3, Lapx;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v0, v4, v2, v3}, Lanr;-><init>(Lanv;Laob;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V

    iput-object v1, p0, Laqb;->c:Lanr;

    .line 362
    :cond_0
    iget-object v0, p0, Laqb;->c:Lanr;

    return-object v0
.end method
