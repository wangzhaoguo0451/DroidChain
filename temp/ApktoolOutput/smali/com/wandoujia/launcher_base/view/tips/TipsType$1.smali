.class final enum Lcom/wandoujia/launcher_base/view/tips/TipsType$1;
.super Lcom/wandoujia/launcher_base/view/tips/TipsType;
.source "TipsType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher_base/view/tips/TipsType;-><init>(Ljava/lang/String;ILcom/wandoujia/launcher_base/view/tips/TipsType$1;)V

    return-void
.end method


# virtual methods
.method protected final createTips(Landroid/content/Context;)Leko;
    .locals 4
    .parameter

    .prologue
    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$layout;->p4_cycle_loading:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 21
    new-instance v1, Leko;

    invoke-direct {v1, v0}, Leko;-><init>(Landroid/view/View;)V

    return-object v1
.end method
