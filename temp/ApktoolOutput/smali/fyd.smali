.class public final Lfyd;
.super Lfya;
.source "FolderImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfya",
        "<",
        "Lfpr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILfyc;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lfya;-><init>(Landroid/content/Context;ILfyc;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 7
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lfyd;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfyd;->c()I

    move-result v0

    iget v1, p0, Lfyd;->e:I

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lfyd;->a:Landroid/content/Context;

    iget-object v1, p0, Lfyd;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0379

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lfyd;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lfya;->a(J)V

    goto :goto_0
.end method

.method protected final b(J)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lfyd;->a(J)V

    .line 57
    return-void
.end method

.method protected final synthetic f()Lcom/wandoujia/mvc/BaseController;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lfyf;

    invoke-direct {v0}, Lfyf;-><init>()V

    return-object v0
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lfyd;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-result-object v0

    check-cast v0, Lfpr;

    iget-wide v0, v0, Lfpr;->a:J

    return-wide v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected final j()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lfyd;->k()Ljava/util/List;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpr;

    .line 81
    iget-object v0, v0, Lfpr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 83
    goto :goto_0
.end method
