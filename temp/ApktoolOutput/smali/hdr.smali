.class public final Lhdr;
.super Lall;
.source "RipplePipelineDraweeControllerBuilderSupplier.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lapw;

.field private final c:Lalm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lhdn;->i()Lhdn;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhdr;-><init>(Landroid/content/Context;Laqb;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Laqb;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhdr;-><init>(Landroid/content/Context;Laqb;B)V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Laqb;B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laqb;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lall;-><init>(Landroid/content/Context;Laqb;)V

    .line 40
    iput-object p1, p0, Lhdr;->a:Landroid/content/Context;

    .line 41
    invoke-virtual {p2}, Laqb;->f()Lapw;

    move-result-object v0

    iput-object v0, p0, Lhdr;->b:Lapw;

    .line 42
    new-instance v0, Lalm;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Laln;->a()Laln;

    move-result-object v2

    invoke-virtual {p2}, Laqb;->h()Lanr;

    move-result-object v3

    invoke-static {}, Lajv;->a()Lajv;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lalm;-><init>(Landroid/content/res/Resources;Laln;Lanr;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lhdr;->c:Lalm;

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lhdr;->b()Lalk;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lalk;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lalk;

    iget-object v1, p0, Lhdr;->c:Lalm;

    iget-object v2, p0, Lhdr;->b:Lapw;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lalk;-><init>(Lalm;Lapw;Ljava/util/Set;)V

    return-object v0
.end method
