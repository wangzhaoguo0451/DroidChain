.class public Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;
.super Lcom/wandoujia/p4/fragment/TabHostFragment;
.source "ImageChooserActivity.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->a:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v1, Lftq;

    invoke-static {}, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;->d()Lhow;

    move-result-object v2

    const-class v3, Lcom/wandoujia/p4/imagepicker/fragment/CameraImageFragment;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lftq;

    invoke-static {}, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;->d()Lhow;

    move-result-object v2

    const-class v3, Lcom/wandoujia/p4/imagepicker/fragment/ImageFolderFragment;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v0
.end method
