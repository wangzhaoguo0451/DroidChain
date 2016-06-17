.class public final Lfyg;
.super Ljava/lang/Object;
.source "ImageFolderController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;",
        "Lfpq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 16
    check-cast p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;

    check-cast p2, Lfpq;

    iget-object v0, p2, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpr;

    iget-object v2, v0, Lfpr;->b:Ljava/lang/String;

    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v3, p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->a:Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;

    const v4, 0x7f020026

    invoke-virtual {v3, v2, v0, v4}, Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;->a(Ljava/lang/String;II)V

    iget-object v0, p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lfpq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lfpq;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
