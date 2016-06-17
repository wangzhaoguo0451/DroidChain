.class public Lcom/wandoujia/p4/activity/ScreenshotViewActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "ScreenshotViewActivity.java"


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 91
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Lcom/wandoujia/phoenix2/av/view/PagePointsBox;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->e:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v1, "screenshot"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 36
    const-string v1, "screenshot_thumb"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 38
    const-string v1, "screenshot_index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v1, "screenshot_auto_rotate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->f:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->c:Ljava/util/List;

    .line 53
    const-string v1, "screenshot_thumb"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->b:Ljava/util/List;

    .line 55
    const-string v1, "screenshot_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->d:I

    .line 57
    const-string v1, "screenshot_auto_rotate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->f:Z

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 60
    const v0, 0x7f0c00f9

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 61
    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    iput-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->e:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->e:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    iget-object v1, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a(I)V

    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Leuc;

    invoke-direct {v1, p0}, Leuc;-><init>(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Leud;

    invoke-direct {v1, p0}, Leud;-><init>(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgf;)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a:Landroid/support/v4/view/ViewPager;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAnimation(Landroid/view/animation/Animation;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->finish()V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->finish()V

    goto :goto_0
.end method
