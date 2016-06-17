.class public Lall;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lakd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakd",
        "<",
        "Lalk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lapw;

.field private final c:Lalm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laqb;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laqb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lall;->a:Landroid/content/Context;

    .line 46
    invoke-virtual {p2}, Laqb;->f()Lapw;

    move-result-object v0

    iput-object v0, p0, Lall;->b:Lapw;

    .line 47
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

    iput-object v0, p0, Lall;->c:Lalm;

    .line 52
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lall;->b()Lalk;

    move-result-object v0

    return-object v0
.end method

.method public b()Lalk;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lalk;

    iget-object v1, p0, Lall;->c:Lalm;

    iget-object v2, p0, Lall;->b:Lapw;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lalk;-><init>(Lalm;Lapw;Ljava/util/Set;)V

    return-object v0
.end method
