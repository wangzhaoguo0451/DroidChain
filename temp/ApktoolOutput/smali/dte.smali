.class final Ldte;
.super Ljava/lang/Object;
.source "SelfUpdatePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-static {}, Lhrm;->b()Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    invoke-static {v1, v0}, Lg;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
