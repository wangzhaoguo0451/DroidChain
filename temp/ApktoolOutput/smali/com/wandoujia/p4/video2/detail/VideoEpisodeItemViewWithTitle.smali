.class public Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;
.super Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;
.source "VideoEpisodeItemViewWithTitle.java"


# instance fields
.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;
    .locals 1
    .parameter

    .prologue
    .line 28
    const v0, 0x7f0301ea

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;

    return-object v0
.end method


# virtual methods
.method protected final c()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c()V

    .line 41
    sget-object v0, Lggz;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_2
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatDateInfoToDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget v1, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->onFinishInflate()V

    .line 35
    const v0, 0x7f0c0457

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->h:Landroid/widget/TextView;

    .line 36
    return-void
.end method
