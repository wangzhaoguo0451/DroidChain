.class public abstract Lert;
.super Ljava/lang/Object;
.source "HeaderFooterAdapter.java"


# instance fields
.field b:Leru;

.field c:Z

.field d:Ljava/lang/Object;

.field e:I

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lert;-><init>(Z)V

    .line 282
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lert;->f:Ljava/util/List;

    .line 285
    iput-boolean p1, p0, Lert;->c:Z

    .line 286
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;)Lerf;
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lert;->d:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 290
    iput-object p1, p0, Lert;->d:Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lert;->b:Leru;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lert;->b:Leru;

    invoke-interface {v0, p0}, Leru;->b(Lert;)V

    .line 295
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iget-boolean v0, p0, Lert;->c:Z

    if-eq v0, p1, :cond_0

    .line 305
    iput-boolean p1, p0, Lert;->c:Z

    .line 306
    iget-object v0, p0, Lert;->b:Leru;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lert;->b:Leru;

    invoke-interface {v0, p0}, Leru;->c(Lert;)V

    .line 310
    :cond_0
    return-void
.end method
