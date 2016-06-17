.class public Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;
.super Landroid/widget/RelativeLayout;
.source "VideoDetailHeaderView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# instance fields
.field private b:Lcom/wandoujia/image/view/AsyncImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/wandoujia/p4/video2/view/VideoScoreView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;)Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->h:Lcom/wandoujia/p4/button/views/StatefulButton;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0301e6

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 190
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f0c0447

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    .line 85
    const v0, 0x7f0c023d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->c:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0c0449

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->d:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0c044a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->e:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0c044b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoScoreView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->f:Lcom/wandoujia/p4/video2/view/VideoScoreView;

    .line 89
    const v0, 0x7f0c044c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->g:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0c044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->j:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0c0448

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->k:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0c0344

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->h:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 93
    new-instance v0, Lgpj;

    invoke-direct {v0, p0}, Lgpj;-><init>(Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;)V

    .line 104
    const v0, 0x7f0c044d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->i:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->j:Landroid/widget/TextView;

    invoke-static {v0}, Ld;->a(Landroid/widget/TextView;)V

    .line 107
    return-void
.end method

.method public setData(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    const v2, 0x7f0a0044

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->k:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ld;->a(Landroid/widget/TextView;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-static {v0, p1}, Ld;->a(Landroid/view/View;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    .line 111
    instance-of v0, p1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    .line 113
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->jpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->premiere:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e05ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0603

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->type:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->e:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->f:Lcom/wandoujia/p4/video2/view/VideoScoreView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->h:Lcom/wandoujia/p4/button/views/StatefulButton;

    invoke-virtual {v0, v6}, Lcom/wandoujia/p4/button/views/StatefulButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoCategory;

    .line 124
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->d:Landroid/widget/TextView;

    const-string v2, "/"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->e:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 131
    iget v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->doubanRatingScore:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->f:Lcom/wandoujia/p4/video2/view/VideoScoreView;

    invoke-virtual {v0, v7}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->f:Lcom/wandoujia/p4/video2/view/VideoScoreView;

    iget v1, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->doubanRatingScore:F

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->setScore(F)V

    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->a:Ljava/text/DecimalFormat;

    iget v2, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->doubanRatingScore:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->h:Lcom/wandoujia/p4/button/views/StatefulButton;

    invoke-virtual {v0, v6}, Lcom/wandoujia/p4/button/views/StatefulButton;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->f:Lcom/wandoujia/p4/video2/view/VideoScoreView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->h:Lcom/wandoujia/p4/button/views/StatefulButton;

    invoke-virtual {v0, v6}, Lcom/wandoujia/p4/button/views/StatefulButton;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->i:Landroid/widget/TextView;

    const v1, 0x7f0e064a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
