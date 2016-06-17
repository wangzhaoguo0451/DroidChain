.class final Lfnu;
.super Ljava/lang/Object;
.source "CommunityTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v4/view/ViewPager;

.field private synthetic b:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lfnu;->a:Landroid/support/v4/view/ViewPager;

    iput p2, p0, Lfnu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg;->g(Landroid/content/Context;)Z

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lfnu;->a:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lfnu;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
