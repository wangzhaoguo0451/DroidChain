.class final Ldjp;
.super Lhhl;
.source "UpgradeTab.java"


# instance fields
.field private synthetic a:Landroid/support/v4/view/ViewPager;

.field private synthetic b:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Ldjp;->a:Landroid/support/v4/view/ViewPager;

    iput p2, p0, Ldjp;->b:I

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Ldjp;->a:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Ldjp;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 46
    const/4 v0, 0x0

    return v0
.end method
