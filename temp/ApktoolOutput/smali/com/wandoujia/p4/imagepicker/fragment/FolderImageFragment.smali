.class public Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;
.super Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;
.source "FolderImageFragment.java"


# instance fields
.field public e:Lfpq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Lfya;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lfyd;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->c:I

    iget-object v3, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->d:Lfyc;

    invoke-direct {v0, v1, v2, v3}, Lfyd;-><init>(Landroid/content/Context;ILfyc;)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->b:Lfya;

    iget-object v0, v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->checkSdCardStatusOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    iget-object v2, v2, Lfpq;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    iget-object v2, v2, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->b:Lfya;

    iget-object v1, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    iget-object v1, v1, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lfya;->a(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    iget-object v0, v0, Lfpq;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->a(I)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    iget-object v0, v0, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->a(I)V

    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->a(I)V

    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->c()V

    .line 30
    return-void
.end method
