.class public Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;
.super Landroid/widget/RelativeLayout;
.source "VideoEpisodeItemView.java"


# instance fields
.field protected a:Landroid/widget/TextView;

.field public b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field public c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field public e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

.field protected f:I

.field protected g:I

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->n:Z

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->f:I

    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->g:I

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->j:I

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->k:I

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->l:I

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->UPDATE_LITE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->getImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->n:Z

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->f:I

    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->g:I

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->j:I

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->k:I

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->l:I

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->UPDATE_LITE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->getImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;
    .locals 1
    .parameter

    .prologue
    .line 73
    const v0, 0x7f0301e9

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    return-object v0
.end method

.method private setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setClickable(Z)V

    .line 183
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lggy;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    new-instance v0, Lggt;

    invoke-direct {v0, p0}, Lggt;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 152
    :pswitch_1
    new-instance v0, Lggu;

    invoke-direct {v0, p0}, Lggu;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 160
    :pswitch_2
    new-instance v0, Lggv;

    invoke-direct {v0, p0}, Lggv;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 169
    :pswitch_3
    new-instance v0, Lggw;

    invoke-direct {v0, p0}, Lggw;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 177
    :pswitch_4
    new-instance v0, Lggx;

    invoke-direct {v0, p0}, Lggx;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 110
    return-object p0
.end method

.method public final a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 105
    return-object p0
.end method

.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 128
    return-object p0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 97
    iput-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    .line 98
    iput-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->i:Z

    .line 100
    iput-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 101
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c()V

    .line 133
    return-void
.end method

.method protected c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0e0647

    const/4 v0, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 190
    .line 191
    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    iget-object v4, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setSelected(Z)V

    .line 204
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->i:Z

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0644

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    :goto_1
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->LOCAL_PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    .line 302
    :goto_2
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld;->ab(Ljava/lang/String;)J

    move-result-wide v2

    .line 198
    iget-object v4, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 218
    :cond_4
    sget-object v0, Lggy;->c:[I

    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->o:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 290
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    :cond_6
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->invalidate()V

    goto :goto_2

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayInfos:Z

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    invoke-direct {p0, v8}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto :goto_3

    .line 228
    :cond_7
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto :goto_3

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noDownloadUrls:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPrivateDownloadUrls:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayExpDownloadUrls:Z

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    invoke-direct {p0, v8}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto :goto_3

    .line 243
    :cond_8
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->j:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-nez v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto/16 :goto_3

    .line 249
    :cond_9
    sget-object v0, Lggy;->b:[I

    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 254
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0645

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->PAUSE:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto/16 :goto_3

    .line 264
    :pswitch_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0648

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->RESUME:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto/16 :goto_3

    .line 272
    :pswitch_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto/16 :goto_3

    .line 277
    :pswitch_5
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0646

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto/16 :goto_3

    .line 284
    :pswitch_6
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->i:Z

    if-nez v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setAction(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;)V

    goto/16 :goto_3

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->n:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0c0454

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0c0455

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->h:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public setDownloaded(Z)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->i:Z

    .line 120
    return-void
.end method

.method public setIsRead(Z)V
    .locals 1
    .parameter

    .prologue
    .line 123
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->n:Z

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferActionStyle(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->o:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    .line 93
    return-void
.end method
