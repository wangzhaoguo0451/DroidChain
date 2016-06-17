.class public Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;
.super Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;
.source "ImageFolderFragment.java"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfpq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;-><init>()V

    return-void
.end method

.method public static d()Lhow;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lgqj;

    const-class v1, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0378

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpq;

    .line 69
    iget-object v0, v0, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    if-nez v1, :cond_1

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->a(I)V

    .line 76
    :goto_1
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final b()Lfya;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lfye;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->c:I

    iget-object v3, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->d:Lfyc;

    invoke-direct {v0, v1, v2, v3}, Lfye;-><init>(Landroid/content/Context;ILfyc;)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->checkSdCardStatusOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->e:Ljava/util/List;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpq;

    .line 55
    if-eqz v0, :cond_2

    iget-object v2, v0, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_3
    invoke-direct {p0}, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->e()V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->b:Lfya;

    iget-object v1, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfya;->a(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->a(I)V

    goto :goto_0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method
