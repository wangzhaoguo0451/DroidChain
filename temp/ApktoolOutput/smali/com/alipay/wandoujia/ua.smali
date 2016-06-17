.class public final Lcom/alipay/wandoujia/ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lcom/alipay/wandoujia/ua$a;


# direct methods
.method private constructor <init>(Landroid/view/View;ZLcom/alipay/wandoujia/ua$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/wandoujia/ua;->a:Landroid/view/View;

    .line 21
    iput-boolean p2, p0, Lcom/alipay/wandoujia/ua;->b:Z

    .line 22
    iput-object p3, p0, Lcom/alipay/wandoujia/ua;->c:Lcom/alipay/wandoujia/ua$a;

    .line 23
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/alipay/wandoujia/ua$a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c

    invoke-static {p0, v0, v1, p1}, Lcom/alipay/wandoujia/ua;->a(Landroid/view/View;ZFLcom/alipay/wandoujia/ua$a;)V

    .line 68
    return-void
.end method

.method private static a(Landroid/view/View;ZFLcom/alipay/wandoujia/ua$a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x4000

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 55
    new-instance v0, Lage;

    const/4 v1, 0x0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lage;-><init>(FFFFZ)V

    .line 57
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lage;->setDuration(J)V

    .line 58
    invoke-virtual {v0, v5}, Lage;->setFillAfter(Z)V

    .line 59
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lage;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    new-instance v1, Lcom/alipay/wandoujia/ua;

    .line 62
    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/wandoujia/ua;-><init>(Landroid/view/View;ZLcom/alipay/wandoujia/ua$a;)V

    .line 61
    invoke-virtual {v0, v1}, Lage;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method public static b(Landroid/view/View;Lcom/alipay/wandoujia/ua$a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x1

    const/high16 v1, 0x42b4

    invoke-static {p0, v0, v1, p1}, Lcom/alipay/wandoujia/ua;->a(Landroid/view/View;ZFLcom/alipay/wandoujia/ua$a;)V

    .line 72
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/wandoujia/ua;->a:Landroid/view/View;

    new-instance v1, Lagf;

    iget-object v2, p0, Lcom/alipay/wandoujia/ua;->a:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alipay/wandoujia/ua;->b:Z

    iget-object v4, p0, Lcom/alipay/wandoujia/ua;->c:Lcom/alipay/wandoujia/ua$a;

    invoke-direct {v1, v2, v3, v4}, Lagf;-><init>(Landroid/view/View;ZLcom/alipay/wandoujia/ua$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    return-void
.end method
