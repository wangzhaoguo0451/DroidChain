.class public final Ldpn;
.super Lhic;
.source "NavigationItemLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Ldpn;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v0

    .line 21
    invoke-virtual {p0}, Ldpn;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 22
    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 23
    invoke-virtual {p0}, Ldpn;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    .line 24
    iput v1, v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->width:I

    .line 25
    invoke-virtual {p0}, Ldpn;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    return-void
.end method
