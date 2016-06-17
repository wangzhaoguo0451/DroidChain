.class public final Lggi;
.super Ljava/lang/Object;
.source "VideoDetailOperationBarController.java"


# instance fields
.field public a:Lcom/wandoujia/p4/video/model/VideoSharpness;

.field public b:Ljava/lang/String;

.field public c:Z

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

.field g:Lggn;

.field private h:Lgeh;

.field private final i:Lgls;

.field private final j:Lgje;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lggi;->d:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lggi;->e:Ljava/util/Set;

    .line 54
    new-instance v0, Lggj;

    invoke-direct {v0, p0}, Lggj;-><init>(Lggi;)V

    iput-object v0, p0, Lggi;->i:Lgls;

    .line 95
    new-instance v0, Lggk;

    invoke-direct {v0, p0}, Lggk;-><init>(Lggi;)V

    iput-object v0, p0, Lggi;->j:Lgje;

    .line 116
    iput-boolean p2, p0, Lggi;->k:Z

    .line 117
    iget-object v0, p0, Lggi;->j:Lgje;

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lgje;)V

    .line 118
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lggi;->i:Lgls;

    invoke-virtual {v0, v1}, Lgkr;->a(Lgls;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    iput-object p1, p0, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    .line 142
    iput-object p2, p0, Lggi;->g:Lggn;

    .line 143
    iget-object v0, p2, Lggn;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p2, Lggn;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    iput-object v0, p0, Lggi;->b:Ljava/lang/String;

    .line 145
    iget-object v0, p2, Lggn;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iput-object v0, p0, Lggi;->a:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 146
    iget-object v0, p2, Lggn;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->isDefaultDownloadSourcePrivate:Z

    iput-boolean v0, p0, Lggi;->c:Z

    .line 148
    :cond_0
    iget-object v0, p2, Lggn;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lggi;->d:Ljava/util/Set;

    iget-object v2, p2, Lggn;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v0, p0, Lggi;->e:Ljava/util/Set;

    iget-object v2, p2, Lggn;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v0, p0, Lggi;->d:Ljava/util/Set;

    iget-object v2, p2, Lggn;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playExpDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_1
    iget-object v0, p2, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noDownloadUrls:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPrivateDownloadUrls:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayExpDownloadUrls:Z

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v3, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v2, v3, :cond_5

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lggi;->k:Z

    if-nez v0, :cond_6

    .line 155
    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->getSourceSettingLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_1
    sget-object v0, Lggm;->a:[I

    iget-object v1, p2, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Lgeh;

    invoke-direct {v0}, Lgeh;-><init>()V

    iput-object v0, p0, Lggi;->h:Lgeh;

    iget-object v0, p0, Lggi;->h:Lgeh;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->getPlayButton()Lfar;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lgeh;->a(Lfar;Lggn;)V

    .line 170
    :goto_2
    return-void

    :cond_5
    move v0, v1

    .line 153
    goto :goto_0

    .line 157
    :cond_6
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->getSourceSettingLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {p0, p1, p2}, Lggi;->b(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 159
    invoke-virtual {p0, p1, p2}, Lggi;->c(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    goto :goto_1

    .line 164
    :pswitch_0
    new-instance v0, Lgeh;

    invoke-direct {v0}, Lgeh;-><init>()V

    iput-object v0, p0, Lggi;->h:Lgeh;

    iget-object v0, p0, Lggi;->h:Lgeh;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->getPlayButton()Lfar;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lgeh;->a(Lfar;Lggn;)V

    goto :goto_2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final b(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->getSettingTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 175
    iget-object v1, p2, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    .line 176
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 177
    new-instance v2, Lggl;

    invoke-direct {v2, p0, p2, v1, p1}, Lggl;-><init>(Lggi;Lggn;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->getSourceTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 215
    iget-object v1, p2, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    .line 216
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lggi;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lggi;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lggi;->c:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v2

    iget-object v3, p0, Lggi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e063f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lggi;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    iget-object v2, p0, Lggi;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e063e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lggi;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :cond_3
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 219
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0642

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lger;->c(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
