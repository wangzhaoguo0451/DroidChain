.class public Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;
.super Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;
.source "VideoDetailDescriptionInfoFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/views/FlowLayout;

.field private b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/HorizontalScrollView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/wandoujia/p4/views/ExpandablePanel;

.field private m:Lgik;

.field private n:Lcom/wandoujia/phoenix2/av/view/PairTextContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;-><init>()V

    .line 262
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->m:Lgik;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->m:Lgik;

    invoke-static {v0}, Ld;->a(Landroid/os/AsyncTask;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;Ljava/util/List;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0a0044

    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    new-array v1, v2, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->i:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->tags:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    const v4, 0x7f030245

    invoke-static {v1, v4}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->i:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v6

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;

    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->h:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;

    move-result-object v4

    new-instance v5, Lgfu;

    invoke-direct {v5}, Lgfu;-><init>()V

    invoke-static {v4, v0}, Lgfu;->a(Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    invoke-virtual {v0, v8}, Lcom/wandoujia/p4/views/FlowLayout;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->largePictures:Ljava/util/List;

    iget-object v7, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->smallPictures:Ljava/util/List;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move v1, v2

    :goto_3
    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    :goto_4
    if-eqz v1, :cond_8

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0632

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string v1, " \u2022 "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0620

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v6

    :goto_5
    if-ge v1, v2, :cond_d

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;

    if-eqz v0, :cond_a

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->videoId:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_a

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->episodeId:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->g:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;

    move-result-object v3

    new-instance v4, Lgfv;

    invoke-direct {v4}, Lgfv;-><init>()V

    invoke-static {v3, v0}, Lgfv;->a(Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_b
    move v1, v6

    goto/16 :goto_3

    :cond_c
    move v0, v6

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->largePictures:Ljava/util/List;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->smallPictures:Ljava/util/List;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_6
    if-ge v6, v5, :cond_10

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->g:Landroid/widget/LinearLayout;

    const v7, 0x7f0300cf

    invoke-static {v1, v7}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/wandoujia/image/view/AsyncImageView;

    const/4 v1, 0x2

    invoke-static {}, Lfna;->a()Lfna;

    move-result-object v8

    invoke-virtual {v8}, Lfna;->b()I

    move-result v8

    if-ne v1, v8, :cond_e

    invoke-virtual {v7, v9}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    :goto_7
    new-instance v0, Lgij;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgij;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;Ljava/util/List;ILjava/util/List;II)V

    invoke-virtual {v7, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v7, v0, v9}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->releaseDate:J

    cmp-long v1, v2, v10

    if-lez v1, :cond_11

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e063a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-static {v3}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0639

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-static {v3}, Ld;->b(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0381

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-static {v3}, Ld;->c(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->n:Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    invoke-virtual {v1, v0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->setData(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f030048

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_meta_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 68
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onDestroy()V

    .line 138
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a()V

    .line 139
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    const v0, 0x7f0c0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->c:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0c019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->d:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0c0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ExpandablePanel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->l:Lcom/wandoujia/p4/views/ExpandablePanel;

    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->l:Lcom/wandoujia/p4/views/ExpandablePanel;

    new-instance v1, Lgii;

    invoke-direct {v1, p0}, Lgii;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ExpandablePanel;->setExpandStateListener(Lgqb;)V

    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->l:Lcom/wandoujia/p4/views/ExpandablePanel;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ExpandablePanel;->setCollapseHeight(I)V

    .line 98
    const v0, 0x7f0c019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->g:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f0c019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->j:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0c01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FlowLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    .line 101
    const v0, 0x7f0c01a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->k:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0c0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->h:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f0c0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->i:Landroid/widget/HorizontalScrollView;

    .line 105
    const v0, 0x7f0c0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->e:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0c019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->f:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c01a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->n:Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    .line 108
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 118
    return-void
.end method

.method protected onStartLoading()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a()V

    .line 123
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lgik;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-direct {v0, p0, v2, v3, v4}, Lgik;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;JB)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->m:Lgik;

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->m:Lgik;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method
