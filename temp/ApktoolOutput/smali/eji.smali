.class public final Leji;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lejq;

.field c:Lejl;

.field public d:Lejm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lejl;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;",
            "Lejl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Leji;->a:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Leji;->c:Lejl;

    .line 33
    new-instance v0, Lejm;

    invoke-direct {v0, p2}, Lejm;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Leji;->d:Lejm;

    .line 34
    return-void
.end method
