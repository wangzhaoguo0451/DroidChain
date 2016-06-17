.class public final Lgfu;
.super Ljava/lang/Object;
.source "VideoDetailPersonIconController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;",
        "Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;",
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

.method public static a(Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getCoverView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->coverUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getCoverView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->coverUrl:Ljava/lang/String;

    const v2, 0x7f020431

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getJobView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getJobView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getJobView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v0, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0}, Ld;->a(Lcom/wandoujia/p4/video/model/VideoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Ld;->a(Lcom/wandoujia/p4/video/model/VideoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_2
    :goto_0
    return-void

    .line 38
    :cond_3
    iget-object v0, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getJobView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getJobView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v0, p1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Ld;->a(Lcom/wandoujia/p4/video/model/VideoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->getJobView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;

    check-cast p2, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;

    invoke-static {p1, p2}, Lgfu;->a(Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;)V

    return-void
.end method
