.class public Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;
.super Landroid/widget/LinearLayout;
.source "VideoEpisodeHeaderItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;
    .locals 1
    .parameter

    .prologue
    .line 36
    const v0, 0x7f030047

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const v7, 0x7f0e0607

    const v4, 0x7f0e0605

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 41
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v0, Lgez;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalEpisodesNum:I

    .line 48
    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeNum:I

    .line 49
    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->b:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_2
    if-eq v0, v1, :cond_3

    .line 55
    iget-object v2, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->b:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->b:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0606

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->b:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0608

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v4, v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeDate:J

    invoke-static {v4, v5}, Lcom/wandoujia/base/utils/TextUtil;->formatDateInfoToDay(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->d:Z

    .line 84
    const v0, 0x7f0c0191

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c0192

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->b:Landroid/widget/TextView;

    .line 86
    invoke-direct {p0}, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a()V

    .line 87
    return-void
.end method

.method public setData(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 92
    invoke-direct {p0}, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a()V

    .line 93
    return-void
.end method
