.class public Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;
.super Landroid/widget/RelativeLayout;
.source "FloatingRocketView.java"


# instance fields
.field public a:Landroid/view/animation/AlphaAnimation;

.field public b:Landroid/view/animation/AlphaAnimation;

.field public c:Landroid/view/animation/TranslateAnimation;

.field public d:Landroid/view/animation/AlphaAnimation;

.field public e:Landroid/view/animation/AlphaAnimation;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->f:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;
    .locals 3
    .parameter

    .prologue
    .line 194
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->wan_game_folder_floating_rocket:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->d:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->i:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->e:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->f:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->rocket_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->j:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->rocket_container:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->i:Landroid/view/View;

    .line 66
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->boosting_text:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->g:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->boost_result_text_detail:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->h:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method
