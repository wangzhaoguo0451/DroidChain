.class public final Lduz;
.super Lhhl;
.source "JupiterToolbarForDetail.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lduz;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lduz;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 60
    const/4 v0, 0x0

    return v0
.end method
