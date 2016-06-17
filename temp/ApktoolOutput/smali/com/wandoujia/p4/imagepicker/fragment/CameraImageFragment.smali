.class public Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;
.super Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;
.source "CameraImageFragment.java"


# instance fields
.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfpr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;-><init>()V

    return-void
.end method

.method public static d()Lhow;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lgqj;

    const-class v1, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0377

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method protected final b()Lfya;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lfyd;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->c:I

    iget-object v3, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->d:Lfyc;

    invoke-direct {v0, v1, v2, v3}, Lfyd;-><init>(Landroid/content/Context;ILfyc;)V

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->checkSdCardStatusOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->e:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->e:Ljava/util/ArrayList;

    sget-object v1, Ldca;->a:Ldca;

    iget-object v1, v1, Ldca;->c:Lfpk;

    invoke-virtual {v1}, Lfpk;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->b:Lfya;

    iget-object v1, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lfya;->a(Ljava/util/List;)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->a(I)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->a(I)V

    goto :goto_0

    .line 61
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->a(I)V

    goto :goto_0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->c()V

    .line 39
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->onStop()V

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->b:Lfya;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->b:Lfya;

    invoke-virtual {v0}, Lfya;->b()V

    .line 72
    :cond_0
    return-void
.end method
