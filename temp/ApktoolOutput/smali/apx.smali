.class public final Lapx;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# instance fields
.field public final a:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Lapn;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lapa;

.field public final c:Landroid/content/Context;

.field public final d:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Lapn;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lapv;

.field public final f:Lmv;

.field public final g:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Laja;

.field public final i:Laub;

.field public final j:Lars;

.field public final k:Laqq;

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laug;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Z

.field public final n:Laja;


# direct methods
.method private constructor <init>(Laqa;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Lapg;

    iget-object v0, p1, Laqa;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v0}, Lapg;-><init>(Landroid/app/ActivityManager;)V

    iput-object v1, p0, Lapx;->a:Lakd;

    .line 94
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    iput-object v0, p0, Lapx;->b:Lapa;

    .line 98
    iget-object v0, p1, Laqa;->a:Landroid/content/Context;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lapx;->c:Landroid/content/Context;

    .line 99
    new-instance v0, Lapi;

    invoke-direct {v0}, Lapi;-><init>()V

    iput-object v0, p0, Lapx;->d:Lakd;

    .line 104
    invoke-static {}, Lapp;->a()Lapp;

    move-result-object v0

    iput-object v0, p0, Lapx;->f:Lmv;

    .line 108
    new-instance v0, Lapy;

    invoke-direct {v0}, Lapy;-><init>()V

    iput-object v0, p0, Lapx;->g:Lakd;

    .line 118
    iget-object v0, p1, Laqa;->b:Laja;

    if-nez v0, :cond_0

    iget-object v0, p1, Laqa;->a:Landroid/content/Context;

    invoke-static {}, Laja;->a()Lajb;

    move-result-object v1

    new-instance v2, Lapz;

    invoke-direct {v2, v0}, Lapz;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lajb;->c:Lakd;

    const-string v0, "image_cache"

    iput-object v0, v1, Lajb;->b:Ljava/lang/String;

    const-wide/32 v2, 0x2800000

    iput-wide v2, v1, Lajb;->d:J

    const-wide/32 v2, 0xa00000

    iput-wide v2, v1, Lajb;->e:J

    const-wide/32 v2, 0x200000

    iput-wide v2, v1, Lajb;->f:J

    invoke-virtual {v1}, Lajb;->a()Laja;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lapx;->h:Laja;

    .line 122
    invoke-static {}, Lakj;->a()Lakj;

    .line 126
    iget-object v0, p1, Laqa;->c:Laub;

    if-nez v0, :cond_1

    new-instance v0, Latb;

    invoke-direct {v0}, Latb;-><init>()V

    :goto_1
    iput-object v0, p0, Lapx;->i:Laub;

    .line 130
    new-instance v0, Lars;

    new-instance v1, Larr;

    invoke-direct {v1, v4}, Larr;-><init>(B)V

    new-instance v1, Larq;

    invoke-direct {v1, v4}, Larq;-><init>(B)V

    invoke-direct {v0, v1}, Lars;-><init>(Larq;)V

    iput-object v0, p0, Lapx;->j:Lars;

    .line 135
    new-instance v0, Laqq;

    invoke-direct {v0}, Laqq;-><init>()V

    iput-object v0, p0, Lapx;->k:Laqq;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lapx;->l:Ljava/util/Set;

    .line 143
    iget-boolean v0, p1, Laqa;->d:Z

    iput-boolean v0, p0, Lapx;->m:Z

    .line 144
    iget-object v0, p0, Lapx;->h:Laja;

    iput-object v0, p0, Lapx;->n:Laja;

    .line 151
    iget-object v0, p0, Lapx;->j:Lars;

    invoke-virtual {v0}, Lars;->c()I

    move-result v0

    .line 152
    new-instance v1, Lapv;

    invoke-direct {v1, v0}, Lapv;-><init>(I)V

    iput-object v1, p0, Lapx;->e:Lapv;

    .line 155
    return-void

    .line 118
    :cond_0
    iget-object v0, p1, Laqa;->b:Laja;

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p1, Laqa;->c:Laub;

    goto :goto_1
.end method

.method public synthetic constructor <init>(Laqa;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lapx;-><init>(Laqa;)V

    return-void
.end method
