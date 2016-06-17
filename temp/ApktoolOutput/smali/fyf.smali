.class public final Lfyf;
.super Ljava/lang/Object;
.source "FolderImageController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;",
        "Lfpr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;

    check-cast p2, Lfpr;

    iget-object v1, p2, Lfpr;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Ldca;->a:Ldca;

    iget-object v2, v2, Ldca;->c:Lfpk;

    invoke-virtual {v2}, Lfpk;->g()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iget-object v2, p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->a:Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;

    const v3, 0x7f0a0044

    invoke-virtual {v2, v1, v0, v3}, Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;->a(Ljava/lang/String;II)V

    return-void
.end method
