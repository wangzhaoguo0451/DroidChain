.class final Ldqz;
.super Lhhl;
.source "VerifiedTitlePresenter.java"


# instance fields
.field private synthetic a:Ldqy;


# direct methods
.method constructor <init>(Ldqy;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ldqz;->a:Ldqy;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e05e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Ldqz;->a:Ldqy;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http://www.wandoujia.com/manual_testing?from=P5"

    invoke-static {v2, v0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ld;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return v0
.end method
