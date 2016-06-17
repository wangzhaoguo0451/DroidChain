.class public Lcom/wandoujia/launcher/view/SpeedUpView;
.super Landroid/widget/FrameLayout;
.source "SpeedUpView.java"


# instance fields
.field public a:Landroid/animation/Animator$AnimatorListener;

.field private b:Lcom/wandoujia/image/view/AsyncImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance v0, Leeb;

    invoke-direct {v0, p0}, Leeb;-><init>(Lcom/wandoujia/launcher/view/SpeedUpView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/view/SpeedUpView;->a:Landroid/animation/Animator$AnimatorListener;

    .line 39
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->speed_up_view:I

    invoke-static {p1, v0}, Lehx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;->addView(Landroid/view/View;)V

    .line 40
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/view/SpeedUpView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    .line 41
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->msg:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/view/SpeedUpView;->c:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/view/SpeedUpView;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/launcher/view/SpeedUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/launcher/view/SpeedUpView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->app_icon:I

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/launcher/view/SpeedUpView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
