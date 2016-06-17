.class public final Lcvb;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Dialog;

.field c:Lcve;

.field public d:Lcvf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcve;)V
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
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;",
            "Lcve;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcvb;->a:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcvb;->c:Lcve;

    .line 33
    new-instance v0, Lcvf;

    invoke-direct {v0, p0, p2}, Lcvf;-><init>(Lcvb;Ljava/util/List;)V

    iput-object v0, p0, Lcvb;->d:Lcvf;

    .line 34
    return-void
.end method
