.class public final Lfye;
.super Lfya;
.source "ImageFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfya",
        "<",
        "Lfpq;",
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
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lfya;-><init>(Landroid/content/Context;ILfyc;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method protected final b(J)V
    .locals 7
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpq;

    .line 58
    iget-object v1, v0, Lfpq;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpr;

    iget-wide v4, v1, Lfpr;->a:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfye;->a:Landroid/content/Context;

    const-class v3, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v2, "folder_path"

    iget-object v0, v0, Lfpq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v0, "max_count"

    iget v2, p0, Lfye;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lfye;->d:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    :cond_1
    return-void
.end method

.method protected final synthetic f()Lcom/wandoujia/mvc/BaseController;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lfyg;

    invoke-direct {v0}, Lfyg;-><init>()V

    return-object v0
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lfye;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-result-object v0

    check-cast v0, Lfpq;

    iget-object v0, v0, Lfpq;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpr;

    iget-wide v0, v0, Lfpr;->a:J

    return-wide v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected final j()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
