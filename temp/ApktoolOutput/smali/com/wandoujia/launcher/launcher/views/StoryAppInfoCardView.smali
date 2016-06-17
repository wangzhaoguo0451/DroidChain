.class public Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;
.super Landroid/widget/LinearLayout;
.source "StoryAppInfoCardView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/wandoujia/image/view/AsyncImageView;

.field private d:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

.field private e:Landroid/widget/ImageView;

.field private f:Leis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lecx;

    invoke-direct {v0, p0}, Lecx;-><init>(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->f:Leis;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lecx;

    invoke-direct {v0, p0}, Lecx;-><init>(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->f:Leis;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lecx;

    invoke-direct {v0, p0}, Lecx;-><init>(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->f:Leis;

    .line 64
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher/launcher/models/RecommendModel;Ldby;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->e:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getOperationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/wandoujia/entities/game/GameLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getRecommendWording()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->app_sub_title:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/wandoujia/entities/game/GameLiteInfo;->getStat()Lcom/wandoujia/entities/app/StatLiteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wandoujia/entities/app/StatLiteInfo;->getWeeklyStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lehh;->a(Lcom/wandoujia/entities/app/IAppLiteInfo;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->c:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->setImageLoadedListener(Ldby;)V

    .line 89
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->c:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1}, Lcom/wandoujia/entities/game/GameLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$drawable;->bg_icon_default:I

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->f:Leis;

    new-instance v2, Lecy;

    invoke-direct {v2, p0}, Lecy;-><init>(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)V

    new-instance v3, Leiv;

    invoke-direct {v3, v1}, Leiv;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    invoke-virtual {v0, v2, v3}, Leis;->a(Leix;Leiu;)V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->e:Landroid/widget/ImageView;

    new-instance v2, Lecz;

    invoke-direct {v2, v1}, Lecz;-><init>(Lcom/wandoujia/entities/game/GameLiteInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getOperationTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getRecommendWording()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getActionButton()Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->c:Lcom/wandoujia/image/view/AsyncImageView;

    .line 70
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_sub_title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->b:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_download:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    .line 73
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_task_delete:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->e:Landroid/widget/ImageView;

    .line 74
    return-void
.end method
