.class public final Lgba;
.super Ljava/lang/Object;
.source "FollowUsTipsTransparentActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lgba;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 41
    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lgba;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->a(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;F)F

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lgba;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->a(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)F

    move-result v2

    sub-float v2, v1, v2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 49
    cmpg-float v3, v1, v0

    if-gez v3, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 53
    :goto_1
    iget-object v2, p0, Lgba;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-virtual {v2}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    .line 55
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    move v1, v2

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    float-to-int v1, v1

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 60
    iget-object v0, p0, Lgba;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->a(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;F)F

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
