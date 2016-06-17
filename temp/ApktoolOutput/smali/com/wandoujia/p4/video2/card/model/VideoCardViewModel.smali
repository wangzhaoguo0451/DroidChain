.class public final Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;
.super Ljava/lang/Object;
.source "VideoCardViewModel.java"

# interfaces
.implements Lcom/wandoujia/p4/card/models/CardViewModel;
.implements Lfby;


# instance fields
.field public a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private b:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/card/models/CardViewModel$TagType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel$Style;->NORMAL:Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel$Style;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;-><init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/card/models/CardViewModel$TagType;B)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/card/models/CardViewModel$TagType;B)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 44
    iput-object p2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->b:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    .line 45
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoLogModel;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setVideoInfo(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    .line 47
    const-string v0, ""

    iget-object v2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->downloadCount:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->downloadCount:J

    invoke-static {v2, v3}, Lger;->a(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    if-eqz v2, :cond_1

    sget-object v2, Lgfy;->b:[I

    iget-object v3, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->c:Ljava/lang/CharSequence;

    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->b:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    if-eqz v0, :cond_2

    sget-object v0, Lgfy;->a:[I

    iget-object v2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->b:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    :cond_2
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->d:Ljava/lang/String;

    .line 49
    return-void

    .line 47
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-static {v2}, Lger;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-static {v2}, Lger;->b(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    .line 48
    goto :goto_1

    :pswitch_3
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoCategory;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 48
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 8
    .parameter

    .prologue
    .line 104
    new-instance v0, Lgdy;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iget-object v4, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v5, v5, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v6, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v6, v6, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    sget-object v7, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-direct/range {v0 .. v7}, Lgdy;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;)V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    return-object v0
.end method
