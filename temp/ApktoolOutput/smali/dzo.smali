.class public final Ldzo;
.super Ljava/lang/Object;
.source "DailyRecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Ldzo;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Ldzo;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Ldzo;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method
