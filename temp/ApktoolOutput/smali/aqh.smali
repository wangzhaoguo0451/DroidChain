.class public final Laqh;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field a:Landroid/content/ContentResolver;

.field b:Landroid/content/res/Resources;

.field c:Landroid/content/res/AssetManager;

.field final d:Larp;

.field final e:Laqo;

.field final f:Laqq;

.field final g:Z

.field final h:Z

.field final i:Lapv;

.field final j:Larv;

.field final k:Laox;

.field final l:Laox;

.field final m:Lapm;
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

.field final n:Lapm;
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

.field final o:Lapa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Larp;Laqo;Laqq;ZLapv;Larv;Lapm;Lapm;Laox;Laox;Lapa;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Larp;",
            "Laqo;",
            "Laqq;",
            "Z",
            "Lapv;",
            "Larv;",
            "Lapm",
            "<",
            "Laip;",
            "Laqv;",
            ">;",
            "Lapm",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Laox;",
            "Laox;",
            "Lapa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Laqh;->a:Landroid/content/ContentResolver;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Laqh;->b:Landroid/content/res/Resources;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Laqh;->c:Landroid/content/res/AssetManager;

    .line 104
    iput-object p2, p0, Laqh;->d:Larp;

    .line 105
    iput-object p3, p0, Laqh;->e:Laqo;

    .line 106
    iput-object p4, p0, Laqh;->f:Laqq;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqh;->g:Z

    .line 108
    iput-boolean p5, p0, Laqh;->h:Z

    .line 110
    iput-object p6, p0, Laqh;->i:Lapv;

    .line 111
    iput-object p7, p0, Laqh;->j:Larv;

    .line 113
    iput-object p8, p0, Laqh;->n:Lapm;

    .line 114
    iput-object p9, p0, Laqh;->m:Lapm;

    .line 115
    iput-object p10, p0, Laqh;->k:Laox;

    .line 116
    iput-object p11, p0, Laqh;->l:Laox;

    .line 117
    iput-object p12, p0, Laqh;->o:Lapa;

    .line 119
    return-void
.end method

.method public static a(Laud;)Lasb;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;)",
            "Lasb;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lasb;

    invoke-direct {v0, p0}, Lasb;-><init>(Laud;)V

    return-object v0
.end method


# virtual methods
.method public final b(Laud;)Lauh;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;)",
            "Lauh;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lauh;

    iget-object v1, p0, Laqh;->i:Lapv;

    iget-object v1, v1, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Laqh;->j:Larv;

    invoke-direct {v0, v1, v2, p1}, Lauh;-><init>(Ljava/util/concurrent/Executor;Larv;Laud;)V

    return-object v0
.end method

.method public final c(Laud;)Lauv;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;)",
            "Lauv;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lauv;

    iget-object v1, p0, Laqh;->i:Lapv;

    iget-object v1, v1, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Laqh;->j:Larv;

    invoke-direct {v0, v1, v2, p1}, Lauv;-><init>(Ljava/util/concurrent/Executor;Larv;Laud;)V

    return-object v0
.end method
