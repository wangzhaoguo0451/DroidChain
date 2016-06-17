.class public Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;
.super Landroid/app/Activity;
.source "FollowUsTipsTransparentActivity.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->a:F

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->a:F

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0300d6

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0c02b5

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c02b7

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lgba;

    invoke-direct {v3, p0}, Lgba;-><init>(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lgbb;

    invoke-direct {v1, p0}, Lgbb;-><init>(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lgbd;

    invoke-direct {v0, p0}, Lgbd;-><init>(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
