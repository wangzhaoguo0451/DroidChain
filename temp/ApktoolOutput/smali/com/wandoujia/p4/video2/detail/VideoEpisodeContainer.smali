.class public Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;
.super Landroid/widget/FrameLayout;
.source "VideoEpisodeContainer.java"


# instance fields
.field public a:Z

.field public b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field public c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field public d:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lgls;

.field private h:Lglu;

.field private i:Lggh;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->e:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    .line 47
    new-instance v0, Lggq;

    invoke-direct {v0, p0}, Lggq;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->g:Lgls;

    .line 72
    new-instance v0, Lglu;

    invoke-direct {v0, p0}, Lglu;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->h:Lglu;

    .line 90
    new-instance v0, Lggr;

    invoke-direct {v0, p0}, Lggr;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->i:Lggh;

    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const v1, 0x7f0b025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->j:I

    .line 135
    const v1, 0x7f0b025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->k:I

    .line 137
    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->l:I

    .line 138
    const v1, 0x7f0b025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->m:I

    .line 139
    const v1, 0x7f0b025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->n:I

    .line 140
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->h:Lglu;

    invoke-virtual {v0, v1}, Lgkr;->a(Lglu;)V

    .line 141
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->g:Lgls;

    invoke-virtual {v0, v1}, Lgkr;->a(Lgls;)V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->i:Lggh;

    invoke-static {v0}, Ld;->a(Lggh;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->e:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    .line 47
    new-instance v0, Lggq;

    invoke-direct {v0, p0}, Lggq;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->g:Lgls;

    .line 72
    new-instance v0, Lglu;

    invoke-direct {v0, p0}, Lglu;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->h:Lglu;

    .line 90
    new-instance v0, Lggr;

    invoke-direct {v0, p0}, Lggr;-><init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->i:Lggh;

    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const v1, 0x7f0b025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->j:I

    .line 135
    const v1, 0x7f0b025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->k:I

    .line 137
    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->l:I

    .line 138
    const v1, 0x7f0b025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->m:I

    .line 139
    const v1, 0x7f0b025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->n:I

    .line 140
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->h:Lglu;

    invoke-virtual {v0, v1}, Lgkr;->a(Lglu;)V

    .line 141
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->g:Lgls;

    invoke-virtual {v0, v1}, Lgkr;->a(Lgls;)V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->i:Lggh;

    invoke-static {v0}, Ld;->a(Lggh;)V

    .line 130
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    iget-wide v2, p1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isRead:Z

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setIsRead(Z)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setDownloaded(Z)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 4
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iput-object p1, v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b()V

    .line 240
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    .line 243
    if-eqz v0, :cond_1

    .line 244
    iput-object p1, v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b()V

    .line 247
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    .line 248
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 148
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 155
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onEvent(Lcom/wandoujia/ripple_framework/event/DownloadEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 160
    sget-object v0, Lggs;->a:[I

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 163
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    .line 164
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Ld;->L(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "videoEpisodeId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 168
    iget-object v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    .line 171
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b()V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 284
    iget v1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->q:I

    div-int v1, v0, v1

    .line 285
    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->q:I

    rem-int v2, v0, v2

    .line 286
    iget v3, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 287
    iget v3, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    add-int/2addr v3, v2

    .line 288
    iget v4, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->p:I

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->n:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v5

    add-int/2addr v1, v4

    .line 289
    iget v4, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->p:I

    add-int/2addr v4, v1

    .line 290
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 261
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a:Z

    if-eqz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->k:I

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    .line 263
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->m:I

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->p:I

    .line 268
    :goto_0
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    div-int v0, v1, v0

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->q:I

    .line 269
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->q:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->r:I

    .line 271
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->n:I

    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->q:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->q:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    .line 273
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 274
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 275
    iget v3, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->p:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->measureChild(Landroid/view/View;II)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->j:I

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->o:I

    .line 266
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->l:I

    iput v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->p:I

    goto :goto_0

    .line 278
    :cond_1
    iget v0, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->p:I

    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->r:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->n:I

    iget v3, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->r:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->setMeasuredDimension(II)V

    .line 279
    return-void
.end method

.method public setEpisodeActionStyle(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->d:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    .line 256
    return-void
.end method

.method public setWithTitle(Z)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a:Z

    .line 252
    return-void
.end method
